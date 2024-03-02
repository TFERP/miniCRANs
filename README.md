# miniCRANs for use in Analytics.Gov (AG)

For use when AG's Nexus does not have the package (or package version) that you require.

To create a miniCRAN, first install the `miniCRAN` library. Then, run the following:

```
source("create_package_miniCRAN.R")

create_package_miniCRAN("packageName")
```

A folder will be created with your desired package and its dependencies inside. Zip up the folder and delete the created folder. Then, follow the instructions in the NParks R Users MS Teams Notes page.
