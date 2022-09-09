CDF      
      time       bnds      lon    �   lat    [      ;   CDI       @Climate Data Interface version 1.9.9 (https://mpimet.mpg.de/cdi)   Conventions       CF-1.6, ACDD-1.3   source        1idl 8.4, mcd06cosp_preyori 20220218-1, yori 1.5.0      YAML_config      MHgrid_settings:
  gridsize: 1
  projection: conformal
  lat_in: Latitude
  lon_in: Longitude
  lat_out: Latitude
  lon_out: Longitude
  fill_value: -999

variable_settings:

  - name_in: Solar_Zenith
    name_out: Solar_Zenith
    attributes: 
    - name: long_name
      value: Solar Zenith Angle (Cell to Sun) for Daytime Scenes
    - name: units
      value: degrees
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 180.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    masks:
    - Mask_Day

  - name_in: Solar_Azimuth
    name_out: Solar_Azimuth
    attributes: 
    - name: long_name
      value: Solar Azimuth Angle (Cell to Sun) for Daytime Scenes
    - name: units
      value: degrees
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: -180.0
    - name: valid_max
      value: 180.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    masks:
    - Mask_Day

  - name_in: Sensor_Zenith
    name_out: Sensor_Zenith
    attributes: 
    - name: long_name
      value: Sensor Zenith Angle (Cell to Sensor) for Daytime Scenes
    - name: units
      value: degrees
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 180.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    masks:
    - Mask_Day

  - name_in: Sensor_Azimuth
    name_out: Sensor_Azimuth
    attributes: 
    - name: long_name
      value: Sensor Azimuth Angle (Cell to Sensor) for Daytime Scenes
    - name: units
      value: degrees
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: -180.0
    - name: valid_max
      value: 180.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    masks:
    - Mask_Day


  - name_in: Cloud_Top_Pressure
    name_out: Cloud_Top_Pressure
    attributes: 
    - name: long_name
      value: Cloud Top Pressure for Daytime Scenes
    - name: units
      value: mb
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 1.0
    - name: valid_max
      value: 1100.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    masks:
    - Mask_Day


  - name_in: Cloud_Fraction
    name_out: Cloud_Mask_Fraction
    attributes: 
    - name: long_name
      value: Cloud Fraction from Cloud Mask for Daytime Scenes
    - name: units
      value: none
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 1.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    masks:
    - Mask_Day

  - name_in: Cloud_Fraction_Low
    name_out: Cloud_Mask_Fraction_Low
    attributes: 
    - name: long_name
      value: Cloud Fraction from Cloud Mask (Low Clouds, CTP GE 680 hPa) for Daytime Scenes
    - name: units
      value: none
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 1.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    masks:
    - Mask_Day

  - name_in: Cloud_Fraction_Mid
    name_out: Cloud_Mask_Fraction_Mid
    attributes: 
    - name: long_name
      value: Cloud Fraction from Cloud Mask (Mid Clouds, CTP GE 440 hPa AND CTP LT 680 hPa) for Daytime Scenes
    - name: units
      value: none
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 1.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    masks:
    - Mask_Day

  - name_in: Cloud_Fraction_High
    name_out: Cloud_Mask_Fraction_High
    attributes: 
    - name: long_name
      value: Cloud Fraction from Cloud Mask (High Clouds, CTP LT 440 hPa) for Daytime Scenes
    - name: units
      value: none
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 1.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    masks:
    - Mask_Day








  - name_in: Cloud_Optical_Thickness
    name_out: Cloud_Optical_Thickness_Liquid
    attributes: 
    - name: long_name
      value: Cloud Optical Thickness for Liquid Water Clouds (3.7 micron Retrieval for Cloudy Scenes)
    - name: units
      value: none
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 150.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    2D_histograms:
    - name_out: JHisto_vs_Cloud_Particle_Size_Liquid
      primary_var:
        edges: [0.0, 0.3, 1.3, 3.6, 9.4, 23.0, 60.0, 150.0]
      joint_var:
        name_in: Cloud_Effective_Radius
        edges: [4.0, 8.0, 10.0, 12.5, 15.0, 20.0, 30.0]
    - name_out: JHisto_vs_Cloud_Top_Pressure
      primary_var:
        edges: [0.0, 0.3, 1.3, 3.6, 9.4, 23.0, 60.0, 150.0]
      joint_var:
        name_in: Cloud_Top_Pressure
        edges: [0.0, 180.0, 310.0, 440.0, 560.0, 680.0, 800.0, 1100.0]
    masks:
    - Mask_Valid_Range_CER
    - Mask_Liquid_Water_Phase_Clouds

  - name_in: Cloud_Optical_Thickness
    name_out: Cloud_Optical_Thickness_Ice
    attributes: 
    - name: long_name
      value: Cloud Optical Thickness for Ice Clouds (3.7 micron Retrieval for Cloudy Scenes)
    - name: units
      value: none
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 150.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    2D_histograms:
    - name_out: JHisto_vs_Cloud_Particle_Size_Ice
      primary_var:
        edges: [0.0, 0.3, 1.3, 3.6, 9.4, 23.0, 60.0, 150.0]
      joint_var:
        name_in: Cloud_Effective_Radius
        edges: [5.0, 10.0, 20.0, 30.0, 40.0, 50.0, 60.0]
    - name_out: JHisto_vs_Cloud_Top_Pressure
      primary_var:
        edges: [0.0, 0.3, 1.3, 3.6, 9.4, 23.0, 60.0, 150.0]
      joint_var:
        name_in: Cloud_Top_Pressure
        edges: [0.0, 180.0, 310.0, 440.0, 560.0, 680.0, 800.0, 1100.0]
    masks:
    - Mask_Ice_Phase_Clouds

      
  - name_in: Cloud_Optical_Thickness
    name_out: Cloud_Optical_Thickness_Total
    attributes: 
    - name: long_name
      value: Cloud Optical Thickness for Combined (LiquidWater+Ice+Undetermined) Phase Clouds (3.7 micron Retrieval for Cloudy Scenes)
    - name: units
      value: none
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 150.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    2D_histograms:
    - name_out: JHisto_vs_Cloud_Top_Pressure
      primary_var:
        edges: [0.0, 0.3, 1.3, 3.6, 9.4, 23.0, 60.0, 150.0]
      joint_var:
        name_in: Cloud_Top_Pressure
        edges: [0.0, 180.0, 310.0, 440.0, 560.0, 680.0, 800.0, 1100.0]
    masks:
    - Mask_Valid_Range_CER
    - Mask_Combined_Phase_Clouds








  - name_in: Cloud_Optical_Thickness_PCL
    name_out: Cloud_Optical_Thickness_PCL_Liquid
    attributes: 
    - name: long_name
      value: Cloud Optical Thickness for Liquid Water Phase Clouds (3.7 micron Retrieval for Partly Cloudy (PCL) Scenes)
    - name: units
      value: none
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 150.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    2D_histograms:
    - name_out: JHisto_vs_Cloud_Particle_Size_PCL_Liquid
      primary_var:
        edges: [0.0, 0.3, 1.3, 3.6, 9.4, 23.0, 60.0, 150.0]
      joint_var:
        name_in: Cloud_Effective_Radius_PCL
        edges: [4.0, 8.0, 10.0, 12.5, 15.0, 20.0, 30.0]
    - name_out: JHisto_vs_Cloud_Top_Pressure
      primary_var:
        edges: [0.0, 0.3, 1.3, 3.6, 9.4, 23.0, 60.0, 150.0]
      joint_var:
        name_in: Cloud_Top_Pressure
        edges: [0.0, 180.0, 310.0, 440.0, 560.0, 680.0, 800.0, 1100.0]
    masks:
    - Mask_Valid_Range_CERPCL
    - Mask_Liquid_Water_Phase_Clouds



  - name_in: Cloud_Optical_Thickness_PCL
    name_out: Cloud_Optical_Thickness_PCL_Ice
    attributes: 
    - name: long_name
      value: Cloud Optical Thickness for Ice Phase Clouds (3.7 micron Retrieval for Partly Cloudy (PCL) Scenes)
    - name: units
      value: none
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 150.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    2D_histograms:
    - name_out: JHisto_vs_Cloud_Particle_Size_PCL_Ice
      primary_var:
        edges: [0.0, 0.3, 1.3, 3.6, 9.4, 23.0, 60.0, 150.0]
      joint_var:
        name_in: Cloud_Effective_Radius_PCL
        edges: [5.0, 10.0, 20.0, 30.0, 40.0, 50.0, 60.0]
    - name_out: JHisto_vs_Cloud_Top_Pressure
      primary_var:
        edges: [0.0, 0.3, 1.3, 3.6, 9.4, 23.0, 60.0, 150.0]
      joint_var:
        name_in: Cloud_Top_Pressure
        edges: [0.0, 180.0, 310.0, 440.0, 560.0, 680.0, 800.0, 1100.0]
    masks:
    - Mask_Valid_Range_CERPCL
    - Mask_Ice_Phase_Clouds



  - name_in: Cloud_Optical_Thickness_PCL
    name_out: Cloud_Optical_Thickness_PCL_Total
    attributes: 
    - name: long_name
      value: Cloud Optical Thickness for Combined (LiquidWater+Ice+Undetermined) Phase Clouds (3.7 micron Retrieval for Partly Cloudy (PCL) Scenes)
    - name: units
      value: none
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 150.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    2D_histograms:
    - name_out: JHisto_vs_Cloud_Top_Pressure
      primary_var:
        edges: [0.0, 0.3, 1.3, 3.6, 9.4, 23.0, 60.0, 150.0]
      joint_var:
        name_in: Cloud_Top_Pressure
        edges: [0.0, 180.0, 310.0, 440.0, 560.0, 680.0, 800.0, 1100.0]
    masks:
    - Mask_Valid_Range_CERPCL
    - Mask_Combined_Phase_Clouds









  - name_in: Cloud_Optical_Thickness_Log
    name_out: Cloud_Optical_Thickness_Log10_Liquid
    attributes: 
    - name: long_name
      value: Cloud Optical Thickness Log10 for Liquid Water Clouds (3.7 micron Retrieval for Cloudy Scenes)
    - name: units
      value: none
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: -2.0
    - name: valid_max
      value: 2.176
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    masks:
    - Mask_Valid_Range_CER
    - Mask_Liquid_Water_Phase_Clouds

  - name_in: Cloud_Optical_Thickness_Log
    name_out: Cloud_Optical_Thickness_Log10_Ice
    attributes: 
    - name: long_name
      value: Cloud Optical Thickness Log10 for Ice Clouds (3.7 micron Retrieval for Cloudy Scenes)
    - name: units
      value: none
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: -2.0
    - name: valid_max
      value: 2.176
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    masks:
    - Mask_Ice_Phase_Clouds

      
  - name_in: Cloud_Optical_Thickness_Log
    name_out: Cloud_Optical_Thickness_Log10_Total
    attributes: 
    - name: long_name
      value: Cloud Optical Thickness Log10 for Combined (LiquidWater+Ice+Undetermined) Phase Clouds (3.7 micron Retrieval for Cloudy Scenes)
    - name: units
      value: none
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: -2.0
    - name: valid_max
      value: 2.176
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    masks:
    - Mask_Valid_Range_CER
    - Mask_Combined_Phase_Clouds






  - name_in: Cloud_Effective_Radius
    name_out: Cloud_Particle_Size_Liquid
    attributes: 
    - name: long_name
      value: Cloud Effective Radius for Liquid Water Clouds (3.7 micron Retrieval for Cloudy Scenes)
    - name: units
      value: microns
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 4.0
    - name: valid_max
      value: 30.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    masks:
    - Mask_Valid_Range_CER
    - Mask_Liquid_Water_Phase_Clouds

  - name_in: Cloud_Effective_Radius
    name_out: Cloud_Particle_Size_Ice
    attributes: 
    - name: long_name
      value: Cloud Effective Radius for Ice Clouds (3.7 micron Retrieval for Cloudy Scenes)
    - name: units
      value: microns
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 5.0
    - name: valid_max
      value: 60.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    masks:
    - Mask_Ice_Phase_Clouds




  - name_in: Cloud_Effective_Radius_PCL
    name_out: Cloud_Particle_Size_PCL_Liquid
    attributes: 
    - name: long_name
      value: Cloud Effective Radius for Liquid Water Clouds (3.7 micron Retrieval for Partly Cloudy (PCL) Scenes)
    - name: units
      value: microns
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 4.0
    - name: valid_max
      value: 30.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    masks:
    - Mask_Valid_Range_CERPCL
    - Mask_Liquid_Water_Phase_Clouds


  - name_in: Cloud_Effective_Radius_PCL
    name_out: Cloud_Particle_Size_PCL_Ice
    attributes: 
    - name: long_name
      value: Cloud Effective Radius for Ice Clouds (3.7 micron Retrieval for Partly Cloudy (PCL) Scenes)
    - name: units
      value: microns
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 5.0
    - name: valid_max
      value: 60.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    masks:
    - Mask_Ice_Phase_Clouds





  - name_in: Cloud_Water_Path
    name_out: Cloud_Water_Path_Liquid
    attributes: 
    - name: long_name
      value: Cloud Water Path for Liquid Water Clouds (3.7 micron Retrieval for Cloudy Scenes)
    - name: units
      value: g/m^2  
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 3000.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    2D_histograms:
    - name_out: JHisto_vs_Cloud_Particle_Size_Liquid
      primary_var:
        edges: [0.0, 10.0, 30.0, 60.0, 100.0, 150.0, 250.0, 20000.0]
      joint_var:
        name_in: Cloud_Effective_Radius
        edges: [4.0, 8.0, 10.0, 12.5, 15.0, 20.0, 30.0]
    masks:
    - Mask_Valid_Range_CER
    - Mask_Liquid_Water_Phase_Clouds

  - name_in: Cloud_Water_Path
    name_out: Cloud_Water_Path_Ice
    attributes: 
    - name: long_name
      value: Cloud Water Path for Ice Clouds (3.7 micron Retrieval for Cloudy Scenes)
    - name: units
      value: g/m^2
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 6000.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    2D_histograms:
    - name_out: JHisto_vs_Cloud_Particle_Size_Ice
      primary_var:
        edges: [0.0, 20.0, 50.0, 100.0, 200.0, 400.0, 1000.0, 20000.0]
      joint_var:
        name_in: Cloud_Effective_Radius
        edges: [5.0, 10.0, 20.0, 30.0, 40.0, 50.0, 60.0]
    masks:
    - Mask_Ice_Phase_Clouds



  - name_in: Cloud_Water_Path_PCL
    name_out: Cloud_Water_Path_PCL_Liquid
    attributes: 
    - name: long_name
      value: Cloud Water Path for Liquid Water Clouds (3.7 micron Retrieval for Partly Cloudy (PCL) Scenes)
    - name: units
      value: g/m^2  
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 3000.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    2D_histograms:
    - name_out: JHisto_vs_Cloud_Particle_Size_PCL_Liquid
      primary_var:
        edges: [0.0, 10.0, 30.0, 60.0, 100.0, 150.0, 250.0, 20000.0]
      joint_var:
        name_in: Cloud_Effective_Radius_PCL
        edges: [4.0, 8.0, 10.0, 12.5, 15.0, 20.0, 30.0]
    masks:
    - Mask_Valid_Range_CERPCL
    - Mask_Liquid_Water_Phase_Clouds

  - name_in: Cloud_Water_Path_PCL
    name_out: Cloud_Water_Path_PCL_Ice
    attributes: 
    - name: long_name
      value: Cloud Water Path for Ice Clouds (3.7 micron Retrieval for Partly Cloudy (PCL) Scenes)
    - name: units
      value: g/m^2
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 6000.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0
    2D_histograms:
    - name_out: JHisto_vs_Cloud_Particle_Size_PCL_Ice
      primary_var:
        edges: [0.0, 20.0, 50.0, 100.0, 200.0, 400.0, 1000.0, 20000.0]
      joint_var:
        name_in: Cloud_Effective_Radius_PCL
        edges: [5.0, 10.0, 20.0, 30.0, 40.0, 50.0, 60.0]
    masks:
    - Mask_Ice_Phase_Clouds



  - name_in: COPR_Liquid
    name_out: Cloud_Retrieval_Fraction_Liquid
    attributes: 
    - name: long_name
      value: Cloud Optical Properties Retrieval Fraction (Liquid Water Clouds)
    - name: units
      value: none
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 1.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0

  - name_in: COPR_Ice
    name_out: Cloud_Retrieval_Fraction_Ice
    attributes: 
    - name: long_name
      value: Cloud Optical Properties Retrieval Fraction (Ice Clouds)
    - name: units
      value: none
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 1.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0

  - name_in: COPR_Combined
    name_out: Cloud_Retrieval_Fraction_Total
    attributes: 
    - name: long_name
      value: Cloud Optical Properties Retrieval Fraction (Combined (LiquidWater+Ice+Undetermined) Phase Clouds)
    - name: units
      value: none
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 1.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0






  - name_in: COPR_PCL_Liquid
    name_out: Cloud_Retrieval_Fraction_PCL_Liquid
    attributes: 
    - name: long_name
      value: Cloud Optical Properties Retrieval Fraction (Liquid Water Clouds) for Partly Cloudy (PCL) Retrievals
    - name: units
      value: none
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 1.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0

  - name_in: COPR_PCL_Ice
    name_out: Cloud_Retrieval_Fraction_PCL_Ice
    attributes: 
    - name: long_name
      value: Cloud Optical Properties Retrieval Fraction (Ice Clouds) for Partly Cloudy (PCL) Retrievals
    - name: units
      value: none
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 1.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0

  - name_in: COPR_PCL_Combined
    name_out: Cloud_Retrieval_Fraction_PCL_Total
    attributes: 
    - name: long_name
      value: Cloud Optical Properties Retrieval Fraction (Combined Clouds (LiquidWater+Ice+Undetermined) for Partly Cloudy (PCL) Retrievals
    - name: units
      value: none
    - name: _FillValue
      value: -999.0
    - name: valid_min
      value: 0.0
    - name: valid_max
      value: 1.0
    - name: scale_factor
      value: 1.0
    - name: add_offset
      value: 0.0









   Yori_version      1.5.0      input_files      ��MCD06COSP_G3_MODIS_Aqua.A2002185.0000.062.2022125093440.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0005.062.2022125092240.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0010.062.2022125091615.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0015.062.2022125090103.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0020.062.2022125085212.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0025.062.2022125080904.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0030.062.2022125071908.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0035.062.2022125091516.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0040.062.2022125090902.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0045.062.2022125091826.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0050.062.2022125084530.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0055.062.2022125093012.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0100.062.2022125093238.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0105.062.2022125090305.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0110.062.2022125092726.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0115.062.2022125073327.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0120.062.2022125083510.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0125.062.2022125091411.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0130.062.2022125080807.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0135.062.2022125091245.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0140.062.2022125075316.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0145.062.2022125091810.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0150.062.2022125090152.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0155.062.2022125091354.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0200.062.2022125082905.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0205.062.2022125084849.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0210.062.2022125092113.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0215.062.2022125092100.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0220.062.2022125082308.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0225.062.2022125090855.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0230.062.2022125091432.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0235.062.2022125082348.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0240.062.2022125073508.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0245.062.2022125082248.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0250.062.2022125085905.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0255.062.2022125090352.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0300.062.2022125084647.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0305.062.2022125080932.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0310.062.2022125093512.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0315.062.2022125073743.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0320.062.2022125085816.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0325.062.2022125091313.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0330.062.2022125074737.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0335.062.2022125093527.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0340.062.2022125090559.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0345.062.2022125092009.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0350.062.2022125085733.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0355.062.2022125084407.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0400.062.2022125072804.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0405.062.2022125083435.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0410.062.2022125090323.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0415.062.2022125074029.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0420.062.2022125092711.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0425.062.2022125093609.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0430.062.2022125090551.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0435.062.2022125091509.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0440.062.2022125093107.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0445.062.2022125083451.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0450.062.2022125084839.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0455.062.2022125083942.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0500.062.2022125084632.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0505.062.2022125085408.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0510.062.2022125091126.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0515.062.2022125093026.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0520.062.2022125090929.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0525.062.2022125084012.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0530.062.2022125073116.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0535.062.2022125073540.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0540.062.2022125092924.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0545.062.2022125090656.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0550.062.2022125084156.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0555.062.2022125091208.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0600.062.2022125092152.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0605.062.2022125091943.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0610.062.2022125093052.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0615.062.2022125083926.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0620.062.2022125091741.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0625.062.2022125092532.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0630.062.2022125082121.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0635.062.2022125085229.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0640.062.2022125090718.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0645.062.2022125090941.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0650.062.2022125084433.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0655.062.2022125092547.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0700.062.2022125091501.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0705.062.2022125072016.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0710.062.2022125090134.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0715.062.2022125092142.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0720.062.2022125090755.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0725.062.2022125090056.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0730.062.2022125091005.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0735.062.2022125084229.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0740.062.2022125092344.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0745.062.2022125091037.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0750.062.2022125093408.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0755.062.2022125075829.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0800.062.2022125081237.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0805.062.2022125091102.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0810.062.2022125084420.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0815.062.2022125085204.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0820.062.2022125083229.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0825.062.2022125091752.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0830.062.2022125090257.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0835.062.2022125075702.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0840.062.2022125085001.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0845.062.2022125080738.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0850.062.2022125090030.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0855.062.2022125093117.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0900.062.2022125092019.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0905.062.2022125083138.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0910.062.2022125092002.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0915.062.2022125080004.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0920.062.2022125085749.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0925.062.2022125083743.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0930.062.2022125072243.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0935.062.2022125085946.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0940.062.2022125093351.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0945.062.2022125092553.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0950.062.2022125090451.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.0955.062.2022125075248.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1000.062.2022125093401.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1005.062.2022125074444.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1010.062.2022125085841.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1015.062.2022125090643.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1020.062.2022125091139.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1025.062.2022125084903.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1030.062.2022125083048.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1035.062.2022125092744.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1040.062.2022125083344.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1045.062.2022125085050.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1050.062.2022125085514.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1055.062.2022125082224.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1100.062.2022125085911.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1105.062.2022125092228.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1110.062.2022125085639.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1115.062.2022125093228.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1120.062.2022125080356.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1125.062.2022125090636.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1130.062.2022125083031.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1135.062.2022125090128.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1140.062.2022125073848.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1145.062.2022125091659.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1150.062.2022125074341.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1155.062.2022125090827.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1200.062.2022125093059.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1205.062.2022125092106.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1210.062.2022125085239.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1215.062.2022125072559.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1220.062.2022125082510.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1225.062.2022125092418.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1230.062.2022125075124.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1235.062.2022125092600.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1240.062.2022125083628.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1245.062.2022125080137.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1250.062.2022125091851.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1255.062.2022125092840.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1300.062.2022125085934.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1305.062.2022125081059.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1310.062.2022125090839.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1315.062.2022125090425.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1320.062.2022125075605.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1325.062.2022125083717.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1330.062.2022125081843.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1335.062.2022125092047.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1340.062.2022125074552.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1345.062.2022125085528.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1350.062.2022125083014.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1355.062.2022125091843.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1400.062.2022125092614.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1405.062.2022125084814.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1410.062.2022125091046.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1415.062.2022125090515.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1420.062.2022125084247.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1425.062.2022125085221.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1430.062.2022125093534.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1435.062.2022125093452.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1440.062.2022125090401.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1445.062.2022125072909.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1450.062.2022125072628.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1455.062.2022125073216.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1500.062.2022125092606.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1505.062.2022125085607.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1510.062.2022125092654.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1515.062.2022125083213.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1520.062.2022125090741.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1525.062.2022125085040.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1530.062.2022125085601.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1535.062.2022125092525.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1540.062.2022125090957.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1545.062.2022125084751.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1550.062.2022125091133.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1555.062.2022125093005.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1600.062.2022125084617.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1605.062.2022125084100.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1610.062.2022125090621.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1615.062.2022125085012.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1620.062.2022125092214.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1625.062.2022125093043.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1630.062.2022125083804.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1635.062.2022125091258.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1640.062.2022125085401.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1645.062.2022125085147.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1650.062.2022125085714.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1655.062.2022125080258.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1700.062.2022125092821.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1705.062.2022125074841.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1710.062.2022125085130.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1715.062.2022125090249.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1720.062.2022125084122.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1725.062.2022125090201.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1730.062.2022125093602.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1735.062.2022125085156.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1740.062.2022125093131.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1745.062.2022125091329.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1750.062.2022125090434.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1755.062.2022125085312.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1800.062.2022125090723.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1805.062.2022125084741.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1810.062.2022125085139.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1815.062.2022125093421.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1820.062.2022125080232.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1825.062.2022125090846.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1830.062.2022125082849.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1835.062.2022125090629.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1840.062.2022125083554.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1845.062.2022125085846.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1850.062.2022125091803.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1855.062.2022125085121.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1900.062.2022125091221.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1905.062.2022125072729.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1910.062.2022125092917.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1915.062.2022125075220.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1920.062.2022125084542.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1925.062.2022125085332.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1930.062.2022125092755.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1935.062.2022125083610.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1940.062.2022125073007.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1945.062.2022125082729.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1950.062.2022125093205.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.1955.062.2022125075932.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2000.062.2022125084447.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2005.062.2022125091758.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2010.062.2022125085620.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2015.062.2022125093415.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2020.062.2022125093148.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2025.062.2022125085727.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2030.062.2022125081444.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2035.062.2022125082035.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2040.062.2022125090224.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2045.062.2022125085345.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2050.062.2022125092908.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2055.062.2022125093124.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2100.062.2022125074203.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2105.062.2022125072326.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2110.062.2022125085249.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2115.062.2022125092459.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2120.062.2022125084938.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2125.062.2022125075537.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2130.062.2022125081123.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2135.062.2022125092328.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2140.062.2022125090344.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2145.062.2022125090016.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2150.062.2022125092403.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2155.062.2022125072655.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2200.062.2022125085353.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2205.062.2022125092829.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2210.062.2022125080518.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2215.062.2022125091933.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2220.062.2022125092642.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2225.062.2022125093548.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2230.062.2022125090048.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2235.062.2022125082410.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2240.062.2022125085703.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2245.062.2022125092335.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2250.062.2022125073043.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2255.062.2022125072442.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2300.062.2022125085627.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2305.062.2022125092410.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2310.062.2022125090146.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2315.062.2022125091546.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2320.062.2022125081358.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2325.062.2022125092849.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2330.062.2022125091620.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2335.062.2022125081420.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2340.062.2022125092648.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2345.062.2022125093620.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2350.062.2022125071835.nc,MCD06COSP_G3_MODIS_Aqua.A2002185.2355.062.2022125093141.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0000.062.2022125085503.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0005.062.2022125080834.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0010.062.2022125090507.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0015.062.2022125092733.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0020.062.2022125092541.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0025.062.2022125085918.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0030.062.2022125084517.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0035.062.2022125074517.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0040.062.2022125092220.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0045.062.2022125090704.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0050.062.2022125091251.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0055.062.2022125082923.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0100.062.2022125084500.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0105.062.2022125092956.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0110.062.2022125082204.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0115.062.2022125091651.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0120.062.2022125090210.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0125.062.2022125091606.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0130.062.2022125085854.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0135.062.2022125073610.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0140.062.2022125093221.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0145.062.2022125085810.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0150.062.2022125081820.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0155.062.2022125074101.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0200.062.2022125090923.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0205.062.2022125091423.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0210.062.2022125080451.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0215.062.2022125090809.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0220.062.2022125091338.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0225.062.2022125075634.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0230.062.2022125074133.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0235.062.2022125091345.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0240.062.2022125090333.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0245.062.2022125090410.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0250.062.2022125084556.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0255.062.2022125083417.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0300.062.2022125074309.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0305.062.2022125085925.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0310.062.2022125085551.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0315.062.2022125091728.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0320.062.2022125092356.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0325.062.2022125073817.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0330.062.2022125085414.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0335.062.2022125085613.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0340.062.2022125091144.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0345.062.2022125080032.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0350.062.2022125092350.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0355.062.2022125091149.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0400.062.2022125073958.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0405.062.2022125072051.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0410.062.2022125093020.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0415.062.2022125090005.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0420.062.2022125082057.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0425.062.2022125072525.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0430.062.2022125093248.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0435.062.2022125081034.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0440.062.2022125093313.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0445.062.2022125091642.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0450.062.2022125081932.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0455.062.2022125091019.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0500.062.2022125091321.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0505.062.2022125091913.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0510.062.2022125080714.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0515.062.2022125082942.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0520.062.2022125090417.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0525.062.2022125080612.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0530.062.2022125091721.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0535.062.2022125085101.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0540.062.2022125082710.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0545.062.2022125090802.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0550.062.2022125091119.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0555.062.2022125073249.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0600.062.2022125082749.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0605.062.2022125093157.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0610.062.2022125082959.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0615.062.2022125092126.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0620.062.2022125082142.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0625.062.2022125081530.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0630.062.2022125090316.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0635.062.2022125085438.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0640.062.2022125084319.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0645.062.2022125080326.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0650.062.2022125091214.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0655.062.2022125085110.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0700.062.2022125074412.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0705.062.2022125073147.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0710.062.2022125092806.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0715.062.2022125080546.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0720.062.2022125093507.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0725.062.2022125093541.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0730.062.2022125072125.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0735.062.2022125092029.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0740.062.2022125093256.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0745.062.2022125091238.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0750.062.2022125083643.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0755.062.2022125090538.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0800.062.2022125090039.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0805.062.2022125090748.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0810.062.2022125073926.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0815.062.2022125074235.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0820.062.2022125091531.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0825.062.2022125075345.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0830.062.2022125092936.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0835.062.2022125085721.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0840.062.2022125091447.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0845.062.2022125084729.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0850.062.2022125084027.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0855.062.2022125091634.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0900.062.2022125080103.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0905.062.2022125093615.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0910.062.2022125092308.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0915.062.2022125090607.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0920.062.2022125083908.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0925.062.2022125092053.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0930.062.2022125092431.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0935.062.2022125092628.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0940.062.2022125091954.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0945.062.2022125081554.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0950.062.2022125082653.nc,MCD06COSP_G3_MODIS_Terra.A2002185.0955.062.2022125091551.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1000.062.2022125090729.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1005.062.2022125075152.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1010.062.2022125081508.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1015.062.2022125093344.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1020.062.2022125081756.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1025.062.2022125085542.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1030.062.2022125093554.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1035.062.2022125082428.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1040.062.2022125081145.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1045.062.2022125091525.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1050.062.2022125093334.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1055.062.2022125074626.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1100.062.2022125090459.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1105.062.2022125080642.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1110.062.2022125090121.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1115.062.2022125091559.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1120.062.2022125091028.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1125.062.2022125093322.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1130.062.2022125091455.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1135.062.2022125085651.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1140.062.2022125082809.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1145.062.2022125075053.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1150.062.2022125085302.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1155.062.2022125091012.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1200.062.2022125085536.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1205.062.2022125083958.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1210.062.2022125092621.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1215.062.2022125084828.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1220.062.2022125090530.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1225.062.2022125090935.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1230.062.2022125085425.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1235.062.2022125081620.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1240.062.2022125090914.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1245.062.2022125081909.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1250.062.2022125092201.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1255.062.2022125091440.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1300.062.2022125091054.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1305.062.2022125092814.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1310.062.2022125083247.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1315.062.2022125083539.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1320.062.2022125092425.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1325.062.2022125085756.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1330.062.2022125090231.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1335.062.2022125080208.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1340.062.2022125085323.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1345.062.2022125092119.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1350.062.2022125083525.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1355.062.2022125075437.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1400.062.2022125081710.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1405.062.2022125091401.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1410.062.2022125072404.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1415.062.2022125073644.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1420.062.2022125092300.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1425.062.2022125075509.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1430.062.2022125084212.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1435.062.2022125083849.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1440.062.2022125083309.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1445.062.2022125092701.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1450.062.2022125092636.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1455.062.2022125085029.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1500.062.2022125081644.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1505.062.2022125092207.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1510.062.2022125082014.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1515.062.2022125090734.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1520.062.2022125093444.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1525.062.2022125074915.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1530.062.2022125075021.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1535.062.2022125084142.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1540.062.2022125084044.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1545.062.2022125083829.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1550.062.2022125072835.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1555.062.2022125082830.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1600.062.2022125081332.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1605.062.2022125073432.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1610.062.2022125093305.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1615.062.2022125092509.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1620.062.2022125085956.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1625.062.2022125093212.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1630.062.2022125090948.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1635.062.2022125073715.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1640.062.2022125091905.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1645.062.2022125092948.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1650.062.2022125092322.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1655.062.2022125090649.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1700.062.2022125083400.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1705.062.2022125092136.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1710.062.2022125091705.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1715.062.2022125092929.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1720.062.2022125091110.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1725.062.2022125092857.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1730.062.2022125084350.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1735.062.2022125082327.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1740.062.2022125083106.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1745.062.2022125084333.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1750.062.2022125091628.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1755.062.2022125091818.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1800.062.2022125093429.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1805.062.2022125081734.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1810.062.2022125082634.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1815.062.2022125083700.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1820.062.2022125085825.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1825.062.2022125092516.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1830.062.2022125090544.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1835.062.2022125080425.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1840.062.2022125090833.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1845.062.2022125092452.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1850.062.2022125075411.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1855.062.2022125090217.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1900.062.2022125073357.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1905.062.2022125084918.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1910.062.2022125093519.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1915.062.2022125085451.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1920.062.2022125091306.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1925.062.2022125091835.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1930.062.2022125082449.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1935.062.2022125072206.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1940.062.2022125091714.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1945.062.2022125074703.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1950.062.2022125092042.nc,MCD06COSP_G3_MODIS_Terra.A2002185.1955.062.2022125085740.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2000.062.2022125091231.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2005.062.2022125092446.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2010.062.2022125093435.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2015.062.2022125075729.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2020.062.2022125074950.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2025.062.2022125081210.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2030.062.2022125093038.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2035.062.2022125090711.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2040.062.2022125090444.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2045.062.2022125082614.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2050.062.2022125082553.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2055.062.2022125090817.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2100.062.2022125091925.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2105.062.2022125084704.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2110.062.2022125075758.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2115.062.2022125081307.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2120.062.2022125090023.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2125.062.2022125083156.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2130.062.2022125071942.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2135.062.2022125092438.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2140.062.2022125083326.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2145.062.2022125092718.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2150.062.2022125092941.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2155.062.2022125093502.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2200.062.2022125091858.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2205.062.2022125092317.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2210.062.2022125092234.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2215.062.2022125075901.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2220.062.2022125081953.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2225.062.2022125084301.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2230.062.2022125090239.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2235.062.2022125091159.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2240.062.2022125092251.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2245.062.2022125091538.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2250.062.2022125085834.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2255.062.2022125084716.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2300.062.2022125090112.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2305.062.2022125081003.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2310.062.2022125084951.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2315.062.2022125074811.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2320.062.2022125093033.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2325.062.2022125082528.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2330.062.2022125085522.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2335.062.2022125090140.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2340.062.2022125090524.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2345.062.2022125072936.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2350.062.2022125085803.nc,MCD06COSP_G3_MODIS_Terra.A2002185.2355.062.2022125083122.nc    daily_defn_of_day_adjustment      False      date_created      2022-05-05T07:18:10Z   product_name      0MCD06COSP_D3_MODIS.A2002185.062.2022125093622.nc   LocalGranuleID        0MCD06COSP_D3_MODIS.A2002185.062.2022125093622.nc   	ShortName         MCD06COSP_D3_MODIS     product_version       6.2.0      AlgorithmType         OPS    identifier_product_doi        $10.5067/MODIS/MCD06COSP_D3_MODIS.062    identifier_product_doi_authority      http://dx.doi.org      DataCenterId      UWI-MAD/SSEC/ASIPS     project       NASA VIIRS Atmosphere SIPS     creator_name      NASA VIIRS Atmosphere SIPS     creator_url       https://sips.ssec.wisc.edu     creator_email         sips.support@ssec.wisc.edu     creator_institution       ESpace Science & Engineering Center, University of Wisconsin - Madison      publisher_name        LAADS      publisher_url         'https://ladsweb.modaps.eosdis.nasa.gov/    publisher_email       modis-ops@lists.nasa.gov   publisher_institution         9NASA Level-1 and Atmosphere Archive & Distribution System      time_coverage_start       2002-07-04T00:00:00.000000     time_coverage_end         2002-07-04T23:59:59.000000     xmlmetadata      �J<?xml version="1.0"?>
<!DOCTYPE GranuleMetaDataFile SYSTEM "http://ecsinfo.gsfc.nasa.gov/ECSInfo/ecsmetadata/dtds/DPL/ECS/ScienceGranuleMetadata.dtd">
<GranuleMetaDataFile>
  <DTDVersion>1.0</DTDVersion>
  <DataCenterId>UWI-MAD/SSEC/ASIPS</DataCenterId>
  <GranuleURMetaData>
    <CollectionMetaData>
      <ShortName>MCD06COSP_D3_MODIS</ShortName>
      <VersionID>62</VersionID>
    </CollectionMetaData>
    <ECSDataGranule>
      <ReprocessingPlanned>no further reprocessing anticipated</ReprocessingPlanned>
      <LocalGranuleID>MCD06COSP_D3_MODIS.A2002185.062.2022125093622.nc</LocalGranuleID>
 
      <ProductionDateTime>2022-05-05 09:43:55.240730</ProductionDateTime>
      <LocalVersionID>62</LocalVersionID>
    </ECSDataGranule>
    <PGEVersionClass>
      <PGEVersion>6.2.0</PGEVersion>
    </PGEVersionClass>
    <RangeDateTime>
      <RangeEndingTime>23:59:59.000000</RangeEndingTime>
      <RangeEndingDate>2002-07-04</RangeEndingDate>
      <RangeBeginningTime>00:00:00.000000</RangeBeginningTime>
      <RangeBeginningDate>2002-07-04</RangeBeginningDate>
    </RangeDateTime>
    <SpatialDomainContainer>
      <HorizontalSpatialDomainContainer>
        <BoundingRectangle>
          <WestBoundingCoordinate>-180</WestBoundingCoordinate>
          <NorthBoundingCoordinate>90</NorthBoundingCoordinate>
          <EastBoundingCoordinate>180</EastBoundingCoordinate>
          <SouthBoundingCoordinate>-90</SouthBoundingCoordinate>
        </BoundingRectangle>
      </HorizontalSpatialDomainContainer>
    </SpatialDomainContainer>
    <Platform>
      <PlatformShortName>Aqua, Terra</PlatformShortName>
      <Instrument>
        <InstrumentShortName>MODIS</InstrumentShortName>
        <Sensor>
          <SensorShortName>MODIS</SensorShortName>
        </Sensor>
      </Instrument>
    </Platform>
    <InputGranule>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0000.062.2022125093440.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0005.062.2022125092240.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0010.062.2022125091615.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0015.062.2022125090103.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0020.062.2022125085212.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0025.062.2022125080904.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0030.062.2022125071908.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0035.062.2022125091516.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0040.062.2022125090902.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0045.062.2022125091826.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0050.062.2022125084530.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0055.062.2022125093012.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0100.062.2022125093238.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0105.062.2022125090305.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0110.062.2022125092726.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0115.062.2022125073327.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0120.062.2022125083510.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0125.062.2022125091411.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0130.062.2022125080807.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0135.062.2022125091245.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0140.062.2022125075316.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0145.062.2022125091810.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0150.062.2022125090152.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0155.062.2022125091354.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0200.062.2022125082905.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0205.062.2022125084849.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0210.062.2022125092113.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0215.062.2022125092100.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0220.062.2022125082308.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0225.062.2022125090855.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0230.062.2022125091432.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0235.062.2022125082348.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0240.062.2022125073508.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0245.062.2022125082248.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0250.062.2022125085905.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0255.062.2022125090352.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0300.062.2022125084647.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0305.062.2022125080932.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0310.062.2022125093512.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0315.062.2022125073743.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0320.062.2022125085816.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0325.062.2022125091313.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0330.062.2022125074737.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0335.062.2022125093527.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0340.062.2022125090559.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0345.062.2022125092009.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0350.062.2022125085733.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0355.062.2022125084407.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0400.062.2022125072804.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0405.062.2022125083435.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0410.062.2022125090323.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0415.062.2022125074029.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0420.062.2022125092711.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0425.062.2022125093609.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0430.062.2022125090551.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0435.062.2022125091509.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0440.062.2022125093107.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0445.062.2022125083451.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0450.062.2022125084839.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0455.062.2022125083942.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0500.062.2022125084632.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0505.062.2022125085408.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0510.062.2022125091126.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0515.062.2022125093026.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0520.062.2022125090929.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0525.062.2022125084012.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0530.062.2022125073116.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0535.062.2022125073540.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0540.062.2022125092924.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0545.062.2022125090656.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0550.062.2022125084156.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0555.062.2022125091208.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0600.062.2022125092152.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0605.062.2022125091943.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0610.062.2022125093052.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0615.062.2022125083926.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0620.062.2022125091741.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0625.062.2022125092532.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0630.062.2022125082121.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0635.062.2022125085229.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0640.062.2022125090718.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0645.062.2022125090941.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0650.062.2022125084433.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0655.062.2022125092547.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0700.062.2022125091501.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0705.062.2022125072016.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0710.062.2022125090134.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0715.062.2022125092142.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0720.062.2022125090755.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0725.062.2022125090056.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0730.062.2022125091005.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0735.062.2022125084229.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0740.062.2022125092344.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0745.062.2022125091037.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0750.062.2022125093408.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0755.062.2022125075829.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0800.062.2022125081237.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0805.062.2022125091102.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0810.062.2022125084420.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0815.062.2022125085204.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0820.062.2022125083229.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0825.062.2022125091752.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0830.062.2022125090257.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0835.062.2022125075702.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0840.062.2022125085001.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0845.062.2022125080738.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0850.062.2022125090030.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0855.062.2022125093117.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0900.062.2022125092019.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0905.062.2022125083138.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0910.062.2022125092002.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0915.062.2022125080004.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0920.062.2022125085749.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0925.062.2022125083743.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0930.062.2022125072243.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0935.062.2022125085946.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0940.062.2022125093351.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0945.062.2022125092553.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0950.062.2022125090451.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.0955.062.2022125075248.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1000.062.2022125093401.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1005.062.2022125074444.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1010.062.2022125085841.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1015.062.2022125090643.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1020.062.2022125091139.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1025.062.2022125084903.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1030.062.2022125083048.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1035.062.2022125092744.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1040.062.2022125083344.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1045.062.2022125085050.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1050.062.2022125085514.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1055.062.2022125082224.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1100.062.2022125085911.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1105.062.2022125092228.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1110.062.2022125085639.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1115.062.2022125093228.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1120.062.2022125080356.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1125.062.2022125090636.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1130.062.2022125083031.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1135.062.2022125090128.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1140.062.2022125073848.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1145.062.2022125091659.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1150.062.2022125074341.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1155.062.2022125090827.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1200.062.2022125093059.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1205.062.2022125092106.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1210.062.2022125085239.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1215.062.2022125072559.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1220.062.2022125082510.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1225.062.2022125092418.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1230.062.2022125075124.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1235.062.2022125092600.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1240.062.2022125083628.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1245.062.2022125080137.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1250.062.2022125091851.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1255.062.2022125092840.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1300.062.2022125085934.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1305.062.2022125081059.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1310.062.2022125090839.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1315.062.2022125090425.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1320.062.2022125075605.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1325.062.2022125083717.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1330.062.2022125081843.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1335.062.2022125092047.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1340.062.2022125074552.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1345.062.2022125085528.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1350.062.2022125083014.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1355.062.2022125091843.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1400.062.2022125092614.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1405.062.2022125084814.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1410.062.2022125091046.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1415.062.2022125090515.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1420.062.2022125084247.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1425.062.2022125085221.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1430.062.2022125093534.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1435.062.2022125093452.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1440.062.2022125090401.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1445.062.2022125072909.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1450.062.2022125072628.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1455.062.2022125073216.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1500.062.2022125092606.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1505.062.2022125085607.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1510.062.2022125092654.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1515.062.2022125083213.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1520.062.2022125090741.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1525.062.2022125085040.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1530.062.2022125085601.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1535.062.2022125092525.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1540.062.2022125090957.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1545.062.2022125084751.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1550.062.2022125091133.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1555.062.2022125093005.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1600.062.2022125084617.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1605.062.2022125084100.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1610.062.2022125090621.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1615.062.2022125085012.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1620.062.2022125092214.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1625.062.2022125093043.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1630.062.2022125083804.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1635.062.2022125091258.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1640.062.2022125085401.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1645.062.2022125085147.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1650.062.2022125085714.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1655.062.2022125080258.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1700.062.2022125092821.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1705.062.2022125074841.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1710.062.2022125085130.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1715.062.2022125090249.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1720.062.2022125084122.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1725.062.2022125090201.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1730.062.2022125093602.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1735.062.2022125085156.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1740.062.2022125093131.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1745.062.2022125091329.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1750.062.2022125090434.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1755.062.2022125085312.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1800.062.2022125090723.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1805.062.2022125084741.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1810.062.2022125085139.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1815.062.2022125093421.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1820.062.2022125080232.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1825.062.2022125090846.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1830.062.2022125082849.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1835.062.2022125090629.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1840.062.2022125083554.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1845.062.2022125085846.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1850.062.2022125091803.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1855.062.2022125085121.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1900.062.2022125091221.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1905.062.2022125072729.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1910.062.2022125092917.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1915.062.2022125075220.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1920.062.2022125084542.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1925.062.2022125085332.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1930.062.2022125092755.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1935.062.2022125083610.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1940.062.2022125073007.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1945.062.2022125082729.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1950.062.2022125093205.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.1955.062.2022125075932.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2000.062.2022125084447.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2005.062.2022125091758.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2010.062.2022125085620.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2015.062.2022125093415.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2020.062.2022125093148.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2025.062.2022125085727.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2030.062.2022125081444.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2035.062.2022125082035.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2040.062.2022125090224.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2045.062.2022125085345.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2050.062.2022125092908.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2055.062.2022125093124.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2100.062.2022125074203.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2105.062.2022125072326.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2110.062.2022125085249.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2115.062.2022125092459.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2120.062.2022125084938.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2125.062.2022125075537.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2130.062.2022125081123.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2135.062.2022125092328.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2140.062.2022125090344.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2145.062.2022125090016.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2150.062.2022125092403.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2155.062.2022125072655.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2200.062.2022125085353.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2205.062.2022125092829.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2210.062.2022125080518.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2215.062.2022125091933.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2220.062.2022125092642.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2225.062.2022125093548.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2230.062.2022125090048.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2235.062.2022125082410.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2240.062.2022125085703.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2245.062.2022125092335.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2250.062.2022125073043.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2255.062.2022125072442.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2300.062.2022125085627.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2305.062.2022125092410.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2310.062.2022125090146.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2315.062.2022125091546.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2320.062.2022125081358.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2325.062.2022125092849.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2330.062.2022125091620.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2335.062.2022125081420.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2340.062.2022125092648.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2345.062.2022125093620.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2350.062.2022125071835.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Aqua.A2002185.2355.062.2022125093141.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0000.062.2022125085503.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0005.062.2022125080834.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0010.062.2022125090507.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0015.062.2022125092733.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0020.062.2022125092541.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0025.062.2022125085918.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0030.062.2022125084517.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0035.062.2022125074517.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0040.062.2022125092220.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0045.062.2022125090704.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0050.062.2022125091251.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0055.062.2022125082923.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0100.062.2022125084500.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0105.062.2022125092956.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0110.062.2022125082204.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0115.062.2022125091651.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0120.062.2022125090210.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0125.062.2022125091606.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0130.062.2022125085854.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0135.062.2022125073610.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0140.062.2022125093221.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0145.062.2022125085810.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0150.062.2022125081820.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0155.062.2022125074101.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0200.062.2022125090923.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0205.062.2022125091423.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0210.062.2022125080451.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0215.062.2022125090809.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0220.062.2022125091338.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0225.062.2022125075634.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0230.062.2022125074133.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0235.062.2022125091345.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0240.062.2022125090333.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0245.062.2022125090410.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0250.062.2022125084556.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0255.062.2022125083417.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0300.062.2022125074309.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0305.062.2022125085925.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0310.062.2022125085551.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0315.062.2022125091728.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0320.062.2022125092356.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0325.062.2022125073817.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0330.062.2022125085414.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0335.062.2022125085613.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0340.062.2022125091144.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0345.062.2022125080032.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0350.062.2022125092350.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0355.062.2022125091149.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0400.062.2022125073958.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0405.062.2022125072051.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0410.062.2022125093020.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0415.062.2022125090005.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0420.062.2022125082057.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0425.062.2022125072525.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0430.062.2022125093248.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0435.062.2022125081034.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0440.062.2022125093313.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0445.062.2022125091642.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0450.062.2022125081932.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0455.062.2022125091019.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0500.062.2022125091321.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0505.062.2022125091913.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0510.062.2022125080714.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0515.062.2022125082942.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0520.062.2022125090417.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0525.062.2022125080612.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0530.062.2022125091721.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0535.062.2022125085101.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0540.062.2022125082710.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0545.062.2022125090802.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0550.062.2022125091119.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0555.062.2022125073249.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0600.062.2022125082749.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0605.062.2022125093157.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0610.062.2022125082959.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0615.062.2022125092126.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0620.062.2022125082142.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0625.062.2022125081530.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0630.062.2022125090316.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0635.062.2022125085438.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0640.062.2022125084319.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0645.062.2022125080326.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0650.062.2022125091214.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0655.062.2022125085110.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0700.062.2022125074412.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0705.062.2022125073147.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0710.062.2022125092806.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0715.062.2022125080546.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0720.062.2022125093507.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0725.062.2022125093541.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0730.062.2022125072125.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0735.062.2022125092029.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0740.062.2022125093256.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0745.062.2022125091238.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0750.062.2022125083643.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0755.062.2022125090538.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0800.062.2022125090039.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0805.062.2022125090748.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0810.062.2022125073926.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0815.062.2022125074235.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0820.062.2022125091531.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0825.062.2022125075345.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0830.062.2022125092936.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0835.062.2022125085721.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0840.062.2022125091447.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0845.062.2022125084729.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0850.062.2022125084027.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0855.062.2022125091634.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0900.062.2022125080103.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0905.062.2022125093615.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0910.062.2022125092308.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0915.062.2022125090607.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0920.062.2022125083908.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0925.062.2022125092053.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0930.062.2022125092431.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0935.062.2022125092628.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0940.062.2022125091954.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0945.062.2022125081554.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0950.062.2022125082653.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.0955.062.2022125091551.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1000.062.2022125090729.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1005.062.2022125075152.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1010.062.2022125081508.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1015.062.2022125093344.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1020.062.2022125081756.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1025.062.2022125085542.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1030.062.2022125093554.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1035.062.2022125082428.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1040.062.2022125081145.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1045.062.2022125091525.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1050.062.2022125093334.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1055.062.2022125074626.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1100.062.2022125090459.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1105.062.2022125080642.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1110.062.2022125090121.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1115.062.2022125091559.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1120.062.2022125091028.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1125.062.2022125093322.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1130.062.2022125091455.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1135.062.2022125085651.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1140.062.2022125082809.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1145.062.2022125075053.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1150.062.2022125085302.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1155.062.2022125091012.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1200.062.2022125085536.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1205.062.2022125083958.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1210.062.2022125092621.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1215.062.2022125084828.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1220.062.2022125090530.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1225.062.2022125090935.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1230.062.2022125085425.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1235.062.2022125081620.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1240.062.2022125090914.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1245.062.2022125081909.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1250.062.2022125092201.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1255.062.2022125091440.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1300.062.2022125091054.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1305.062.2022125092814.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1310.062.2022125083247.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1315.062.2022125083539.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1320.062.2022125092425.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1325.062.2022125085756.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1330.062.2022125090231.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1335.062.2022125080208.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1340.062.2022125085323.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1345.062.2022125092119.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1350.062.2022125083525.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1355.062.2022125075437.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1400.062.2022125081710.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1405.062.2022125091401.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1410.062.2022125072404.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1415.062.2022125073644.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1420.062.2022125092300.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1425.062.2022125075509.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1430.062.2022125084212.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1435.062.2022125083849.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1440.062.2022125083309.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1445.062.2022125092701.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1450.062.2022125092636.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1455.062.2022125085029.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1500.062.2022125081644.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1505.062.2022125092207.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1510.062.2022125082014.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1515.062.2022125090734.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1520.062.2022125093444.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1525.062.2022125074915.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1530.062.2022125075021.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1535.062.2022125084142.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1540.062.2022125084044.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1545.062.2022125083829.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1550.062.2022125072835.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1555.062.2022125082830.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1600.062.2022125081332.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1605.062.2022125073432.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1610.062.2022125093305.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1615.062.2022125092509.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1620.062.2022125085956.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1625.062.2022125093212.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1630.062.2022125090948.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1635.062.2022125073715.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1640.062.2022125091905.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1645.062.2022125092948.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1650.062.2022125092322.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1655.062.2022125090649.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1700.062.2022125083400.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1705.062.2022125092136.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1710.062.2022125091705.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1715.062.2022125092929.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1720.062.2022125091110.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1725.062.2022125092857.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1730.062.2022125084350.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1735.062.2022125082327.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1740.062.2022125083106.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1745.062.2022125084333.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1750.062.2022125091628.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1755.062.2022125091818.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1800.062.2022125093429.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1805.062.2022125081734.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1810.062.2022125082634.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1815.062.2022125083700.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1820.062.2022125085825.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1825.062.2022125092516.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1830.062.2022125090544.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1835.062.2022125080425.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1840.062.2022125090833.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1845.062.2022125092452.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1850.062.2022125075411.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1855.062.2022125090217.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1900.062.2022125073357.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1905.062.2022125084918.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1910.062.2022125093519.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1915.062.2022125085451.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1920.062.2022125091306.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1925.062.2022125091835.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1930.062.2022125082449.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1935.062.2022125072206.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1940.062.2022125091714.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1945.062.2022125074703.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1950.062.2022125092042.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.1955.062.2022125085740.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2000.062.2022125091231.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2005.062.2022125092446.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2010.062.2022125093435.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2015.062.2022125075729.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2020.062.2022125074950.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2025.062.2022125081210.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2030.062.2022125093038.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2035.062.2022125090711.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2040.062.2022125090444.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2045.062.2022125082614.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2050.062.2022125082553.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2055.062.2022125090817.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2100.062.2022125091925.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2105.062.2022125084704.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2110.062.2022125075758.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2115.062.2022125081307.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2120.062.2022125090023.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2125.062.2022125083156.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2130.062.2022125071942.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2135.062.2022125092438.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2140.062.2022125083326.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2145.062.2022125092718.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2150.062.2022125092941.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2155.062.2022125093502.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2200.062.2022125091858.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2205.062.2022125092317.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2210.062.2022125092234.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2215.062.2022125075901.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2220.062.2022125081953.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2225.062.2022125084301.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2230.062.2022125090239.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2235.062.2022125091159.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2240.062.2022125092251.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2245.062.2022125091538.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2250.062.2022125085834.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2255.062.2022125084716.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2300.062.2022125090112.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2305.062.2022125081003.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2310.062.2022125084951.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2315.062.2022125074811.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2320.062.2022125093033.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2325.062.2022125082528.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2330.062.2022125085522.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2335.062.2022125090140.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2340.062.2022125090524.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2345.062.2022125072936.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2350.062.2022125085803.nc</InputPointer>
      <InputPointer>MCD06COSP_G3_MODIS_Terra.A2002185.2355.062.2022125083122.nc</InputPointer>
    </InputGranule>
    <AncillaryInputGranules>
    </AncillaryInputGranules>
  </GranuleURMetaData>
</GranuleMetaDataFile>     platform      Aqua, Terra    
instrument        MODIS      processing_level      L3     format        NetCDF4    title         UAqua/Terra MODIS Cloud Properties Level 3 daily, 1x1 degree grid (MCD06COSP_D3_MODIS)      	long_name         1Cloud Fraction from Cloud Mask for Daytime Scenes      
version_id        062    geospatial_lat_max        @V�        geospatial_lat_min        �V�        geospatial_lon_min        @f�        geospatial_lon_max        �f�        NorthBoundingCoordinate       @V�        SouthBoundingCoordinate       �V�        EastBoundingCoordinate        @f�        WestBoundingCoordinate        �f�        latitude_resolution       ?�         longitude_resolution      ?�         license       Qhttp://science.nasa.gov/earth-science/earth-science-data/data-information-policy/      stdname_vocabulary        4NetCDF Climate and Forecast (CF) Metadata Convention   keywords_vocabulary       ;NASA Global Change Master Directory (GCMD) Science Keywords    keywords      �EARTH SCIENCE > ATMOSPHERE > CLOUDS > CLOUD MICROPHYSICS > CLOUD OPTICAL DEPTH/THICKNESS, EARTH SCIENCE > ATMOSPHERE > CLOUDS > CLOUD PROPERTIES > CLOUD TOP HEIGHT, EARTH SCIENCE > ATMOSPHERE > CLOUDS > CLOUD PROPERTIES > CLOUD FRACTION   naming_authority      gov.nasa.gsfc.sci.atmos    units         none   
_FillValue        ��8        	valid_min                    	valid_max         ?�         scale_factor      ?�         
add_offset                   NCO       `netCDF Operators version 4.9.1 (Homepage = http://nco.sf.net, Code = http://github.com/nco/nco)    history      qFri Sep  9 15:26:33 2022: ncpdq -a lat,lon clt_MODIS_surface_DJF.nc djf
Fri Sep 09 14:27:54 2022: cdo timmean clt_MODIS_surface_DJF.nc djf
Fri Sep 02 14:51:40 2022: cdo splitseas Modis_Cloud_Mask_Fraction_ymonmean_cmor.nc Modis_Cloud_Mask_Fraction_
Fri Sep 02 14:37:47 2022: cdo mulc,100 -chname,Mean,clt Modis_Cloud_Mask_Fraction_ymonmean_r.nc Modis_Cloud_Mask_Fraction_ymonmean_cmor.nc
Fri Sep 02 14:24:28 2022: cdo remapbil,r180x91 Modis_Cloud_Mask_Fraction_ymonmean.nc Modis_Cloud_Mask_Fraction_ymonmean_r.nc
Fri Sep 02 14:21:08 2022: cdo ymonmean Modis_Cloud_Mask_Fraction_daily.nc Modis_Cloud_Mask_Fraction_ymonmean.nc       CDO       @Climate Data Operators version 1.9.9 (https://mpimet.mpg.de/cdo)         time                standard_name         time   bounds        	time_bnds      units         days since 2002-7-4 00:00:00   calendar      proleptic_gregorian    axis      T          ʀ   	time_bnds                            ʈ   lon                standard_name         	longitude      	long_name         	longitude      units         degrees_east   axis      X        � �   lat                standard_name         latitude   	long_name         latitude   units         degrees_north      axis      Y        � Ǩ   clt                       units         none   
_FillValue        ��8        missing_value         ��8        cell_methods      
time: mean     title         Cloud_Mask_Fraction: Mean       �� ʘ        @       @      @      @       @$      @(      @,      @0      @2      @4      @6      @8      @:      @<      @>      @@      @A      @B      @C      @D      @E      @F      @G      @H      @I      @J      @K      @L      @M      @N      @O      @P      @P�     @Q      @Q�     @R      @R�     @S      @S�     @T      @T�     @U      @U�     @V      @V�     @W      @W�     @X      @X�     @Y      @Y�     @Z      @Z�     @[      @[�     @\      @\�     @]      @]�     @^      @^�     @_      @_�     @`      @`@     @`�     @`�     @a      @a@     @a�     @a�     @b      @b@     @b�     @b�     @c      @c@     @c�     @c�     @d      @d@     @d�     @d�     @e      @e@     @e�     @e�     @f      @f@     @f�     @f�     @g      @g@     @g�     @g�     @h      @h@     @h�     @h�     @i      @i@     @i�     @i�     @j      @j@     @j�     @j�     @k      @k@     @k�     @k�     @l      @l@     @l�     @l�     @m      @m@     @m�     @m�     @n      @n@     @n�     @n�     @o      @o@     @o�     @o�     @p      @p      @p@     @p`     @p�     @p�     @p�     @p�     @q      @q      @q@     @q`     @q�     @q�     @q�     @q�     @r      @r      @r@     @r`     @r�     @r�     @r�     @r�     @s      @s      @s@     @s`     @s�     @s�     @s�     @s�     @t      @t      @t@     @t`     @t�     @t�     @t�     @t�     @u      @u      @u@     @u`     @u�     @u�     @u�     @u�     @v      @v      @v@     @v`     �V�     �V      �U�     �U      �T�     �T      �S�     �S      �R�     �R      �Q�     �Q      �P�     �P      �O      �N      �M      �L      �K      �J      �I      �H      �G      �F      �E      �D      �C      �B      �A      �@      �>      �<      �:      �8      �6      �4      �2      �0      �,      �(      �$      �       �      �      �               @       @      @      @       @$      @(      @,      @0      @2      @4      @6      @8      @:      @<      @>      @@      @A      @B      @C      @D      @E      @F      @G      @H      @I      @J      @K      @L      @M      @N      @O      @P      @P�     @Q      @Q�     @R      @R�     @S      @S�     @T      @T�     @U      @U�     @V      @V�     @�     @f�     @��     @G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@G;떽�@B?f,3@B ��x@BdJq�@B	�}�@Bz�L6�@A�X(#��@A��a(�I@A�uV�@A�ִMn@B�b�@B14c�@BL��R;@BX�����@B]c���@Bp�$��c@B��!E�@Bш�/�@B�YK`@B�K6E�@C�J��@C.Â�@C+Ui�5�@C VQs@B�0�`:@B�u�Yʥ@B���2@BJ7�\w@B��@A����~|@AiQ�v$@A%��@@���/5@@�܃Q�@@Hh�P�@@��E�@?����^|@?���rռ@?X<�*##@?MYE>�@?0n+�@>���v�@?^�b�@?Ѱ�0@?V��(�@>���͈@>�3�/@>��� E@?�Mx@?6?���@?�����@?J悢�@?��q�y�@?���a?k@@�d�@@;!�l��@@f}��@@��ο@@@��\)e@@ܬT�w�@@���6ih@A36N��@Ah�IP��@A��0a@Aѓ�.7@B ���)�@B+���J�@Bf�VfZ�@B�"7Ts@B�Lٰ�A@C���X@CF���/@Ci��� @C��j�@C�Yu)�@C����$@DR�Q�@DJ=��O@Du芓0b@D�K55�@D���=�[@E&B5y@EX�ꐶP@E�v�
�L@E�׌υ@F'B�d��@Fs��.Ow@F��@G��|�?@GOu����@G��3#�@G�	����@H6��+e�@Hp�f^u3@H�[�pJY@H�����!@I@,��S�@I{}�KY@I����G@I��T�@JI셍@Jbr���@J�&]3�C@JĖ��e@J�س�@J[A!/�]@J^W�c@I��+_;@IY�V�@@IMe�_s@IhK���@@IW�,��=@I~x�4�@I�I~j�@J	ۅ�Π@J<����@JE�3��u@JN��@JP�7��8@JH���R1@J\�%��G@J��6/��@J��9d$@J�+DO�@J��� �U@J��7���@J�u�M�c@Jb(
]�U@JZ�ck�@I��)E�E@Iu�Iw�?@I3҄�3�@H�G�i@H��EI`�@H87ڴ$@G�6_y�@G�Jn:�t@GH�B���@G��DX@F���0�@F��+�I@Fp���;�@FBʿH\c@Fz��i@F�b	�`@F���"�@F�&w=@F��N`(@F.�
�/@@F2,e��@F5���@F�y>�+@Ff"�Z�@E�a �[@E��ƚ�@Es1����@ES��;@E*G� 8-@D���m�=@D���@D�c8�9@D���r7@DtH�l��@DR�#|@DB%�s�@D-v��N@D���_@C��b@C����@C�5�0�@C�&��@C���ry@C����@Cc�w�@CH�-x��@C/����T@B��`�3�@Bڋq��@Bˠ�2�y@B����Y@B|d��W�@A�'��@@�q��@@��X?kG@@�4�$�T@@VH4v�_@@9~g�@@��zG�@?ܹ��à@?�5�H@d@?�Ų;6�@?�ݷ�h�@@~ȷ@@.�m�q@@R��]��@@����]�@@��R��@@���2d-@@��bS@A�Í@@����9 @@!�T��@>�`*�d8@=uk��@<AG�Ep�@;������@;���[�@:����@�@:{̭m��@:���@9��p���@9G���2@8���7��@8��%_=@8D�wM�@8�4p+@7��3�� @7cZ'H�0@7>Y��X@7$��r�O@6�
q�S@6���`�@6��1@6���i
I@6e5�>�@6c��#Z%@6y~�T7�@6��U)-@6�o�DI@7P�+ @7�(����@8�����@8p�+�1@8�
�`�(@8�G?�kh@8��RΟ[@98c<B�I@9P���{�@9z�"��3@9��#%�|@:FYeUC�@:�W�`��@;H��r[Q@;����:�@<|{d9x@<�z���@=O�0X@=`�\d@=���b��@=�R�쮃@=�L�"?�@=���I�@>,A�D�@>c&�?�@>t��LdX@>��}M@>����k@>}�a(@>_���p@>)K��p@=�9�w@>�!�35@>�H�Ji�@@	��"�@A�����@A�=�j��@An�
h|@B|����@Aɘ�n@BQ�yl�@C*X�@Ci��8!O@E^!��@E�Y1��`@F�ق+��@G�n�P@FL¥��<@E�E|��@E��C�#@E�?��@D�\ "yA@E���E@HB�����@H>ROu�@G�3z�@FK	�5��@E�k	<��@F� �(@GoGZ�>;@E�aI;��@E�Ⱥ��@FQ�h��@G��>��@G�?}�@H*�F��@H�ږ]m@G���:M@G˾4Op@He�#�K[@HW��{O�@Hc��;H�@H���v�K@H���:�}@H�3����@I�.�7�@I�Eǌ9@I�L�&��@J2����@Jr����`@JX���'@JR_�E�@I�,$��@H�)����@G�����@G-Y��-�@F��i �@E�б�@D�=C�{�@CܶY*=H@C?��e��@B�]��* @Bj%'�H�@B!T���@A���@A��_,��@AH�S��	@A:�UD�@A�a��E�@Bm#��ԏ@C����@C������@Cp�P�z0@C�v�HQ@BѤ:@g@B��0_��@Bl�0���@BL�	H�5@B;Jξ�@BV�(��@A�<�.d+@A�i�D@A|6�8ep@AAU���R@A�:[!@@�H��DL@@פ�B�1@@�ens@A>�$2�@AN�6�@AnNIB�@A������@A�.�1K@A��-O@AԳ��SD@AЗe��@A�1��;�@A��>��@A�a0c��@A��sUQ@Ab�'N(@A?"�˹�@@��K��@@d���@?��wKn�@>�8��(�@=֙� �@<��~K �@;�j�{��@:��A�@9�y�:V@9^P$$��@8�J.���@8��wks@8�I�OL@90��j�@9t�z�M@9�Zķ�(@9��{H@9�����/@9���d��@9j����@8�~X�!�@6��,��@5�A��Q@4���G��@3�b�[��@3u)I*@2�]j��@2OX�#^�@1�a���7@1�b�or�@1x�3�T@1i�Z+��@1O�k3�I@1,�����@15���@0��耄�@0mfMBE@0n�}���@0���@/��k0�m@/��E�a@/�9�7�@/{N���@/�5QM3@0	��P"@0��;�@0A�0�@0���@0�C:6��@1']��&i@1����=8@2m�G�\@2�q�n�@3;���u�@3��i�K@4}=K�<�@4����P�@5EisL�D@5ag��W[@5�-��3�@5�
7��@5�#��@5�'��n@5��`/@5�Lm��a@5�d����@5Z!��@5#q���@4��І�@4p�:)��@4>ĽU�@4Aʗ��7@43|���}@4R�x��@4��0vh@4�x��,�@4�.j^e@5��,�M�@8aL�U�@; l*�@<�b���L@@i���Q@B%���@Aܩ	��@Cf��|�@E�:�K�@F�4y=�@G��`a$q@H��O��A@JJ
�,�@K`H��@K���g@L!bϴ�@K��2c�P@K`|�$i@J�3����@J}�r5E @J["��@H�SKW��@H��iu@HW*)��@G���.��@FzRA��-@Fi-����@F���|@F��vs[P@F��#E@F|�`p�@FaUQz_@F5U�x�+@F
ҍ��@E��0�@E�I;S�k@E������@E�pJ���@E�%dT1�@E�h�H�?@E����Lo@F1��`�@F����*a@G;�UJ�h@G�([��@H��SR�O@Iĸ���@J��sm1@KUV��=@K��BTO@K覃��@LK'k�͝@L#��C1@K1�C�@I˥{(E@H,�"�J@F���[�@E���� �@D�±��@CiZ���@Bl��&O�@A�dof5�@A#���=\@@�m\7�@@�7z��@@��> f�@@�/~�(%@@�/��@@�$�B�@@�`�i�`@A�g�E�@B�-RXv�@C��?��@C�(����@B�/)���@B���$��@Br��y)�@C�/%w@C��˞!@C��H@Ch�(��@B����]h@B90��q1@A�W�n�@A�`]&!@A�b�9%@BP -��@B����*@C�
%�@B�o8�C@B��%`P3@B�;_,@B�q�~ @B��7H+@B��c_�@B�Њ�@B�y_7 �@BK�DuL�@Bs�:�@A��N(u@A��ќ��@Aa���Z�@Ab�@=�3�rLX@=E\�0r�@<գc��@:�-Zq�`@9j��g�@8u��S�+@7u�M�&�@6��87@5��]��@4�;|��@4T U�@3��8/�!@3��63@3���4^o@3Mi󍊥@2��,w@2�/��g@2oڌM@2#�̷��@1�ĺ�8@@0�����@/X����g@-��֠�S@,}�׍��@+N�)�R}@*���a@)r��j,�@(w�n@'���a<@'Fm�>��@'�Z�5@@&�>�#m@&߯u��@'���@'<���P@'VQ�;@'@����@'I=��@'>>5d$u@' ��=4�@&�F�@&�E�(�<@&��[�c@&���Ep#@',B�{�,@'[BI�)@'��L�[@(5,�:qQ@(�MܹuH@)�T�T@�@*���E3�@+~���@,v����@-��{�-�@/Ű�w�@0R�L}�@0��8� @@1Bx*�@1�����@2����@2<8B��@2k���@2zL���@2VYNɛW@2^?6o�@2Zg4?�@2M]��5�@1����@0򳽺7�@0�a׮s@0x鎅�Y@0�D� [�@1z)�WF�@2G��gO@3!��hNm@4XQI��@5������@8[��22@@;�'K�R@@@�O�I@C�����@G�a���@K��K@L����p�@N�B��K@O��5�To@PuĒ[@P0-�zE@P~t��@P(��	�C@P(@d&�H@Pd
�@P3&[˓@O�P7)�@P��؛@P/�t�1@PF�׭�@PNl���@P�L�@O��.�S�@P(2��y@Oôs�@�@N�_��@K���75@In�E�k@H�~���@H��m	G|@H��㓰@H��i��@Hz�m@G�g�Z'T@Gcn՚�T@F�� �`@FmIb+�@E�v����@E�%���@Ey�p�,@Ea��`��@E`�,�[�@E��Sؘd@F���R�@F�T��HL@G��E4�k@Hr�✣@I�$��s@J�<-�v�@K�f�=@L�~�@M>�@L��v�@Lm��S@K焸>|@I�B��@H�ż� �@G ��q�@E�a����@DC3�:F�@C��J�@A�AD��@Ad)�'�z@A%��q�a@A���ww@BE�
K(�@C�0p��@C��Iy��@D�Q�~>	@F3QMT��@G�R��@Ig�Ck^�@J�Y�XK�@L#�͎��@LDڰ7+u@KBmM�K(@J�Z�@I'{H�k�@H\��i��@H�O��Hc@Ip�I��@IB�]��e@F���1A@D	�v�@C�����@C�f��́@C(��,�@B�����@A�*~1X�@A�����@A�4H2I@BP�띍@A��9�
@A�[x��@A�Kʕ\i@A�d$|@A��̦3
@A����@A";e�F@@����@@6�	�[@?gj[M�@>�1��@:p���z+@9䊀&��@8�<R��|@7�s����@6���"�{@5�M��4�@5�P�@4g�.\:�@3�Ψ�/@3dE��@2*����o@1W�;���@0�;�ڠ1@0`�7t�@.��k(S@-q'QS�k@,F��a@*��Z�@*��� @)<�zL�H@(9*�XU�@'3����@&R�%�@%��c �3@$��"Pu@$����Ƌ@$�C���@%R�kW-'@&~+h�}@&Z5�\@&�^ �H�@&`w5LiK@&CN�`��@%��c�?D@%�����t@%�z���@%�ؽ�%@%�rR��@%<�ߜ�=@%�����@%o"�L�@$$�By@"��&��@!�?�@!��[���@".��0�@"�WR�@#>|'�_@#�C�H�?@%5���L@&B�Z�3]@&�v�S]@'�Ó��@(��L��m@)�S��0@*���t@,Q:����@-�ה�#8@/��7��\@0��'�,@1d<�(@1�n���@2Bw䘟.@2�=�8M@3T�Q�@3~�Q��<@3���%&�@2�2��i]@2�hI�%�@2bP�e@2tpԈ��@2�/{�p�@3�nڋT@4X�o��@5f����@5����-@7
J��p�@8�0�6w�@?��\��u@B���-@FdZ�M��@K�荽��@M9����@N|���@O������@P(bNw�@P�f
��@P���7x�@Q�o�_w@QM���d7@Q���;@Q�ws�R�@Q�%��z9@Q�D�� @R��1�@R ���)�@Q���R@Q�O�C��@QLTq�:�@P.����@P���+�@Q_�H�rp@Q��>�@Psſ�]9@O����@M�*fin�@J�(>�P@I��4�@I5}�k�Y@I�_ft@H�=t�M@H#��@GM�@{ @FB*eV�@E��W@E5R��{@E1�L��@E_���9@E�g�M@F�yJ�@G����\�@Hy�^�`�@Ij���Q�@Ji{3�@K7�]5,@KiDГ@K �ь�`@J�{
ē�@JKZ��@IŽ�V.�@I	l$�Ӝ@H1��a;@Gs����X@F��Y^?@F�	氝@E��7-�[@Eo9��#@D���)@C��I�@CYz,�]@Cst����@C�0	�?@F��4c@J)�B��@J]A��k@J�E��KU@L�˝~�o@Ln	ǥ�S@M�v4�VU@M"�fyY@MZ��M=�@O�ùב@P+�Qt@O�u����@N>~�,O@K�	��@J�i`/@I<1�k�?@J~Qn�aw@N�n{�	@N�)]��s@M�q�H@LW�b���@J�%��`@I2`���@GRʕ��g@D�>�@D��=��@C���>*�@B҈J�z�@B��GX�@Bi�y�@B�v��@A��a�;@Ac*\�,@@�rf�=@?�|@��@=�	�ٽ-@<Zrym��@;)S��t�@7\ʇ��L@6�N�6K@66� f۸@5��ڜ��@5�l���@4�B6U@3��7C@3&]�Eٵ@2g�n��@1��m���@17_���@0p�:c�|@.���1� @-G��I��@+�����8@*z���c@)��!@(>��$=�@'LG`Kg�@&u�c��@&ze���_@&8�6��H@&AY�+@&VA��f@&����M=@)S��WX�@,���{�@/&�,�@1A�j!@2��2m@2���	@@3a>�ɭ}@3��º�c@4G���H�@4�m��@4z1�&Z�@4)W��/@3K�@dк@28����@1��q��@0pIYkf�@.U���@+�,�| @(?=�[q�@%�B��@#�i4h��@#�,�3E@"gh���e@"�a�-L@#]rWV�i@#���@$�vI�u@%�Z���@%|n�E�]@'��k%�$@(�8N��@*-�2�@+�V����@,�hY I�@.̑�c=�@0v��@1�B��@2�n^,��@3��x�Y�@5/L�r�@5��U�@5�$��
h@5��0B�@5�Yo���@6"0s$@6\���u@6����4@7�i�n�@8&�<� @8�6�G�?@9��){@:ƪ0�@:I����@:�}<j;�@<�v5���@A[�u��@G:�K���@K�N��L@Nv�i��d@N��plأ@P�L<��%@Qzv(y�@Qᒷ�VC@Rw��,�(@S+��C@S�]�R�@TY���s@T�}"��w@T�|�s8@T�!�`?�@U
ݰ�۝@U!�x��d@U'4���@U]zg�@TGb�Z*=@S�Sh�c@P�����@L��?@Kl(���E@K;�%Ɯg@J�����0@IeG���@I��t�S@I9E�#)@Iq�gm�#@H�Y
jX�@G��C�_�@F�����@FC{��I@Eߋ
��@F+��u%{@FxEv���@Fڳ+=�e@H#d�\�C@I�r�P�@K��͉�i@L�ʃJ��@LN��I��@K�k( @J�1�Մ@I������@H�I1�[@H<?4���@G���e;�@Gr�PQ�@F����@F^�f�@E�תD�#@D��a�R�@C��EM#@C'��k��@C�x^�xy@Ef�	��@FN�")�@Gq�h�@G����g@IB<���@Kb�]�@LcJ@�w�@OQ��~?@O���x@OK�Ա�@P����@Q�K`�@QLE�g�@Q�t����@QĈ���@Q�<z,G<@R&a�k��@RF�xl(�@Qy�^�A@O)b��+i@NK�M��@PAg�/�@Q8��L��@Qf�3��@P��W`@N�o���y@I�_�^P@GSח<W@F�_OU@E��`ն�@D�-	
)�@C�G,��@CU/� -\@B���J3@A��%�:�@@�o��{@@DW ؾ@?3�Q��@=� �v�@<�>vQ�O@;>�l���@9ѴiD��@8z��5B}@8�iU�	�@8�N�+�@8�K�\��@83R����@7Q�[� @6�#_��@6 /���@5D*�J@4�͘Ȫ�@49t�?�0@3����T@3����}@3c���@3{˼��O@3L��	��@2ɕ��|]@2)� #f,@1�e�@0SȊɾ@/��kN�@/�Yюc4@/���_�5@0*����@1M=�.�P@3"��K��@5C}�)�!@6�7�[�@7�xOw��@8,b9;�@8���k@:Iã�D�@:�.X|��@;(K;�(@;@�g��@;l���@:�� �$@:ƒ��-@9C-��-@8�3�@6�ܴ��S@5˺O�23@4�C���&@2�,�=��@13��?@.�F{���@+ȽgLw@(�%Y��8@'���@(L\����@(#�npU@(X�ؒ�@'��3/@@'}'��u�@'��
W�@(�P<`?�@)0H��j@)9��l�@)�&�>�@*(eHL(@+�q�Z�@-Q�����@/���lk@1��]\q@2R��yf@4F���6�@5��8�,�@5�~,��@6v��K@7U�Hi@7��)l��@8F���@8S���@8�7�L:@9X���` @9��2�@:��v��@9��gt�@8`K\Sx@7Ā|aA@:,��@@�"�1�4@E>BڱZ�@P����@Q���A�@S1
�5�@Te%um��@T��7nf�@T�>�M;@U�w�s(p@U�T�Ю,@Vtݦ�I@V��GfP@V����e@Vec`�P@Vu��RG@V��j=�@V|+5_��@Vp���F�@VT,<�@V%���%@U���f��@UdP��)�@T�uxP�8@TK�V��@S���1@RL(ˍ`0@Q"����@PT�.8o@L�z��=@KQ�v�@J��@Hu:v���@Gt�.wb�@GT;��x�@H,���|@G��K̸@GI��uy�@H̠X�@I.�����@I��V�S@Ic�*�VH@I2t� �@I�Txkw@H\����	@G�/9K@H�ّ��-@HG���@G��h'��@F��A[4@G��	T��@H�ȍ�A(@HYq��-@H!�@y[@H%��B@H>�&7@Hw�Ń��@Ig�A9k�@J�0кF�@Jn��)�@J2w=��@JdE�PZu@K�$�@LR�N��@K�3g��@K�N�gn�@L�Erè=@Nt�[��@P��"��@Q
����@R��S�}@SB{�3@S~�jr��@S��3H��@S߻ѽ�w@T��`E�@T7f��TY@TP8��=@T}�dm=p@TkO�p�@T!�:��@S��e��=@Sr���?@ST	�h��@S���3�?@S�T:���@R�����@Q""+[��@M'�1�,@Hv���@G�*1��h@F�)w��5@C�����@A����@@o �Q3.@=�ᕎ��@;;��V�@:
���@9;���+Y@9
���m�@8����C@<U�"ͦ!@<
���@<&T�z�@<�0sMX@=���(/@=�6���@>
4q0�@?��=6��@?g-�g[�@>��9ғ@=q7}�M@=/��l�@>	���&M@A��-��$@@�2��P@=��%M�@;�	Ƈk@:���/�I@9�氇2y@9��p��@9��|���@8�hd�@@8+���L�@8<���HM@9���::�@<Xp��@@��Bd@Arׂ���@B
���6@A���T	@A�n�IM@@@&SJЭ@<���Y@<��Y���@>N�)2nL@<��!�ѐ@=Pu����@=M���G�@;���bm@<7q�<S�@<V�v�a@;^�##��@:?���:�@8���: M@6���}5@5m"[ >�@4'-�N�@3Xe`Q��@2��˚�@2ș	�W-@2ᘓ7�@2�����@2I]N�)@1n�Y�@1�+��@0��x�@0��q�@0�񧭲$@0գ�RH@1��L}?@1b(�|�@1�d!i�P@2B}���@2�q���@3�1�s@5M�2��@6H�'!�U@7Unl�@8%BҴ@7��o�o�@8�_`e�@8�a���/@9S�D<�P@:0�	\�@;*RP(�k@<T
�T�q@=eN�{�@>�x���@?2�W�@?���H@@�Ⱥ�w@A|�O�S�@Er��Ժ@MO*w.��@QJ�����@S��H���@U#&�<�@U�K�/�@V���@V�<>��@Vȓ�i��@V���Y1<@Vq�\�@Vny��1@V{���1@V���p��@V����@V���N��@V��%�]@V�;�5�U@V����`�@V��#��@Vi(e�@@VB�E�-M@V��c�k@U�($�Jm@U�����M@UO2Z�i!@U� 3@T�&��,@T��>5�T@T�~��R@Se-m�zq@Sy>���Q@R�<s>-@Sm@o��F@R��p&�P@PPL�O�{@QFְxh@Pk�b�}@Q/N8�/@QscVn;@Qo��J �@QS��o�7@Rp�mF@QC$�	#=@Q�J�7�E@S�/_@R䔇���@PP){�3 @K�셧�@IE�A�@J	��|�@J<�Vi�O@I���E`@I�!%�d@II��-�@J�m��*�@M�P�}N�@Pl˸�U@L���a@N1��W�@M���%@K�@ 6!�@K!L����@K���@J%1*�*@JMM�9W�@K&5_%�p@NgL�9@S~�����@Ty%���@T�����@Tޭ9h�;@U+nj�@U47�!�L@U]%�˚�@U��ئ=Y@U����J�@U��Qow@U�o�X�@Uـ���@U�1�h�@V��oU @V3
���@V'��F�@V<I�E�@V1���8m@U*�R�,@TC�#�@R���@P+�夏e@H�ħ|�3@D�����@B'5`#R\@A�?��@?U?<�a#@=�x��pi@=�
T^�@=�遗��@D��5��@B�F�hp@A���w@B�u�7��@B� ���@B4e�ޅ@D��7�]h@D,!���U@B<�u<@BE$�ЅG@A�No/@A��U1�<@BV��d�9@D�i[�^@BQ�����@@�����@@��(p�@@_[� �h@@�$���)@@�]�{V @@;	"M�o@?����@?E��'�)@? �?HD�@? ЇЫ�@?���h�I@A�i��@Cy��F�@ED�����@E��`*o�@D��X7߭@C��W@A$�\��@?K=���C@CN�U�z�@B�@�(@@���i�@@跒eP�@@�hY�@@�-STG@A���J@AӃ��g@Bנ��@AZL`@@�5刦�@?�Y�\&�@>��u�:`@>l��J�@=���+@=�#�i@<��|%$�@<�x�As�@<iE:B�5@;{�-_o�@:zZU��@:u��l8@; <�$�%@;P(�x6@;4�ӿUO@;/�8��@;N,ж�|@;`����3@;2���@;f�f��@;"��s��@;#?�7��@< ^��B�@<ص����@<��C�]�@<�@;��1P`�@:i�s$c@9�~�M�@9��kJr�@:uv)��@;;Y��@<E?�.� @=5+��}�@=��\�@>?د8��@=�
��q�@@�͊�@Byʈ�A@C�2M��@F�� @Ph��]i@T�����@U��>\�@V"�@`]c@VQ�����@V��T���@V؟�u�@V�h	���@V�xS��@WM8LG@Wd;'Y�@W&[�i�@WE�6;J�@WS�G(h|@WP��[�-@WSQ��@WS˭�@WY�ѷ9i@WO�����@WG�ׁ @W9PY��@W.`+�@W �Pʯc@WI�c@Wx���@WƗlw5@V�ؙLc�@V�B�u@V�DгZ@VX~I�>[@Vm�D�@V)��� @V*9��3@V2�����@V?�Z��@V%r�~O�@V��L�%@V�f�t�@U����<@Uty���@T�.�"��@T�.��}@TĨ)�{U@T�1��X@S\z�r�X@R�VQ��;@R}��/@Rw�S{��@S����,@Sms���@RΩ�c�i@S&�WG)r@S�-F���@S�GH��]@S��1{ҹ@Th��->a@ToXٔ�@Tzh>��_@R�r�լ�@P�y�Ԣ�@Nj�p!�5@P��~<Aa@M�<iJ�@Md}���y@O&� �!d@T�:Z*@U-�K�D<@U~1���p@U�V����@VgP�5@V1�lq@VT��,@Vh�,�@V��Exx@V�	hqN�@V��� @V໹�s!@W
�>Y�@W&w9��@W&d�Ȕ�@W-�m��K@W1�����@W ��e@Wv��h@V�dTѓQ@V��f�X�@U�[g�p@TSD2B�{@RT�f0��@OR/�p@G�$���@E�O�F�@DZ#4��@ECP��z�@D��\I��@R\0Do��@R:ӥ�w@Q�Bmu��@QZ�4S��@PВ3�O@P��k9E@P���K�@O�z�ʊ@O:v�L�@PFQ�>�@QU����@P�����@Q�IO��@Q��5	*@P��H*�a@N�.{��d@L�3��7@G�B]U��@GC0���@G���l4@E��3��@B�6��d@Bru�;�@C�T4�<@D�d�e��@C#��+�@B밶�o@C�x�.�\@D���y@Eaj�4@Ei����)@EC�_�@D�WDd��@D�-d�@F>z�[��@J.M��l#@JӜ*8�@I�~�@Hi8Ӂ��@ELh=���@C��#�]�@DC@��=@D�^�2˵@E+&��@D��Y"۝@D0��0�W@D)�*MGT@D�?K�Z�@E�U��NI@E�^��Y@C���yZ�@CS�\$�@C��h&�@D#�W
�@C��w�7�@DJ����@D!��/ʼ@C�L�NWS@D/,m�E1@DV\|C�@DG���c@D%rrm)@D@�0SF@D[߈М$@C�Ax�k@B�]I+�-@B���G@C��vs�I@B[�F��@B*>�F�u@A�'>��<@@�b���0@?s߽��X@@%n���@Ae��Y@B���#Eg@DX{ʎA�@EJA�Z�@E��*��q@GJ�px�X@JL��;@P����@Q�m�7��@R���iNt@TN��@Ur�NV��@U䶶d�@V-�w��@Vc��kA�@V��I ��@V�/n�?@Wl���@W*7ѧ�l@W7�� @WA	�S@Wc'A�T@WyDD�8@W��iR�8@W��<�ɨ@W����@W�-�+��@W��ԑ/K@W�/��_|@W�uP�}@W���`�@W��d@W���-��@W�7|��@W���tL@W������@W�����-@W�u��@Wò��÷@W������@W��p��@W����k@W�XTaZx@W��>�Ja@W����I�@W�v�@W���X�@W���M�@W�-��W�@Wy�T-@Wn�J��@WXiñS@WO�6U�@WAۃ�@WNў�@W���}�@V���՞X@V��#{�@V�1]�̴@VlqTkW�@VE
�'�E@Vf�@V@I�]�k@Vp�6f��@Vp����U@Vm�x5�@Vv�O��M@Veȱ�)�@Ul���ȩ@T�h��@S)�Z�@P�E�;@Q6R&��=@O�/���l@O ���\@R��S��a@U�Xq2�@U���4��@U� 5g��@V&"7�0)@V]nH[	e@V�'FH�@V���4�@V��(�@W~y�8@W:����@W�S(_�@W���E@W˻<��Q@W�1᝛0@W���a �@W�߁@W�<ʢ�@WşnG5}@W�=��@W��O��	@W�B5M@W~OzJQ�@WN\*��x@W
�i @Vyŋ��@U��o;��@TR�G#ޤ@S|�&�4_@SNǊ/H0@Rۣj�<4@V���}rl@V�����@V�h9R�%@VϦ6[h�@V�!�=�@V��ܐ��@V�H<l��@Vt�±@V��b�o@V����@V�3�J�q@V���\d@V��DI?�@V��N�@V�u ��@VAY�v��@U�ڃ��e@U��M�@Tg����@Sÿ� ��@R��[<�q@P��i�A�@M߸��@J��^���@I���O5�@H)�X��@F^A���D@HjXܟ@GU�:�@G$�>��@Hj�O��@I�e5�@J9�B=�@L�%O���@O��1X�@Q� ڸҳ@R�.��K�@T�[��@TagTTT@SG�ql@N�Gٯ@K�J���@Hm�Wo��@GO�S���@F�����@E��?�v�@EW�bs��@EVEx���@Es*��z5@G����L@F���	Ml@E���	dm@G-����@H�QP �@G����5@Gp�`�	<@H�οPk�@I4[�_>S@Ix�:)�@I�����y@I��v��@H���W�@H{Z{�L�@I��\��@H��S�@G���-�@G�c�[@G'����'@F��p	@E
6����@D����D�@D۶�߯v@G�?MR�@K48VPl@O�\��@P����pY@R �:�@Rח04��@S��xS�@T�`�|@UYj)1@Us���-@U�����@Uȵ��0@V�uǻx@V_��`�@Vu>S��@V���3٠@V��c��@WB�uE@WU�~A�@Wg�y�k�@Wk��oS@Wq��W�@W{���\\@W��c��8@W�r�>`@W�B��s@W�U�H�9@W��b�y�@W�'�A[@W��.1��@WѲ"�@W�֨�7�@W�l���k@W�=��@W߶�r�@W���[@W�<�d�@W�2sc��@W�s`�#�@W��F�>%@W�#�:@W���V�=@W���c@W�l�s(1@W�&U��u@W�Er���@W�q9Y�@Xt��)@W����Uu@W�o�By@W�
zh�@W����@@W��X�*�@W�A�/@�@W�NH�@W�ȏh@W܅ă�i@W���|��@W�w5|G@W�9�k1@W��ڈ)U@W��$�!�@W��z��@W���h@W�e��@Wr��T�@Ws�xs`@W���mvM@W}�x��@Wi/�@W/���@V�M���-@U�:� ��@U5��(@SΎ���H@R����S[@T*b$���@T�<�8�0@U 0�;��@UbӖ��@U�r�@V!�~�@Vx ��w�@V�k�24@@V���z�@WA��<�@W�nn��@WÌ��Q_@W�W<-d @XY��K@X���@X*�W|�@X}��|�@X�Y��(@X����@X �9�Q�@X%�D�5@X  V��@W�1Y�=�@W�y�^�T@WӳG���@W���Q�x@W����yx@Wa��b�@W!�Cp�@V�v�^��@V���W@V�odǀ�@W����M@W��+�@W�����@W�|=�Ip@W�H��/@W�5�X� @W��-��@W��t$S@W��_�@W�`+(�@W�^��̀@W��%���@W�d5@W��u%@W�ƌ2��@Wp����@WW��VU�@WCs��T�@W)���4�@WlO��L@V�+֟a@Vx_s��[@V0#�G
H@U�0���@U�Rh�7@T��� @R��,�p@P�k|h�M@QAdl�'q@R����/�@S�5��L@Tq�k�s@Uּ�E@U�P?��<@V%�,�\@VN��@V~�)��?@VƮ�c@V�#HV̈@V��#�@Vo�Z��@U��{܁@T����I�@S�8iJ��@R�\���@Rq,d�3@R;�u-�@R��Po�@Pʑ!�+@P)H�p�3@Phb-�I@N��=�=}@Nfꨔ1@P X5��M@R.0�*� @SKːݸ�@Q��=ƙ@RZo���@SAc9�@T�d�C@U
�g�;@T0��K|@S�?ν�4@R��@S�g�dg@R���c��@R?.j�� @Q�Rd��u@P�4�|�@Qx�?�NU@R���9�h@S��4�@T��Z���@U��-�t@VAyZ��g@U���w8@U�r�� �@V0��V*8@Vl���x�@V�ptM��@V���qm�@WT�o@W;�׍)�@Wf�&Bw@WzF6�&�@Wvo��G@W�6	��@W�mz��@W��I.@W�����@W� zh�u@W����Y=@W��/C�u@W��,b�@W���.l@W�{NGdS@W݀y+%@WߎH"`@W�Lr�(@W�y��@W�#�^l@W��*�=@W�%)�E@W�Vo�@W�"��{@W���ZdU@W�83@W�W�l��@X �0m�O@X�v�1�@X���@W��2�D@W�h���@Xn����@XaX��@X��y<@X���x@Xc.�/ @X��㇧@XV��@X
�+Q%9@X��8^�@X�+��@W���	ѧ@W��d()?@W��ܑ�@Wށ��@W��V%�@W�R(�q�@WǏ� �@W��?fl�@W�z���@W�c���#@W��v��@W����@W�0co@W��C�$@W��֘��@W�f����@W����H�@W��nC�e@Ww�m��@Wr��@WQ5=Ԙ�@W�H�c�@V�Ic�*@V�Z�@TѴ�tYb@S%0�d�@Ssed7�C@T���&8C@U��._@U��W��@V��݄�@V���.�)@V�y��@W4\�A �@W�9LՑ@Wн���@W�az�@�@X �/�Xh@Xk�y�@X��C��@X)�yxP3@X'�F�D@X �⢪C@X/�K��G@X^O-Z7@X�>.��@XP3�QU@Xg(S��@W�k�jf'@W��_[�@W��֋@W�	֐��@W�;��@=@W�d��ͤ@W��\�b�@W��9l�@W��X��@W��?@W�$��5@W˲��@W�|s��g@W�C�*^L@W��66\�@W��ڟS@W�i=û@W�/-�b0@W��s�y@W�>9~��@W��'s�@W�񑰚@W�y��@W�!Βc@W���/w@W��C[�%@W��L��@W�a�B��@Ws6���@WpV��C@WW���<e@WS���	 @WM��'�@WZ���T�@WJ�����@W,%Q��l@V�gȱ�@V�]�o�@V����@V�\u|{@W��:��@WF���	@We&���@Wt�D�=@W�k�Z;@W�N"R��@W�e�@W������@W�r[W�@W�7�7u@W��ߞ��@Wt�ן��@WM��:h@WAf�{(@WCl���-@W;�.e��@V�4��}@V�a��+�@V��$�@U�`�~ek@V ^>l9�@V,K��@VA���@�@V��WaQ@V�*�xo@W),�f'�@WF5B�x@W:7����@WU�6,vQ@WyOyAn�@W��t@W��B5�-@Wrn��ka@Wb���oC@W_X����@WN�A*�Q@W1�0�j<@Wy0ާI@Wd�pVe@W4�$Od@WU)0���@Wr0W�<Q@W��v �`@W���ƞE@W��2��@W�{��k$@W�j��Y7@W��)x.�@Wŏ])�@W�N��re@Wǉ*�@W�&y��E@W�js��@W�ڣ_{@W�2���@W��$1�@W��ɛbx@W���`@W�9��Q�@W�=٧�Q@W�	L��W@W��d�C@W��wu@W����^�@W��*�i�@W��=��@W���@W�Q۰�@W�x�)�@W�m�f�@W�^�N;@W����@W�kVD @W�<m�@W���)c@W��j~�@W�&�fm@X����5@X��V�@X �3��@XuA~?@Xpݢ��@X�Xo��@X ��Rw@X��[)�@X�
�Ӱ@Xe4+�@X�S@W��$��@W�@���k@W��m��@W�L=G@W�LǴ�1@W��h]�@W�7���@W� ����@W�76)��@W��CE��@Wx��!s�@Wz�ރd#@Wp\�@]@WtҖYX�@Ws	i�4�@W^�y�BL@W``�CG@W]M�Z�@W_ 'AT@WL˯I(H@W#�%��!@W�%�M@Wz1Xa'@V��"/l@V����4@W���#�@V�wB{9@V�
��@V�4HT@VD�����@T�r {C@TV�5^l�@S��z��@U%4T#|@VK����@V˪�N��@WC��6��@W�q:~�@Wށ+2C?@X7U��@X/�`@X%MX@X(E$��9@X3�{x!@X;R;���@X-�(��@X|���@XsŃH@X }���@Xc�ϓ�@X	de��@X�BA��@W�V����@W���u�@W��U�w�@W����@W�SHE@WД#"r�@W�9��fE@W��.F�h@WǱ$��@W�0��@W�%ʐ��@W���,�T@W�\�@W����D@W�w��d@W��y@W����`X@W�rU"��@W�v>U[S@W�� š�@W��?��@W����X�@W���Q�@W�����S@W���[@W��3Z� @W���{�@W�KEǄ@W~��&�@Wt�l��@W~1�i�q@W��i\�@W���E��@W��s��@W���\k@W���>�@W|�ȁص@Wu!M��@Wv�{ �@W����@W��X0W@W��T�@W�r9�@W�yhc&@W���6�@W�J����@W���f�@W��Pu�@W�n;�@W�e�b�@W�Iח\�@W�`vZ�@W�u�@@W��Y�@Wǁ1�/�@Wϗ�`�@W�b&n�Q@W��4BÛ@W�T�n�e@W���#8;@W���l�W@W�Ї��@W�P��0@W�Pov@W�(#�@W�n·�@W�z�x�@W�r��M@W�+��%@W�5��T�@W�����@W���id@W�~.��S@W�%����@W���@Wy��PV�@Wl�ء�K@WM7QI+@W5�\J�}@W;;���X@WP��
�@W^�vr��@Wr�� ��@W�N��@W��|�+@W�᤯�T@W���gAm@W��K^ߓ@W��r�W@Wϴ��$�@W���@W����d@Wŧ�)/�@W��i"`@W��m���@W���X	@W�}z[�p@W�hI��@W\��c�@W>[�$8�@W.�E|�+@W.����@W%����k@W5���(@W2+�f��@W9=�:EC@WK>d},@WZՑ٬L@Wz�	�@W����.@W�����@W��ۿ�0@W����qU@W��~�۬@W��R|u�@W�&>��K@W����P[@W7�)@W�q��p@W��r)�@X �$���@X�eǨ�@W��\�l�@X�6^�@Xp�)E)@W��@Б�@W�	��F�@W��P@W� �T�+@W�d�&�@W��=�k�@W��0�t@W��NM��@W�e1��@We��9@WQ�Z��@W5!`Uө@W&�br�e@W�C:��@W1�R9a�@W<q�`f�@W70��^$@W���r	@V�K~Ed�@V׽�U��@V���Y�i@V��ck_C@Vԟ�Yv@V����ձ@V�"�Vd�@V��D��@V����@V���@VZ��pw�@Vj2���G@V[�~'h�@Vyq��@V��;�i�@V��-�@V�Deߗ@V�"���L@V�U
*@V��vp@W3��9(�@W��ܯ\5@W����%@X �!�q�@X-=��U@X6S���S@X8��+@X6�% �@X.y���@X5buO�u@X0G>��@X��|"�@X3s��s@XҲZ��@X�t�@X `�@O@X��P�@W����S'@W�/G�� @W�ZP��@W�e@�@W܅����@W���!,�@Wѹ|My@WÙ��$�@W� ���M@W�{#�}@W��k�ĝ@W���n�@W��U���@W�T�o�U@W��n	�@W��(ƲA@W�
��*�@W�93��/@W���oX @W��M@W���|��@W�3�䃅@W�Dϒ(�@WĆ|,�|@W����8S@W�\^��@W�E`�@Wt,_�@Wl���{@Wb�m��@W^@(E��@W|	1m��@W��i�d@W�*+�	S@W��j�4G@W�##W�@Wx�Ǩ�T@Wu�b3�@Wr]Y m�@W�kf	�@W��I4L@W���~Й@W��^�b�@W�H���@W�=�	@W~��d��@Wu���U@W�ȃ��O@W����@W�h�H@W��|@W���Q�@W��<��@W����}�@W�/��@W�赂�?@W��-��=@W�KfG�U@W�;~w�@W��$�h1@W���}@W���;�@W���#{u@W~RI*�G@W�k��3�@Wr���W�@WuM�[@W{${z(e@WR����5@W@����@W9��ӹ�@W%Ex�@W$5U3@W�<��/@W-I�@V�C��@VၖH%K@V�tH���@V���h��@V�#$YӋ@V��!ˏ�@V�Fo,Y@WЦU)�@W�
X�(@V�S�y?@W����%@WeA��hC@W�~�1@W� qG@W��S�o�@W�;- �@W�"�Sī@W�D�t� @Wy�уm@W{�F���@WhwJ?�@W$�O6�@V���7��@V��4��4@V��L��\@VR[�o@Vp��Z~U@V�_m�0@V�"�S2�@V�'bfY�@V���@V����5@V�eH+��@W�B��@W%��/��@W#揌a@W�҄��@W
�{�V�@W21��/A@Wg~�Y��@W�S�)@W�ݏ g�@W����@Wߑ�e��@W�t,�k9@W�ܠ���@Wݥ��X�@W��ϣ�@W�[�c@Wۗ�u�`@WШF^��@WԻ�vl@Wґ��m@W�b�^p@W��Z�p@Wp�TF��@Wh�n?@@WK�٠B�@W>�=Aq{@W��+�@V��d�+�@V獼�T�@V�mǚC@V�7�@V��3b��@V����E@V��R�F+@V��T0Vu@V�)
@Vv��4.q@Vy(�S=O@V��Ĳ�@V�嫭@V�ҲVe�@V�$���S@Vx�4�@V:־ ��@VN�_|b�@V8��(@V�
�4@U�CU�_@U���wM@U��*�i@V���d�@Vg3ش³@V�4�ԁ�@V�&q�(@W n��%@W.M�umk@WY��4!|@W�����<@W����y@W���*8�@W�ԋ@X`��M%@X05�@;@X/��2U�@X+��Xk@X#�\U�m@X!��]@X���@X�+�[@X-�?kl�@X%�ч%@X��]'@X����@W�F���@W�� @W�( �m�@W�b#
�s@Wר�~e�@Wĳi��c@W�,�/r�@W�_?�E/@W�)�y �@W��o!�@W����E@W�E���@W���w`�@W�����@W���b�@W���0V�@W��a鹣@W�慸��@W�2[�t@W��ݯ@W�<�DP@W����1@W�!a`*|@W�&CD�@W���G�@W�M
��@WcU6��}@WP�uق�@W-1�K�@W  ���@WDU���@WgbZ�@Wj��x�?@Wp�(�=�@Wm����@WJ����@W@v�%�@WO��ϼ�@W\j�gz@WR�\s�@@WXdJ�:�@Ws����@WQ͝"�@WA�G���@W=�"��@W6����w@W8�v�(@WPR�y=@Wj�~ײ}@Wo�(U�M@W���<��@W՘w^U@W��5�@W�ckw�u@Wk&��'C@WFR7��@W/��Ӑ@W�k�\t@W�9[_@W�����@WM�jD�@WR���@WM��@W:�7���@W8riM�P@W+oNd�@Wu�j�@V�v�*+@V���X@V��7��@V������@V�zN|�e@V�X��h@VR��Px@V7�-�K@V*�@4�)@V.^�GOx@V.[6u@VO�0�{�@V4Q���@V7`p�@U���}�@V]2EQW@VU5G���@V��pK1�@W����@W��'��@W �L�w�@V�u����@V�ԋ�&%@WN��nK@WQ�Z*�@W1lVI�y@W	0�,Y@V�h�҇@V��V;P@VR$;@Vw9���@V{sO��@U��4�@V�����@V�ɀ��@U��ô�p@V�l D�@V���@V;ق �@V^���T@V_�;��)@Vr�)�=@V_e�L�@VkOL���@V����@V�E�(U@V�}VpQ@W�u��@W<؜LP5@Wp~döq@W��\�@W��h\�3@W���z�t@W���Cp@W��y�|�@WΏ�e�@W�{!��@W�)v���@W�͸��p@W�`�ì@W_{��O@W@��@W�np��@W>*Cc@WT��/S@V���d�@V�e���@V܊q��L@V�|�h@V�j�ŧ@V���:��@Vj9��((@V^���9�@VHo���@V%@E��@Vd��QU@V*0.�L@VO(�o��@VS�d4@VH�r,\�@VU:t��@V;`��i@V!|�l7$@V=QT�Ƒ@V>4���@V?�2=3�@Vɦ+�@U��qiH@U���@yh@U�]4��@U��?zn@U�e��U@Uά�+@V	Pݿ@V_�u@V�{I�@VŠ*��!@W1���;@WQ���l@Wty����@W�7�w��@Wĥ߉@W��e��@W��ie1	@W��:�@W��Ψ-@W���ř@W�J��@W͞^�ͨ@W�)Lc@W���^&@W�Y���]@W����!@W�H˰.K@W�]jZ�0@W�~6;@W���ҳ@@W������@W�=3 �E@W�a �u0@W�����@WiA��w5@Wo��ot@W�_N]��@W�x�F3@Ww��@Wz
Zy�@W���3��@W��1�@W�����@W��g�@W{�V��@W{ �{�@W����@D@W��ڵ@W�Iy@��@W��c.z@W�p��UT@W��>^�@Wb�M8�@WP
���@WR�5�(@V�
ՙ�@V��¿ge@W����@W5���@WR�Tpf�@WT�}Z�@WO�m�@W:�v�D]@W#��-�@W!L¥�@W��9�@W��\[h@V�
�<hh@V�U�6��@Wn9���@W
~ǘ��@V�� ���@V֛L��E@V�"A?�@V�L�
�@W^�_ �x@W��KxmL@W�əpC�@Wt3*�S@W'�N2L@V�� �D@V�]���@V���n@�@V��6L�@V����-�@Vq��� I@V�W�i�@V�u4��@V�k[y�}@V�@��@V7�@W(#"C6@W
J��$@V��
'��@V�sxQ�@Vx�:�p@VN�5�H@VhG��@U�1�@Uᛍ���@U�b��� @U��+HV=@U�u)~�Q@U�x�2@U��:]�@UEt��oO@U 7`T�\@U�Q�Z�@U7�v"��@VV��'�p@V�Q�cd@Vu)�9@V�S����@Vt�u
:`@U�!Wŝ@U��T��@VOrl�r�@WZ�[�@V��z7�@V��Qo!@U�\rTa@U�Gi='@U֒���	@U�7\:�9@Vle�a�@Vz�EF[@U��@���@U��5M�@Uu�M�%@UaY<P	7@U�ǉ�}@U�p�w@U����a@U��hP��@Uɼ����@V#�Q��I@VHU��y%@V`a/*�u@Vy*��/@V����@V�jA��}@V���D��@Wa�" @WuSw��@W�s��s@W�64pRt@WAv(a-@Wyep�@W*����@W8c�Y@WC�"�t@WO��VW�@WZ'�cgQ@W6�F1�@W�֊Pc@V�S���@VŜ��@V�jC*�@V�}7�c�@V����[@V��C�"�@Vk�YM�p@VNs�'ȣ@VAS5��@V%b�m@V��5�@V��}@V�T. �@V�'�K @U�u7�E�@U�4h��@U�;���@U�0��Ad@U�*@`|@U��wd��@V�x��Y@Vd�rv�@VH��<*q@Vp��ץ�@V�d��a@VA�*�~�@U���KX@T�~@�c@@T��b��d@T鱾��@U5�D�(�@Uf�;~[@U�j�S�@U�+޷Y�@V(/3�s�@V@n~��@V�8��Ӄ@V����?@V�Ü��@W#���T@W^��@W� /��E@W���m�L@W��-�%1@WQXC㘻@WX����@W��U�{�@Wߒ	2[�@W��gI(�@W��
ǹ@Wʆ:dbX@W� WR&h@W�i�4�@W�+͙
?@W������@W��!˴�@Wm7aR7@Wp�C>4@Wq�����@WO���cX@W9LE��@W-����@W3��]@W3M����@W|\XO@W�s��@W@
�@��@W`��O�@Wi!�ݰ%@WPft ��@W3��1�@W/���D0@WD+<��<@W�M#j�@W�$	a�k@W��Ey��@Wp�H��@Wm�,�]@WSr ?~e@W�	4�T@Vʨ#��@V�L��)�@V{O����@V�.�'�@Wų��h@WR�q-@W
]�S@W"y��D@V�V���@VڻW9�@V��q���@V����p@Vź��@V�B'@V�jR1^�@V�:W��@V�{���@V�"`��@V���9� @VJ��å@Vz&�@V�x��@W^��ݚ@WE��9�@W$�Ϸ�@V����@V�q�yi@V�|@�o@VL��ݰ@V�r	@U�Ȯ=��@U��U[m@VT����	@Vw��Ő@VJ�֨ӧ@VP��I5@V�����@V���h@V��<'s@V��ѐkS@VnyKdr�@V;I��#@V�=b��@U�̓5E@U�&)#n	@Un�a�D@Uo �J�@Uvqpc(�@UrI��@U�,"@T���6f@T�� G�%@T�_�V�@U���U?@V�>��}@U��##ǩ@U�?�a@V�	�@Uː�2f�@U�O?�-@UݻN�Ci@Vr�%!�}@V]8�8@V�)ܨ�@U�t�O@Umh�r�@U��B{)@U��mW	@U[�V�@u@U�>)3E�@V$T�/�@U�4e¬_@U�R�D@Ub�pw��@U!�w�\�@U�hj�@UO\�c{@Ue�7�ߛ@UrR�:�l@U�/�_)@U�̍���@U�=�|�@V�|7Z@V2��qD�@VQ'�Ћ�@V�����@V�T�h�@V�w� +@V��1]�@V�&w#I�@V�y�n�@V���t� @V�vMa8@V����a�@W%��O]�@W1-��e@Wf�;@V�ּv7�@V�. ��@VQ��I4@V�r&My@V[Kq�T�@V�V�A�@V�SZ�ٙ@V;$4�V@V;�a�@VG�1#@U��N?�@U�=o�#A@U��J?@U�����@Uӳ4!��@U��2���@U�H��@U�[f�O@@U�x3Y_�@U~�Q��@Ua�g�o�@Usw���@U��&{�@U�=/M@V?ױ�@V��mw�%@W)�m��@UmkYf�#@Ss��Q?1@RV89��U@R��O�@R���UP�@R�&�jd@S���V	�@T'�(*c�@T�<��`�@Tˎ����@U��20�@U?�#�@U��ғ�@Uޞ�`�@V>����@V|g� e@V�-I��@TL�t���@U#�
@V3Zو@V~�;c%@V���@Wf�[25@W��t��P@W�_d�m�@W��v�5�@W���D@W����@WOZ[k-@WJ��z��@WA�� ��@W&���[�@W6(���@WO5l"��@WMQ�*I@WR��*S@WUT����@W*A҇u�@WK�~��@W[TS��@WF�w�!@V�ͨ�Y@V����@V�\$g��@W5�f�X@Wк�@V��b��@V��O��@W��<@WbI��+@W���7�'@WW~�TN7@W-��j��@W03\��x@W��#u@V�����@VX�p�@VU�#x@Vϱ��@V�{��@W𑞨�@V�\�h@V���k@V�sjT�o@V�vKPT@V��r4�M@Vuc�;@V�z�\��@Vy��V�@Vq�L���@VQ��}�|@V6�~���@V�����@U��2з@U�4��?�@U�O.�@V!K�h@@W8Y|�jD@Wn�S��@W63�	��@W>d�+@V�HG�d@V�g�rh�@V'��I��@U�"�b��@U�2�M	y@U��YA��@U؉@�@U�>!�,Y@U�e"�-	@U��e�5@U�B�Rڼ@U�x���{@U����P@V�a�/@V;�fmD�@V"��E0@V(]i�@U��z��@U��'�Z}@U̢�B�@U�ז$M�@U�E�� �@UR)���@U�� �@T�:Y,x�@T��w�@U&�(�@@UP�o�@V����@U��B�t@U;5w`�@U�!�;�@U��OC�<@UP�B��@UXe27�@UV��N2G@U��t���@Up�~��%@U)��o��@T���֟@T�ۂFsZ@T��Ć@�@T$V�^��@T�D����@U.po���@U�>C��c@U���@U�H���(@U����=@U/9S�;Q@T�EA��@U"�<?��@Uf���t@U)�9�+@U��hYp�@U�Z�T�M@U�J�� @U�n��@VBf�P�@V?%�L�=@V;��6x�@V&�4�&o@VF�:��@VU~�ƌp@VO�`k!@Vx"�D@V�TY[�@V�P]X�@V��+���@Vz,I~D@V|Q�Q�@VY���[@V@�K���@V���@U��V��G@Us[�$��@UΝ��W@VE㿬�@V(7���@U����k@U�G�I�@U���2�H@U���Q"�@U}�(�Q<@UpA�4�@Uo,`λ@UpNeW�@Uo<��4@UW�PF{�@UGI�?�@UAk�4��@U6�6Jz�@U�9y�@UI�k��@U����@U�X��@V���E@WM�b�@S�ʰ�F�@R�
*�ӑ@P�K�'d(@N��M�?�@PF����7@Q,�QH�A@RĳC�@R��/l�6@R�$k�q�@S�x7�@S�[A��@S�� ��}@T6"*U7@TJ�'b��@T�"#�j`@U8�d��@U|�LsVy@U���.z @U��}@U��iě�@U�����@VG�L@V�q6��a@WPy�,�@W@//Om�@W8��qt;@W$�b��@W�b�-@W@%�j�@V�Չ���@V��7�@V�k��@V� ��-@V�ݗ�H�@V�UU_4@W5�o���@W>��/��@WL;VSp@Woa�Y�@V��b� @V����@V��Q�e@V��.x�@V���6@W�槵K@V�䯕�@V�U�X`�@V����u@V�p��=	@V�%�Om@V��:�i	@WF)%��@W��yԝ@V�n�I��@V�=3�G�@V�۴Ӏ\@V3�ɒJ9@VOx��@VDm�P�+@V?�����@VRA!݈a@VQ�_�Ա@V)|c���@V8�%��@VH�j��@V9�$_�+@VA"���@V,ݶ(�Q@U��/aȍ@Uъ���@V/OU��@UQ)�؁)@U5Qk�@U$
M�@Um}fC�@VS��f�@V�bPu)�@V�>�6��@W ��#�9@W��Ѿ�@V�əxl@V係��@V���L@Vg�DHx@U��15��@U��=v��@U����h@U~��@Uv�X�E@Ur� )j�@Ut+?c@U� �c��@Uo"L��@Ux9l�G@U�8�0�@VV�-���@V%�>7_@U����@V���79@U蝎���@Uڞ�қ�@U��\I|C@Ua��0)@U���M@T��z9�@T��K15h@U;�y[2@U�_��1-@UbK���@T犉y�#@U��13j@T��z���@T��/��@U�ӌ�$@U ��(_@T��A$i@T�2Z/a@T��kW�@T����@T��>y`@TV���@T�M|���@T���e~}@TO۝Y@S�#�L�@S����R@THd��@T�_wӁ@U_R�Ի�@U�+���@UNb���@T�����@U����a@U4�$�߬@T�Je���@T�/ywC@U%`f��c@U� ���@U��]*�@U~�ht�@U�&~�@U��\Ĩ@U�3��@U�=�'��@U�lRZ�@U���r�@U�w|>@U�Aa��i@U���x@U�<��@UԠ����@UӾli@U����@U�`	�k@U����"�@U��p�/@U\d")�@U/N:��@U4<p��@U�悊��@U¨M�Q�@U���U+@U��0��@UeNK7��@UH�70��@U7��dx!@U=r���v@U7�%v�?@U2N8,L�@U5���@U0��P8�@U%v��Ia@U.Հb�@U%:���;@U%{Xz�@UL�sK�@U�c5��W@U�9�� @Vtm�#Ǹ@V�W�!��@O﬇q	@P�LrDC3@P�H�j@L�ϭ�ǻ@Mi��F�@O]V�u@P.�|г1@P�J/�f'@Q!w�j��@Q�ԼRP�@Rt�ֱ@R�rtG��@S/���x~@S|J���
@S�F���k@TLP�Z��@T[~	�[�@UNP�\`@U��:4@U�[x+@U����@V0��m�@Vn&j�W�@V�ѵ��%@V��ucL@V�J��@V��Ӯ�@V�Ȓ���@V���-`H@V�`����@V���V�p@V}�[DT@V0m�q.�@Vn�ȉ@@V��@:m@V��4|u@W	[>���@V�9p7@V� Q�S@V���	��@V�l�%��@V������@V���yw@V�xi��@V�@�	1@Vj�rN��@V\kچ$@VF��4t�@VX��}K@V�w2��'@Vr����y@Vί��_x@V�H4,d�@V3��{;@U���
�@U���Ac�@U���ڕ7@U����@U�.b�ӝ@U�f.�h@U�����[@UvG3�T!@U��P��@U��l@��@V�H4�q@VJ��ft@U��M�ˏ@U����E5@U/~'vt�@U6j{���@U�vW�us@T,*�:�@S���{@T�=@ՠ�@Uڌ��@@V)"����@VNV�>�@V6�q�+\@V����@V��xP�`@V����Hk@V��y1��@V4��4�@U����@U��nEE@Ub�E�O�@UM���@U2s7x��@Ur��U@U�ײ�j @U����d@U��S�Ɨ@V���@U�?�X�@U�j��D@U��f��@U��Z]�@U�C%��@U�w���@U�58��E@U��_X)@U��� �+@UT.�=�@UA�k�@U*� W��@U?Y&M@U��Uy@T���l��@T�-����@T>�s���@T4����@T#.72p@T@)L�k�@TV��tA@TDL���@T<�:�l@TCf�(=\@T/��b�5@TX��5@T��cM�i@S��xu�M@Sg&�@S�l��h@SG��E�@S	L����@S� �ץ@S��3��@S�r�އp@U;�t�@U^Y�"�3@U'�*�	2@T����@T�m�(��@T����@T��9}�e@T���8�@T�ʩT&�@Tܚ���w@T�G�=��@T��!�{@T�3���@T��z��5@T��o��@U)�cڀA@U(�Gp��@U&�| )@U$Kx��@U!��AR�@U.�qn��@U+��U�@U*.0D$�@U-�I��@U4�3ii@UGm�;��@U7����|@U5�$8h@U@�P6��@Un�"�5@U/��@UQ"�.�@UKz�&��@U;N4��@UBM��:�@U%wh�\@U
b@U�pۻr@U
�6�-5@Uk�_=k@U�j�4@U�a�Ka@U�l�&@T���w�@T�E��q@T�2�Z�@T����@U�s��9@U.�ݟ�d@Uz:3���@Uk���x@U��]-�@Po7:X@L�%$�@LK�WI�@J�lR��@@I����@J��-e�-@L��:��@N����E@PI�����@Qb�&U�@RF�����@R�ͧ�w@SB�!!@S�c:}x@Sإl�E@S�����C@T|���J@T�dQk@U�P�1�@U ��"Y�@U1xI�)@Um����@U�� O$	@U~ҡ)��@U����@UᲭL8�@V=�H�!@V?.\�E�@V5hkְc@V:���h@V���b@V'
���@U�Fz�D@U�1W(k@V������@W����@V=���?�@VAߜ�80@V�)�O0s@V!a�c�S@Vj�@@V�S�k�{@V��͂��@V�0�@V/(U��@V/�(?�@U�f�� @U���;�@U��p��m@U��S*�@U��w~��@U�(o�]�@U���|�e@Ub��}(�@U@���ʌ@T�t:n�\@T�X���@U?�I�f@Uy��tC	@UaAO��@T�>��_@T�[C���@T�)4��@TɄ���'@U�j!��@V��K�@V"fG��?@U��\��;@U]�=� t@T�<�M�@T��8x�u@U �Ư�@USS*oYu@V)1j�4@Vy��y@V�`���@U�޺���@U�'��@VED�ۉ1@Vuk[6�#@V;�_�@V�E���@U���m@U�ֵ�ם@UU�4��M@Uf��M@Uķ}2�@U�&/){�@U|��b]@V#/Qn��@V�~��@U�����@U摮 Uc@U�`��@U�:���@U��+�7@UD���Q�@Ur�~^z�@U^/χ�+@UD���@Uu�f�3@U~\��l@U
���@T�Beʄ@T��7��@T��ʑZ�@T�A{�r�@TW����@S���pe@S�����@S螄3�@S�}4m�@S�oy�@SonA�w@S�(���^@S��\N�@S��I6��@S����M@S�W�L�1@SP����@Q�ѫɯ@Q��F,#\@Q���=�@Rј��]@RAS�,y�@R���E+@S2���@S��؞(�@Tc4]Q�@TF��y@T*���@T@�P�.�@T`$��,@Tc]��@TZ8\�	@Tk.-�v@T\H���@TX���s@Th��m{<@Tbl��x8@Ts�Ƒ@Tt��@T�����M@T�?9oPg@T�!���m@T�D�¹@T�I�"�@T����y@T���{*Y@T�֭�D�@T�Y��$@T���e��@T���J�@T�S ;U@T���_@U���S�@U"4�,�E@U(&L��e@UG�+!@T���Q(@T�->���@U��%��@U�b�@U���	A@T��N{X�@T�i�,��@T�jF��@T�=��nu@T�^_K�W@T�=D�@T¥IKp@T������@T�O���/@T�#p��@T��f���@T�ٝ;�@T� ���@T�SWp��@TL���y�@Tث*|�@N�K��U�@G,dI�'@HI��^�@E�.L͖@@E(���P�@GAZF�M@J����@M"4�υ@O�^��@P��
H�@Q^���>j@Q� ����@Q���0q�@Rh{6(�@RZ�X-(�@Rʄ����@S?1�9�@S{~�6�k@S�D��1�@S�B��@T�	^H@TF��_�@Ta���@T��o��@T�U�p@U1����7@Up�8c0@Ut���Q@UH�Ph �@UL�!�@U}�A�@U��K�c@Up9���@U�;�u�@VZ<*{�@VA�+�,@U�FԳC@V'h�!~@V(]��+@U�q�um�@U��K'��@U�C+ݏ�@U����4P@V$ڑ�@Vt���c@U�>� ��@U?a>�d@U\��V�@U+���b@T��J�-@T�Cd��@T�<x�~�@T�2����@T;�=O@T:�vIg@S���<��@TN�y��@T8��w�@T$���@S޸n#]L@S���~@TRo<А@T�U�J��@T�G�	�@UK&�.
�@U�w���@V�u��@VFP�c@U�R�(�@U)��\@U$W/Q�`@Up�\�W`@U�[��@U��/��@U�BE0��@UX��?D�@UG�3�;�@U��V��@U�3p��@U��T#��@U���V�@U���Kō@U^E���@Uq�n�!S@U�B���@U�����@U�� ��@U��W�<@U�/�ڭu@U��((��@Uezz@L�@U4��]�@U,����u@U����@U��
�D@T��߇%a@T�W�<��@T�h4�@T����MC@T��_�|@T���s@T�-����@T�\w��%@TiK��cM@TI�SU�@T&#�;c�@T��4�@S����R�@R˂`G��@Rb�/:��@RG��pW@R�����@R���v�U@R���q+@R�NƁ@S�9H@S/�����@SIrZ�+@S%'١��@RK�n�A@Q $D��@PI��3u�@O�)ۤX�@P��}|@PT<lco#@P����@Q��n�0C@R>�ൈ�@R�u��4@S������@S����9@S��^�1@S���I��@T�^I�[@T��zV�@S��Io�@T��3@S����@S�Z�W�@T�#�<|@T"��@TP���}�@TX�)@T�j4�@T�̃P��@TOތó@Tk�����@TN�}��@TLA���h@TV3�门@Tm[��x@Tv��|�@T�g�Q��@T��Kv��@T��3��@T���H�@T���2m@T��bʁ@T����T�@T�aof�@T����,@T����@T��EqQ�@T�D׋�@T��Y, �@T�),ȣ@Tʱ�]�[@T�=!��@T��@��,@T����a@T���	�@TG4Қ3�@T:D�&@T:1'9Ic@T<�X�X�@TY�`y��@TN	�T�@T,��m@S�EGצs@Q[uiT@O`Z2k@E#�${L�@D�L �s�@D8��I�@CHuu�i@D����@HF���=u@K��Հ@LɈ�_�w@O��6Y@PC�|\L@P�$��[@PDD�I��@PQ��I0�@P��FJ�@Qˏ#pn@Qn��k)@Q�ms/�X@Rh�v9@R�K9�N@SD����@S����*I@S�s U�@T6�Qͭ�@Tl.�@T��_�Bt@T�k<~�@T�,��ߟ@T�m�_��@T�E����@Ur��q��@U�{�x�S@Uƥ�W��@U�x5>��@U�"D��@U�^���5@U5�bW@U��2z@UVu�AJ�@UGr���@@U$�9�Q@T�l�6�W@UTN�D�@U��?��x@U�=��rM@U�j�u@T��H#Ɖ@TS,r9�@S�x"�c@S��e��T@S1F�K�@Sv�����@SO��v�@SF�5�ҟ@S`����@SO�}�[�@Ss�)�w@S��=�r\@S��� 6@S�e�I)@S�$���S@S�0ɜ�I@Tb&���@T�9V�@T��MM@U_�\��@US�'���@U�v�5@T�w`@Tg�0��@Tp�0�9@TxÁ�"=@T{~��oS@Tm)Օ[@T`+�^	�@T�q����@T���.�@U ���k@U"'L���@U=�[�@U!�F=��@U2Dg�B~@U6���K@UT �@U^�-��@UBC���@UC�H�Es@U@i�X�@U*�L�O�@T��V�r{@T��Ѓ@T�h��@T�E_ǧ@T�j���@T����={@Tz�ߣݩ@Tw�T�^H@Ti�~K@Tc���Yc@T_�\��@T`�I�A�@TI�ˎ�@TA+�pG�@T7Y�[@S��ߕ&�@SÔ�]D@Scekm�@R����E@QK�Ư@O������@NH��)�@Pw��[C@Q���` e@Q�lA�T�@Q� A�W@Rz+>@1=@R�<~�@R�A��c�@R׆���-@R|��ExM@QѧR���@Q#�c=�=@Po��^��@MZҏ�ٝ@Nl4̼4<@PQ���Q@P��ۑ@Q�Y���@R��r��@R���6�	@Sq7�9@SFM�j@S|B����@S�����@S��ڈ�@@S��ՆL@So��@S�s�Ӏ/@S����@S崸��D@T@4,�H@T$�N��@T4o�o>@T:ߊ|@T7���@T4�U�k�@T?��(�@T>v���@T,zFAO1@T6����@T'd���@TD�t�̏@Tb�q@T�m��9@Tb)�9RN@Tp����@TyUP�k@Tc�^w@TRA��F�@TpԹ2�@T�o���3@T�%�t/�@T�:Ѭ@T�����@T�����0@T��P�C@TgU�Tr^@T4!ԛ)|@TNz��_@S�ti��@S��w��>@S���[�@S��S�A@Sx�7.�@S��?�R�@S�&�-�@S��2ݞ�@S@�:r�@R�>Hh�@N�`��lE@J��*��L@@�6{��@A��nS<@A1��S`V@A>���̏@CyL�@E	E#��0@H-�44c�@J�%G�%�@Mk����@O�C@>��@PJ2�9�@P#�H�@O�Ɓ�Q�@P ��yS@P�}��6$@QG�C�@Q�_��O(@R`��ZU@R��2�@Rء�I9@S`n�؉�@SX�'_@S�'⟑C@S��#��O@T��-�@S�3��a)@T�$.e@Tn���b�@T��B5��@U���7�@T�/k�~�@T�B�F*�@T��=/@U��c@U)k�|mt@T6�w���@T1�t���@TFe��س@TFe���[@TR���M@Tu�Ō�=@T���-g@T����{@T|;�Lh@T>�x��@S�w1��@SO�}��@Rm�ʱ4@Qc���1@Q�x���*@R�a;܇@Rv�&��@R~�Kl�/@R�bM��O@R�@�2]@R�\�[�@Sd����@S� ׾�5@S�� �5@S�@1@S�b'Zy�@T�7�Y@T$$�=f�@S���W�}@S��c�k@S��9 ��@S�o��Q@S}F� C@S6}a���@S)"$�ϫ@STN��x?@SV�����@Sl7N,�@S��qNPm@SѐQ��G@S�v}@T!�2x4\@T7����@TH���@Tf���m�@Tl����@T�7�Λ@T�8�91@T��xA7�@T�;�,,g@T���U�@T�����?@T���E�@T�}!�I�@Tx�����@TV'&%7�@T#���T@T�����@S��K@S�G�9G@S�bJ�@S�]��Fo@S�^���n@S���s:�@S��(���@S��W�@S�6�`�@Sx~Sg��@S]'@�@S�C$�8@R?J���=@QA!�܁@OuEZE�q@K�W(�U@K�l���@Pg��Jo@QN����@Q%�uT��@Q/fBe@Q��8�Z@Q�A8��"@Q��kH^�@Q󳪠��@R!.<���@Q�O�#NY@QUhk&@OM�T���@L�/ߓ@P?�r���@Md&O�@O|u<R��@P�v���@Q��9��@R)	����@RT5E�Z@R�S��@S%�^e��@S1��v�@S9���@S'�@S)��t.�@S<��=�@S[���u@S^�O�:@S�1�%�@S��嵲K@S��u+{@S���aQ@Sˇ��͏@S�b�p�@S�����@S����@S�A�u��@T\�
�@T��D��@T
]�s�@Tᨅ�m@T/��{��@T���@S�-��@S�8��s�@S�����@S�ަ�7C@S�

[@T'��`��@T&D���@T�C�!O@S��LI@S�'E��@Sc)>��-@S?�Kv�@S#Z��6�@R��/�8�@R���0@R�,�!��@Rߡ��޻@R��i�y@S-�4Z@R�/q��0@R�BŃ��@R�UsH��@Rza�@QRG"Mo@J¹$�@E�8���@:P�	a@:gvۀ�@;{��ͅ4@?�p�P@BR��@�@C���D�@E:��B�@K���FW@M�TN[@N�q�-�@P^��$@O�X{�s@Oյ'���@P${��P�@P�3�39@QyaVu@Q�:��L@Qߣ&65o@R�m@�@R���z�@R���+I}@S �ѤH�@S4�ZS9�@Sf�Dh��@S�F��|?@S��`�@S�-��"S@S�4��y@S�~-l�O@T�Z9s@S�L�%+.@TE���e@S�:SE��@T1̀�vI@T?!$�r�@SSzm�`q@S�\�{�@S8�w攛@S;���@R��"bŴ@R�� �%@R��>�L,@RA8kW)�@Q���Z�%@Q+�$g@Q��b�/@Q��5)�@PI浕�@Ou�9�]S@P?�X3��@Q�,t�@P�0i^�@Q>����@Q�=H��@Q�)	�U@Qr�g�C�@Q�B�3�P@R  �@RH{u�|0@RN(��"�@R^zٷ?�@R����?@RwUo@R��2� �@R�9��`@R�Ds��@R�����@Rk�G�o@RJ���6�@R_��@R~�k�;�@Ruh*a�@R��TC��@R�R�}@R��
�@R�󶖍�@S!�;6��@S$���@S8���I@Sx���:�@S�����@S��l1�@S�8�Ы�@S���/��@TS��<@T*�:jY@T �<�@T.���˱@T�p��@T5{�s�@S쾓
@S� ��@S>��M@S#�HY�@R�g���@R��z�@R祦���@S��1��@SO�tv�@SmΟ$��@S?� �}E@R��R�+�@R�*�\o@R(�s�{i@Q(�%#*@N�}�g�w@K�_���@J�nW٫U@K����<@K�<TpM�@O_�/�\@P����K�@P1�r�s@Pr�  S@PŨךHP@P�A��*@Q*G�D`�@QP�E��K@Qgen�u�@P���3@P�7> ��@P�����@N�~AS[M@P:-��c@Nߨ��@N�r�G@P+�Kq�@Q�����@Q�?����@Q��)�M@RK�+q�@R{�jV��@R�8��@R�mS>2@@R�n4�Y@R�o���@R�CGR�@R���q!@S@��@S�5+��@S8���N5@S:���7@SHȃ0Ŏ@SRiTh(!@Sq�á�@Su��R$�@S��j�@S��`��@S���B��@S���@S�%e��7@S���}�@S�H�}6@S��֡@S�q�K9�@S�W�U�@S{���@SIƞ��	@S&����l@R�^���@R�q�� @R��-�v�@RZo�%4@RG~n�@R7S�1&!@Q탬*�@Qٴ��d@Q��!�k@Q�?$\@Q����E�@Q���\�@Q���F��@R�Z�?@Q��'�1@R�f@��@Q����&�@Q��Q��9@P$hb!�@F�p<?�@>��_D�@5�.h�[@6�I^S@:�0�
8%@@��i�@C��Y@Fr�q���@H�
�Mx@G�Ձ�h@L�}}o]�@MR�
%�@N�H_�&U@NQ��4#�@N����� @O�`i�b�@PT*�jt@P�k�#x@Q�M{Z�@QC B��@QΉ
oh�@Q��)�j�@RC2oh�@R���k�@R���1,S@S=��[@S+��a��@S?O�Z�@S*\s��@S<Y�Ay�@SK�s@S7�<�X�@R��Z�@S1����@R�[���@R���폹@SBhu߬l@Q�-�{�C@Qך�U��@Q�7z1B�@QL_���@Q��7)@P�F���@Pie�'7@O�8��(@M<�����@K�7Y���@J����@K��@���@N���@�@NL�K��@Nɡ�8\�@O���FM@N���-�@O])�l@O��&�(@P��];@P,�9���@PR�]p�@P���:�@Pߙ�A{�@P�����@Q�v�c�@Q#�:]U@Q>�1	@QvJ3W6�@Q��n�_3@Q}Z��(h@Q��P9@Qm��<,@Q����A@Q�X'�@Q�mY-�@Q����^@Q˩]a�O@Qޭ�lt�@Q�PO�9@@R �zde@R|��u@R"��1@R.@�ȯ
@R{a'���@R���\^W@R�U�4v@Sޝ�¤@S8���W@SK��1K#@Sb	��@S~Q���@Sn�^�m@S�=�%8�@SLR��.@RԜ��j�@R6��(�@Qq���O@P����c@P���~{Y@P�:4��@P���d*�@Q�ћP�8@RK>�S>�@RfU-!�@Q��7ˡ@Q]^J�;@P�Qc��$@M� ��%�@K��"X�@E �:�@AM��J�9@@���?@A�{����@E��K@L��D��@NӦ��w�@O	�p�@Oc$G�M@P�[���@PxDI��@P���a�@P��\�Y@P���KS�@QU�@PR?�%E�@N�3Ш@PA�VXa@L�����@N�CpQ@O�����S@P:r���@PųfAUc@Qe%q��@Q����8�@Q�Z�&ʫ@Q�ܗr7@Q���M/_@Q�$S у@Q�����y@R&J�Bs@Rm��!��@R���m��@R�-f8�@R�$���@R�*I�ؑ@R��iopG@R��3>�@R���P�@R�m��8,@S�a�Q�@S2fݕ\$@Sg����i@Sb��ȩt@Sgy=�9K@Skj�GJ.@St=X�P�@SARtO@Sp�N_�@R۔�e`@R��8-@R�S(N��@RV�n;0@Q����@Q����@Q��5�W@Q#{)�@P�L�64-@P��i�2@P��>;{@P�WB�'�@Pw�!\@P�)V��=@P|���@P��`��@P�
t��@P��)�n�@P�.?h@Q9P�-�@Qi$���@Q~/ �R�@Q,����@N>2D���@E�u�;�C@8�q�ݱ@5��s�9@8�\Ir �@=��!:�@Am
�ÌY@B�N���~@F=��e� @H$�U�@FqjZ�x@H�����@Lb�p̩@M��P��@L�w;�g@M�#��@N߅�@P=��[G@PTW.Xi@P�Y-���@Q7Z�f��@Q��l�et@Q�W<L�@R@��<@Rq{O���@R��~�@R��<
�@R��Ι�@R����m@Ru�8�4@RC���j�@R<G=W<@Q�/Ԡ�@Q�4s0�@Q��]�lp@Q��M�:�@Q��K閉@Q,��@O�iqe@O��#.)u@O�N�n&`@OW�Ž��@N���4-l@NWbb��@M����@K�.7�k@H�>�@D��,�C@@�3g�;�@B���.g�@Fj�=��9@L�:��^�@P^Eg�'@O�O�P�@N;��@�@M�m��l�@N-yM"�5@N}��b��@N�Lfb-@N�5��Ո@N�_�I�9@Oh��?��@O��پ��@P8�s�~@Pl�kq��@P`>,)(�@Po0~�yX@P��}g5@P���@P���Ӟ�@P�񘛄�@P�P2#��@P�"� �@P�� ���@P�Z3n�@P��V��x@P��@P�0o�� @P�UA�<�@P�eLuj�@P����@Q##5m�^@Q^�
�@Q��w�+�@Q㖻e%P@R�jv��@RP��*��@Rk�U���@R�}��HI@R�~����@R퇅��0@R���[�@Reң*@Q�b�4I�@PC�՟��@J�嶇�M@C��&��e@Cqg���@G�ŀuF�@I{���@M���� %@P&R*;3@P�v&��t@PQVe��=@N�z��-�@I@��椃@D\@ikx@B
�D1g@?�(+�%@=�+� u@=�
�C(�@@��3c@BYn�X�@KR�D�@M4,����@NZ��@K@OcU��#@PJ��Is@P��0**t@P��Q��@P�p�s��@P���D�@O4wxsbp@NK^��v�@M�}k�A�@ML�?>y@N�ۧ�$�@O@��v1�@O�Lu�E@P��A@Prr[�@P�l�6@QP��X�
@Qs�v�.=@Q~c�}@Q���B`#@Q��2�}�@Q�N�X3�@Q�G�1!@R!�>,[q@R?�z؇@RB$M��@RR�Zx�}@RBE�<�%@RQ�G��@Rs�ȊS@R`HI�L�@R����@R���:��@R�2���@R�f��1�@R���Ϛ�@R�ߴC&�@R��h{��@R~iR�@RH��h�@Q�{��:'@Q�M`�@Q��=S@Q]�V�Bn@P�L��P@P}Z���@P0qn���@O�*kBt@O(:���@N��W���@N�^��4x@Nb����?@NJ@x!��@N+˵d� @NI��@N"޻�?p@N�1���@O'�\˹@O�%�<P@P�oN�a@P��&�j@Pڄp�t@Qb�%{�@P�v�[i@OC>[=@I��"�0@B�M�#u=@6tK�Ϸ�@9��~�@A��=�@C�۷@DE�=@E�w�Ӈ�@F ���*�@H���?�@I���4u%@I����@L��:�@M��V�@ND����Q@OH@P ��禣@P�D!Sx�@P�'�KD@Qc!$�"@Q���F�@Q����­@RV���a@R*�ֵ	@Rq.�ѐ@Q�K�c.�@Q�GT7�@Q|G\+�@QA+�4}@P�;�┵@P����@P�a�#]�@PM���y/@P.�N"�@P�ᱼ@O���V�p@O���@L���?�@L��o��@ML�1\�E@M�[U�u@M	��?�@Lv�*@KD-��@H���_3L@B�֮"I&@;j1W��@+Z���˄@3Kw�dc�@;M���d@B���@L�R��@P����y�@Nu���n�@L�IjWI@L��Cԉ@Mw�5'�@M��K��)@M��l���@Mǂ/	ć@NK�RV��@N�8]���@N��#Js@O�q_��@O�9��@O�z��S�@O� �ـ@O���H�@O���- @O�VZ�@P"���@O��@O��SXE@O���y2�@O�G<$�9@Og�,J0�@Oyլ8�@O���0�@P m�� �@O�#7��K@P��.�~@PD�WY@Pb�t.��@P���S'�@Q�����@Qe�\i�+@QҜ��l@R��ݥ�@RQR�1%@R���Ց@R�A� �q@Q�&��M@P�>��r@L��^�@DK�$#�@9�Q�5X@6���Q1�@<�&X�@@
��� @B~��E�@EW��%@Hj�Sk@I��c�5@F6R;�T�@@ٖ��Ń@<{���'4@;���W@9u��ѷ@:#�)&{@<L�ul�@A��&P�@B�^�O�@G9N*��@M��4k@MX9�q��@N>0hݧ�@O��C�M@O���,@d@O�Ş��@O��1�1�@PC��>�@O)Sx�;C@O����W�@N�[PR�@OY��@dH@Oq�H��@O��!T-K@O�e@���@P�F���@PD�ȶ/�@P�
Œ@Q �:���@QW{�E@Q�R�.�{@Q��I�.3@Q��ƙ��@Q�:&��@Q�w�ļ�@Rn�z�@R %]o�@R ��:@R(K87��@R
	Gx�@Ry-Gs@@R7X�w6�@Rj���T<@R�	?B�@R����@Rwn_�d�@RY����0@R/��t@Rhrx�@Q����r@Q�9�K�@Q/��7,�@P�J����@P�hD5�@PR�R���@O�&���3@OD0�"¬@N��"�t	@M�� ��@L�r`�I�@L5}��@K�Q�#k@K�A/��@K�,�|O@K�Dl)�u@K���~Ls@K���[��@L���w�@L��`�S)@ML�GЮ;@NGj���@Oz�af�@PK$j��@P��B�[1@Q�d*@Q����@P��罂@O��~0�@I�M���@/r��"�%@7��v_ �@@��.~��@F�SH@Fr�&��@E���m�@F�����@G�F=�3@JLT���`@J#2�#V�@LR\z !`@M�f3���@NI�#q�<@O@h��Pk@P:H�z@P�1�+��@Q(˪�w@Qe����@Q���&ϣ@Q�][�2+@Q��V��4@Q`���a�@Q
��8�\@P�B�V+9@P_]`�D@O�[��{@N�����@N5���O@Mt��@M� �&�@L���g�@L�;Y�Q{@LIE�p @K��nn�@LIb$��q@J�z s�e@KY1h@L�\d�Eg@M�Q�@Lt9��D@K�RH
��@J���C��@F&4�-@A�`T�`@-�o�+@*/Dg���@2��EA�i@:��㍚�@B����@GT�Ȯ�@N-�נ?�@M�C�@L8�7���@L����{@Lm�!�@LԜ���l@M;>&'$�@M��+�H@Mb�P�;d@M�.+rk(@NZ�A�"�@N�h���@N�p2��h@N�����@O7+	�NG@NڸW'L@NjK"a@N�4�N2{@N��]�Q�@N���{��@Ng���@@NBdY$c@M�,ȟ�@MB8��3@M~Q2W�h@M�@��>�@M�	�j�@M�h�}y�@M�iw��@N�UD�	@N��\�;@P���2%@P���q�@Q#s@N�@Q�{jJ�@Q�e�1 +@RM�O;3@R�3ٱa@Rub�ЁY@Q���@O�e���@I���N��@A&uf�7�@4�w*�x�@6�;me��@;{*�@<��s�@@?YI��@>IpO�x@>�\X@=pm�Q��@;�=%�)@9�o���@8�ǏY�|@7��{�@7d۳0h@9%��$S�@;�x���+@@x�a|K@B�B?�7D@Ez� �T@L���`�@M�q��w@L�����@@M�,�T��@Np
�|M@N�Ȟj̔@O/afox@O�`�R��@O���jo@Om[�ǾT@O,t&���@O���9,@O�Ļ�@P�\�i@P�3Hze@O��`ۏ@Pn���1@P� �bE@P��|#�@Q����@Q_)�r��@Q��ш��@Q�l��N�@Q�KZ�4f@Q���w@ReMR��@Q�s�ż�@Q���^2k@Q�c��8�@Q�Z�I�@Q���{8@Rn}JKO@R"�R��@R%<g��E@RZ,�o@Q����@Q�L�;H�@Q���%�@QJeE#��@Q }�x.@P�`� @P[�!@P8R��@Ov���@N�ɲ�g@N
����@M2�{ �C@L�+��2�@K���i�@J��|5��@J�&�=��@J�>���@J$P����@I�l��#7@J���G@J^�G��l@Jr��,�@Jx��ef0@KȆ�n{@L�"�SE@Ma����@N�Hi���@Pq���{@P�B��@Q7�]H�O@Q�bU�ZL@Q��K	�@R6�)(͝@L�8e�M�@&&��ˬ�@:�m�߿�@CT���`I@G�s#�Y�@Gu[y{y%@Fx�t@c[@F�bXN�@G��j��G@Iv1����@LE��Ic@Lu0Ku��@N- %�~�@N�~�N��@O���C�/@PH~�t�A@P����3�@P�8�B�@Q�7�@Qs���$@P����@P����Z@P��#@OT�o�Յ@N�！u@Mop�@Lx���7@K���Tٻ@J����q@J-�c=mM@I��9��@I�&���p@I�Yd��@I��8�@I��\?3�@J_+��Q�@J����	#@K�Q��@L�'�U�@MX�2GK�@M 8Mj�@L�ǢY(@J��Ce5@FkJ��@9�vgX-@@)�(���@@0�"�s�5@97�0e�@B����?�@E �n�L@G�P�ek�@J_�~��@N�&,@K�l���@J�j��@J�����@K�Xt>�@L7}�a�U@L%iޥ�@L4x�=��@LeL���@Mb�n]��@M��Y]@N%T"��@NTV�c� @N#�g��\@M�pk�@M���(@M�V�@@Mi+�KY�@MW���I�@M(�QN�@Lq5�wK@K��+���@LW��PH@LCZ�f.Y@Lq��S�@L�R�Y%�@L��P�$�@MBh��@MG��@M�<f=I@O%�E�E@P\��P�(@P�V�Xv�@Q6�:v�@Q���(׵@Re��/�@RDz���[@Q� �tM@P�'�U��@M= s0�i@GL�cH'@<R����5@3+�@��@6p��@�p@9Ŝ��A@<~II�@=�XA�/�@=��+/�@=�r���@<j���@:���`?S@8���1_@7d�&�@6���V�@7[�$L��@9�ד;�@=U�].Q@AF�p@DC�Z�@F�|�pL�@Lȯ��q�@M���@L�,X�@M�)��o$@Nr^�5��@Nۄ��W@O?�9��@OA�ѵ�@O�5����@O��3���@O�02*�@O�,�&C@P0m��7�@P+#-���@PK�?�0�@P'���@Pc� 	_�@P�YS1@9@P��9M@Q�f9j	@QO>D��@Qz��y��@Q�zn�H�@Q���1Ň@Q�	��@R�@Vb�@R��*@Q����@Q���@Q�S�_@Q���
 �@Q����=@Q�m���@Q�}P�Je@Q����v�@Q����@Q_<r@��@Q!c$e��@P��C�w�@P]�w��@P'�-k�@O�d5��@N�6�Q��@N�_���@M6�@���@Li5
�@K���n�@J�?r!� @J��~�@I�D��yT@I�HBM�@I�=s��@IuN���@Iw��`g�@I��i[�Q@I���-%@J!�m��,@J��+(B5@K�oPA�@L���]�@M�ܒv�q@O:��E0�@P;<maܭ@Q/���K�@Q�q��{�@Rm9�o��@S.��v�@S��緉@QNg{��`@#�����@;����@F��S��@I�_t��+@I��Ր�@G��i;x@FߵY��T@H����C0@K!�¸�@MHNY���@P��S�q�@Oj���8�@ODw�@O�����@P�J�d�@P=��o;�@P�:.�@P�T��@P[f�0�@O�ʝ"j�@N�uk$�s@M�t��@L�����@Kol����@Jp^����@I�"7z�/@I�!x[@Hg���I�@G⋎�Q@H A��Ճ@G�I�d,@G�r���@H�EW���@IJ���H@JY���nO@K�KO��\@M,M\��]@M��p6�@N�rL�@N:��O4C@L�(��3@HiQ1,�@G<:Y �U@-+K5�~a@2/�[���@6��%�k�@?�_YX��@G�U*�_@H}�i̽U@I�qy0�p@K}��x�@P�6H@JQ�0f�@Jl��+u@I�Ď@J��5Z�@I��s�@GaV�>-@H�f���@L5�fTW�@L@�D���@M���=�@M�xwC@M��X��@M���k%@MI�	��e@L��;]�@@L��{{{@L��i�@L�[��@K��~pE�@K
Kf�@J�(
e @J���@J� ���]@K�,��4@K��	��@K�z�,��@L2�=x�@L��,K�)@L����>�@NM�!n�@O�'(L�@PC��Ex�@QI��I�@Q�kTY�g@R8���@Q�I���@Q)9iտ�@P���Q@K��f�@ECѿ�!@4�?E��@3?�_��@7w�}��@<����=@=�Վ��@>Q�$P4@>��+�L�@>����D�@=�.��9@<C� �@9|��B��@8TZ�jp@7�,C��@9M2x49]@<OsV�M@@g�<��@Df0��>@FQ���@H��lK3@O_feU@L���"A�@Mq���+@N�Wk�@N
¶�@N{%��3�@N�O,UՁ@O:a�l�@O���O�_@O�}����@O��� @P2&���]@P?0��@P1��'��@PI(�Y�@P0���<@P��W�@@P�ʉ}@Q�y7�@Q6��	�@QA���c�@Qh�d�@Q��C�@R&<ܹ�@Q�i<'#t@R�i-Q�@R#�ɖ�k@R�Eصh@Q���4ˇ@Q���a�@Q��o�X@Q�9TZ�s@Q����?@Q�~;.��@Qc͑k�c@Qg=�r�@P�>vZ�s@P�p����@PAAuy\�@O�R�S�@O����{@N\p��@Mk����l@L�,J��@Kje�Y @J�O��5�@JjqV�@I�*X��@INd����@I8��)�@I��^�@I���%  @I�ir�u@J8�rW�@J^Vy�@Jx�p���@KI� �@L�4��e@M[� n�@N#����@O5?�[g@P��\@P���I�@Q��A3�@Ri���F@SP,p��@TI����@Te��O�@R6\ܻ�3@,<�
�.�@/�[+˄@F�_y# @K�o07te@J���1P@IXB��!@I�uk*�!@Ke��Bw#@Mu�D�ϝ@P�O��e@R�G��}@P�ggU�@O"!F@N`@O6B�5�@O,b���@O���!@P/W�;�@O�Q��e@N˨�!�@M�� �@L�GՏk�@Kxy�Gs@J9�X�u@IJI�<-@H���z
�@H!=���@GZ!�}{@Fի�) 4@F��/�,@GR,����@GבcL��@Hp�Qf�@I�\�D�@I�9MF?@J�&�!��@Mm��;�@N����BU@O���%�C@P�VFO�@P��A@N�D���@LD�<���@G���oYp@2���~�)@9�8�It@A5c��@Gs1F�/�@KZ��)@KZ�_r�@KΧ �\�@M��¼@P�P?j�X@P���k@J�߫�m@I��V�P@@I�0�i�@EfT��@F����M@KdT�3@N�F��3@L�"�@M����~�@MN:Z`�@L�..�Ϋ@L���c�@K�~�0.�@K8�[�@K
WO�@K�q�h@Jα�8��@J8��=(@I��BO�@I��#VGw@Ib� ��#@J��t�y@JNC6�c@J>5ϋ��@J|Y|c@J��>s1@K������@L��A��S@M��f׭�@O,V��c�@P���0@P���C�@Q*����y@QA��J~@Q7W�ª=@P��{���@N����@J� �4�@C)���i�@3�q�/1�@6C�K/��@;�V�Q3@?d���@>S��l��@?�2K��@@��fQ@@�����@@g��@@yQF:�@>�s��O8@<�ZW�@;����@=���O`�@@dp�k]@Du��s��@G#W�k�]@I�7/��@L�zҞ�h@KO=T��\@M�}%��@M!�����@N�EK�y@M�p�e@N�	t��}@Nf!TF��@NK�G�@O���I��@O�fGZ�@PH3l�@PA'��@P>�>�@P^��}�@P�.Lƪ�@Pk���r1@P��w/�	@P�w�]@Q\l�G@Q������@Q��ݤZ@Q�v�_@R)��#@R4
��a�@R'��B�@RE�ms�@R,e���@R����@Q�s�sS@Q£���G@Q�����@Q��,(�K@Qm��:3o@QS��sj�@P�9Q� @P���{�@PfJ{Ɋ�@P&;��t@O18���=@N����+)@M��+�;@L�{��@Lq�QA=@K9ڲRh@J��X�	$@J8��y$K@Iӫ،�@I�aR���@I����@@I�q)��@J-�j䊯@Jj�+S9�@J�'��+@K�k���@Kd�姹k@L�1�)@L�=3*e�@M��@x�1@N�|U3a3@O�����@Pf��R�@Q��|yh@Q�.0I@Rz�/m:�@S)!8?-K@S���*�@T{_r��@Sؿ���$@P� ���5@.�o�_@,�8���@C���lr�@N�A@��@L-h)��c@K����q�@K韏Z.�@M��p�@O�;�� ,@P�ލQww@Q���_o�@R@��k�@P�V��@N��+J @M{i�@N��5�
\@N�,�}�m@N]@�cs@MzS���@L����{@K`�����@JQW�}�@IC<;@H���K@Gk螑��@G;���@G1��B��@F��n%@Gd��}@G�|�_��@H~��dp@I6�C���@I�c�Ѱ@J�gix� @LX���H@N�rՅ@P.���	@P�����9@P���g�@P����*�@Q/��M@Ql&��@H�z���@=�.��Xs@F �2�(@JAb,Rџ@L֕�g�U@M��sYJK@L��e�6�@M=˃�#@N�P����@P�U�%1@P� e�@KV�~X@JbM�١`@I#T��k)@F��Ȼ�@K�'M@L�l� �@P���C{@M��N��@M�G�8^u@LB�g�J|@KϚ�Fz�@Kh���@K).�"�@J��X�/@J�zBKn@JK�C�?�@I�C���@J�̧�\@I���S�@I̖��#�@I�q�q
�@I�@չ`@J"���@J"���@J��_�l�@K��fw�@K�����@LZ��{U@MaR��ڄ@N�7j�`@O���@�@PZS��.�@P��2� @P��.V��@P���i�@P�WNW@NU��@KC"	�+@E(��Õ@:$m�4@:	�]�^�@?t]/�|e@@7�8��g@@v�O,]@A-���@A�y��@BjgQ���@B�䕈@C1>�%�@B�W�p@B����@Dr ��i@D
Z>��@EbTl�L@G`g���`@I�m��d@M8�	�rg@L�XH~l@J�w$!au@N9�v -@M����a�@M�y�Iǋ@Md����{@M����w�@KrZts@N3oBof�@P,�|�|@O�K��@Pt��J(@P��h���@P���@P�|J�@Q�e�W!@P�8p�3@Q3ސK�u@Q�;���u@Q�t��s@Q����@R�r�s�@R)e'�@R&��t@R;��&>�@RJ�
`b@RE�MnG@R5�}�ߴ@RN�Isc@R�kL�>@Q����@Q���f-@Q�AAʖ�@Q[�J�',@Q	�&�?�@P�]�D�9@P)>쎜@O�q�l�@OCƯl�g@NLu���@M{T���@L��e��@K�m�{x1@K��E�@J�i��S�@J�a'�� @J]/��ʌ@Ju��^]@JPL֎��@JP�#�V�@J��8��@K0�p 7@Ko?�[@KŽ<��@LBn�TH@L�i�t�@M�K(���@N�B���@O�N��(@PA�༼�@P�
����@Q_�6\�@Q�Z���G@R�kx��D@S`�n���@S�°ܦ�@To*|k�@S��E���@Rs��� �@O��9:�@7�`�w<@9|%G@D�_Ms�@P���x@OB�E|'@P�ר�e@O,�1B�@P����@P�L���@Q"�PX=@Q�����@Q�����@R"�-�NO@Q����8@P�	���Y@M_��g�4@N`�[�h3@M���9Og@L+خ�:P@KL����!@J
k3���@I'v��@Ht�B��k@G5g��ع@F�����@G"Ư�@GqDQd@G�r�@G��u�YQ@HcH�p~�@I]�f�0@J6ɉ�-K@KB�W]�@LR?�+@M�W��@P*uf�@P���^�@Qkl5B�#@Q��=�(}@Q��7��}@Q�l�<h@O��r�-@<�����p@E��lG��@K"�y�N�@NP�z��!@N�����@O�-s��@M�&�a��@Oy��X�@O���@O�$úi@Pڵ��@K�:��)�@L/2��@K/[���@JP~h���@K�)��@OƆ�ջ@Q�(Eg�@N���� @N:5���@MϾ��@K��df�|@L>�h���@KL����@K�����@J�sG�@JmԐ�{@J����@I�X���=@J��g�+@I��<Y�@Iț��@J"��MZ@J��V�
d@KM�c@X@Kt,-�@K�!d?�@LOG�M{@L�Ĥ5��@ME����@N�;�@O.����@O�s;G��@P��̍�@PA����@PMJ@�@O���Q_@M���0�]@Kc��پ�@Hix@D�_�u�@A��!�J@A�'Q��@C�nh%�@D���C��@E���g�@Fn��#,�@F��fC@F4צ��1@E�z�~ѵ@F[Z��0@G���c� @I�{�.�@I�jaˣ@K��!��@Js"�1�{@M���}�l@M<nM�`@Kd�2<�@L�S�^�@M2.{s@MEAIP@M`�����@N\�7��@Nl�F�w%@M�'`���@O'7��O@O� �g@Pe�K�vr@Px����@Q,F�y�@Q^3�<%@Q\�@Q��M07�@Q��Zg�j@Q�,4��@Q���aL@R��e@R-E7N�@R7����@R+�D���@Rf�ݓ�D@Rs���%�@Ryd���@RG��� @RQϲ�n@R+Q _@R
5PA
a@Q�u���@Q|�C�@Q^�=�@Q/ɴ�e@P��C�uP@Pw���@O�����[@O��^�@N;�)��@M��a<�@M-c��G4@LYڞ3�K@L�DBpA@K�x��l�@Kd[����@K%��8`@K�3ᩰ@K hH�@J�!�0�@KRֺ?)@K��ygm@K�CwU;�@L��鞺�@L�Ӈ�ػ@M°n��)@NV�����@Ob%j@P��q�@P���	�@Q%B|(�@Q�}�j�D@Q��?ƺ�@R���Z@�@S$$�/]@S��V��@S�I .}@S*��!��@Q���z�@O�+K|*e@M���%P@@����C@?s ��@IM�?��@P�Ԏ��@Q5�oK0@Q��@Pߨ£�x@RHo~p@R-���X@Q����@R/E�w@R)*�p@RT.�m�/@Rf�c>�@R��T�u�@P/�
�A�@M����]@L�s���K@K�����@J"DC�̼@Io�IQ@HQZ~t@G�D.�ŕ@GM��MT�@G����@Ge$23�@G�$��`@H#�[�h�@H��o�:�@Iy�H�z�@I�����@K�Tf��@Loo[��@M��3��@O\]�8�@Pۂ���@Qke
ߏ+@Q�)��w@R)�����@Rh���=�@QtL7�@E@B$Ǌ�@E��Ms@J[�^��@ODr���c@P�
�h@Qb+j�IM@Qi1�F9@Q����J5@Q��e8�@QT0���@Q&ԣI�O@R�쩧@Q���p@MT=����@M��:i��@N׾����@P�~��O�@RrW]%��@R�y� DD@P�K�Ek@O:�$t-@M����s@L�1щX�@K�6(�;@K�N��z@K���Ø@L0g[�8@L�?wX\@K�t�긳@L	�b��@K\��''@K���F��@K�SMK�@K��I��g@LF��&,@L����A]@L�z"��@L��)=4�@L�y'�@L��}l@L����@M�����@NVS8�p@NѸ���	@O=�+YD%@O�ܝ�x�@O��|yE�@O�0]�D@N:bӔS-@L�S�&�@J��W@I�_�j��@IS6��~@IR�5��@I�he�jp@Kʤ���]@M/�1��/@Mm����H@MB\��/@L���v]$@K���k�@L�3�e��@M�%�9��@O���@O#�ͯ�@P�$�:�@O�D�ڳ@O���UI@MI�L1�@L�ݔ��4@M1"�[�d@NSgjJ0�@OzX}�%@Pkq�3@O���+@O���N��@P��H�@P��rF��@P�^c9V�@Q[x��@QW��>�@Q��F��@QR��Uc@Q�&C�LC@R-��9�C@Rc��5i�@RvLQ;'@Rb-*�@RK��9@R]q�R�@Rvt�z�@R��׼j�@R�L-;�@R}f���|@R�g �!�@R��'�`@Ru�[r3m@R^?k3�'@Qˋq@�3@Qjb�3(�@QE��8y@P�n���@P����w�@P��U�@O��^�r]@N��>�@N�r"kx@M]�\���@M-~}`�@L��>�I�@LM�'2�@L�^�*�@K�cxȷ�@K;;�}�4@K4�8��@KY)�|`a@KI�g @K�nή�0@L�}�T+@M�3y��@Mp�1ve�@N;s��X@N�T�%R`@N���g@O����`S@P5��)@P�
�Z�@P�y�?��@Q45����@Q�:�,�@Q藲�@R:E�0�@R��'�m�@R�����@R��T��@Qt�l���@O�����@Ov�����@L��	@E�Y��M@J�.�^8i@Q��?�`@R�ͪF2�@S�o%bF>@R{�`|%<@Q�^����@SP�xe@SG��z�@Sn��ʄ@R���wU�@Rt,�[m@Q����1�@Qd�'��I@R\��/.�@QYK0`�@KW!!°�@L��@X@J�W���@I5���@H��m�e@F���j�C@F����s8@Fl�1�]3@FY�y{�@GKvJ�(@G�[���q@H�E$ό@I(��$��@I�N+[H@K�6q��@L/�	��@MȪY�p@N���?�M@P$���31@P�p���Q@Q�;+�.:@R,j�� �@R�z<�D�@S��(T@S��T�@H*�ʄ��@KJ��@O-����i@Qd�e���@R�Ŧ�I|@R�U��@S&y��^�@SD�^�@R�D��,�@S"���q�@R�v���@R�q�	w�@R���S�}@R։D�@Qwd"~@�@QH$h�=y@Q� D_�<@S	?M[�@S���$@R]��7	+@P-E�Fo@N����Rk@M�5Xs%@M��I��@L�c��(�@MY�FWK@Mv��x�{@M���h��@MLZ��ܧ@M�ET.{Y@M�Q�)@M|�H�.(@M�a�44$@M��$�+@M�Q�5`�@Mʍ����@M�\�Qh@M����ͽ@M�q"*�@M8;��E@M��+G�e@M�2�@N�A�?�@NK��@N.`N�@N�- "w@O�a��@O��u(��@O��gZ��@N�8�n�C@N|���@M߬��4s@Nc�}@O��M@O��[Cy�@N^}���@PR����)@Q���#(�@Q#�s�@Q�3�;�)@Qd�t(@Q.�G���@Q�L�@P����C@PkC;e��@RB@^�@R�,iE@P[M�|Ř@Or$/�;S@O@���� @O�m�BID@PV���@P�պ��$@P��vG�@P��:�@QS�m-@QM�GI�@P�h�+ @R8z����@R����[@Rp2Ww@R|���4$@Rv�0k�%@R F �@Sj|�E�@S�+\��@S
�@3U@R�w4m�@R�q��I@R���я@R����@R������@R��'>$@RȦ|;�m@R�ӒU�U@R�X,��8@Rc��T�@R)	�w�c@Q���=�@Qn�]�/�@P�Ns�@5@P�@�1��@PŊ�ҙ@O$w,��@N��_[��@M��,t
�@L����e@L@���
@Le_�c@K�`��W+@Kb�`�@Kt٤�(@J�-�@��@JP�%h@J0�J�u@J@��q�(@J�Խ��@K�3#��e@L�V$J��@MI7����@M�`��f�@N���X�@O9.��9�@O���{�@P$l��[@PM�����@PW}��@P� �U1@P��ܹځ@P��U�oH@Q#cJ0�@Q��΄u@Q���hM@R2���_\@Q�r�,@O�Aq[�@L���6�`@Jl;g��@I�Ҟ�f�@Pn�ݔv�@T�����@UQ�Bq�Y@Tý�@T���SI@T�Q���@TL�+��@TFϩ��@T7���@S�����@Sr�a܋@R�ۅ�US@Q����@P#N	��@P���~ׄ@Rǀ|�9@K��K���@K[*Q�e@I��ǡ[�@H����� @GƑ ��@Fe���dC@FW-�Qp@F_)�(y�@F�)'Λ�@G���gs@G͂��a!@H����?�@Ig��,�@J���<�]@Ks�&�LP@L�'M��}@Ng��^��@OZ��م]@P[��[�@P�W1q:�@Qv"�@R�a��R@R�7�VaX@S}���u@S�>s�@O�q(��\@PMC��|:@Q�gu�V@S�Ĕ5@TN���*@T'���81@T4��I|@T��yD�@T�<�W@T?�^x�@T v�P�@S�sO��@Ttv����@TVSD� �@S��'�L�@R67�a�.@S(Wa@S����1@R���
\@R&�!~��@PgRf��@O��%��@N�,����@NZ[~�}@M�F�o@N�6�J �@O:�,�q@OZ�7��@OCD���$@O�0_�Z�@P0Rk�@PP��׮�@O�ƴ�L@O�¼rû@OVC��w@O��.��@Oy8����@O`U���[@O3��[@O	��"<�@N�M�6��@N���4@�@OB�{�ni@O1�F�@O�)oT@O��]���@O}B��0@O� z��=@P �$�!@P2�����@PGâl�Z@P�G��g@P�[	@Qw�ty$0@Q��Ͱ@R�1���@Qw��
]@Q�ֱ,;@Q@�F7y@Sk����@TI���>~@S�����@Q�#�Ca@Q��\��@Q��O�\@S� ���@R�{)��@Q[;#���@Q[t�u�@QL�	Д�@Qx��Ԗ@Q�D��r�@Q���\5@R8ʘ:�p@R<��
��@RAu�$�@RpX���@R|C�9�@R�����&@So{��d@SwcT��@Siո#z�@S|QȾ(�@S���V~�@S�[��C@S�eɸn�@S\�1�"�@S$�
@SkV��@Sy�F�)@SY�u��@S5����p@R��V9,@R�,iz��@R���7@Rs���x@R9�mK!'@Q�wl�@Q����@P��=��U@P8�u�[;@O��S�Dk@Nzn��\@MǺb�c@L�'�?�p@K�� K�3@K�r"��@J@�@J�`@I�N��h�@I�K�k��@I�y�H�@H�㬋h�@HpI{���@HyUS�w�@H�?V�@IaU%OY_@J&)|�/l@KQ����@L!i`�W@ME�U�H@Nea�ax@N�s���@OL0i �@Oo�&�o\@Pgum��@P.Qe��g@Pc�J�@PӬ2��@P�I�"q@P��[D�@PG����7@Pm76'�
@Pج��i@Q3.G��@PQs���@L;o��	�@J�5����@Q�0c�$@TR_Kwy"@U��!z�Q@U�ܕ��@U��\���@U�b'zx�@U�3�I*@U�q�j�@U�GN��i@U:�dE�;@UP�u@T���]T@S����m�@R��7ty@Q��#�r@N���Vi@O���T�@SU��v�@LF�¯@J}�<�r�@I�ME�@G�aQ���@E�/��!)@El;9���@E�o�ƌ5@F�nF��@F���<E@G���G[�@Hw��Ĕ@I��T��@J�`g�~�@K�ľ��@L6J�dU@L�8C�@N�����@O���\@PZ�B���@Pd|��N�@P��Sn.@Q<�Q�mC@Q�BNJ#�@R�~����@Rv_��V@R�A2!+@Re_p�,�@S�K�%\@T����]�@UR����@T��a��@U����à@U+,�L^o@T�a0PN:@TN���@@T�KܙQ�@T'�po��@U6�?�
y@TՊ}q��@Sq=a��@Qs�{KG%@Q��G�2�@RX�h�6E@Qd\�É@Qc�����@P�,ϰK�@PIK��m@P!�rQ@P��e�r@P!���@P7%w�3@P{PH�]�@P�
�+)L@P�C�@��@P�?d��=@Q۝�� @Q>	�~�3@P����m}@P�]SG��@P��w2+@PW���@P"�h	|�@Pp�;��@PxFϠ@PH]j��9@Po;���m@P�I<W^�@P��s��@P�Z/_��@P�V#ƣ�@P�!z�<}@P�-��@P���\��@Q �f�@Qv#�~��@Q��x�zo@Q�Bs��7@R��M�@R��\?x�@R�����B@S.|wn��@R�9s�a�@R�4���@R�c=H@SN�p��@TQ1�W�@T6�y[U@S��0�l@S�`+��@SX:6ԭ@TID��G@R��I�%@S�\��@R�Z�{2)@RD;u��o@R+:m��@R�Ll�"�@SK��$�@Sp�l�@S�9�FT@S�h�%�@SҸ�0��@S�c1�A�@S딪*�!@S�R���@S�p�y{�@T�fn�?@T-�MK@T*3�x@Th�G��@S�~��]�@S�K�Z�|@S�j���i@S�l��b@S��t�5@S^���\@S�NE`a@R�x�@R��ё�@R�0S�?�@RQ�J�X�@R
�jE`@Qt$�+�@Qݙ�S@Po�{�
x@O*ޤ9e@Mv�xSM�@LOڀ>�5@K?��3��@J���u@IrX��@H��R˧@G�",x��@G��~�@GCB�bv�@F�_	�v�@F��p���@F�;�{��@G&��ƣ@G��m��@H��j�@I9)@3g@J�a�@J�qAΞ�@K�ʪQ@Lq��cZ}@MB�$�7�@N&�k9�@N�Y�D�@OU�5-�l@O5�c���@O��CQ|@N�	�Ie@N�]�LS�@N�W6�@NYR�$KC@NO�X�F9@O,x@u�m@N���d�@N���!@M���Q�@Sl䀸65@V�Rd�M@Vד�1��@V"�ƨ@V�.�� @V!ڃ��@Vs �da@V�U�d@V{��:S�@U�'e5�!@U���f��@T��0� �@T�-��7�@T�� .L�@S��I�b�@Rbǎ��@O�MRn�@P$����y@S�r�\�@QۘrV@Ju���P@H�zD�0@GH�|���@F"Y&b��@E�mP�@E�{w�@F]��F�G@G�VE@H=�G�?@H�o���@I�݌�S�@K)b�h%A@K�W�ȉ�@LnSڞ�@M�4���@N����'@O�D���@O����}@NWȳl(�@O-��P@Pť���@P�Q^��S@Q���c��@R.�}yM@R���Iw@T����=@T�_��@T�!Ul@U��[�L�@U�xˮ��@U��C��a@U`꓍�l@T�2����@T׾��w@TG�����@T+`AƓo@T��z��@U%lGI�@R����@PV�d-�@OyZ}E@O���p�@P�q�@P��&�p@P�7s�@P��\I�/@Q	����@P���,�@P��;�\Z@P�{�J�@QmΒ=$A@Q�t�©p@Q���B @Q���@Q�Z����@Q�qb׭3@Q�tv���@Q"�R��@P��a]��@P�.q��@P�����@P�o7	�@P��&w!�@Q�ߛ~@QObz��@Q���1@Q��� ��@R}���@RE�c+��@Ro�`���@R�"�@S�3h�@SrX�/�`@S�6���=@S��Ƈ�@Stl�J{e@Se��,C@SY��Q�@S}.+�&@Sc9����@S�̽�GJ@Sv3��@S㗀XH@S��2�b�@S���X�@S��+x��@S�K�!�G@T!|��@S�|�g�q@S[�V� �@S#��M	@TLt�+>@S�/��wQ@S��U��@S���0�U@T!��V�@T`�R�LW@Tq�o���@T\C�u%@T�#�%�'@T���<�@TkW96�M@Tk�h��k@T]�(��@TC Dn�c@Tg_s���@Tr�����@Tr_�+x#@T_��T��@T5�C��9@T3��@S���Y@S�.�gA@S�l`�Q@S7� ,�P@R��͇d@R{^���@R1p�f<@Q�C���@Q�K z��@QU�01}@P�Q���3@P72�i�@N�ŧ�@Mf#\��@Lv�g\�@Jy�Y躡@H"S�c/@E�5DT�@G�q@F8B��B#@Eym4@Ec����$@E*��ٿ@D���^Ug@D�~��@E�N�7�o@E����@FN��T�@F��$50@G�{&�S@H���8p@I����c@JO*K��@K[|��@L>4ͮh�@MF�a�v@M��7��@Ni�/�x@N��{�@N�,.y>/@M�����@Mo����@M\���0Q@L�V#�{@L��hs}@L�kYXM@L���X�@LJY��	k@P[�^�R@V�����@V̼|���@V�)=��@V�'IP5@V旗��@V�F*��s@WF���i@W#&k؅ @V����c@V�;l��@V7�{�ԃ@U���W�@U��{)ޗ@UU�D| �@T�2��&@Sö�d�@Q����p@P"NW�@@Q��$t+@R��&�@N���x�@I3���S]@H �S�;@GntҰ@F���@F��sTw@F�29�4@G�
jM�}@H�����@IV��8s@I����r�@J��W3��@KJ}��3�@L /+�Q@Lv5	qA�@L���?-@L��6�C@Mj���[@Mh��@N�����@P(0���@P�	`�n^@Q�w��	@R��+mn@S�J���8@U�}��@�@T�Q����@Ua8k�@U�K[��@U�`��<@U�|M���@T�5p=�@T��h�@TP�y@S7�З��@R�#,��@SG~_K@T�U9�@PT��(a@NX:�A+@L�A���@N(r;�E@O�A�/g@P��@�@P��T2�@P��QD�@Q��`�@QF>J7@QNU��4@Q�W�1��@Q�OU�[@R�؇�@RV�K ��@Rpi����@RS�5>�7@R7<�͞�@R<��]@Q�	�m�@Q��ۇ��@Q��@�3@Q��n�0<@Q������@Q��<��Y@R	(##@RXl,�ӽ@R�d#{�@S	QQ�9.@S���u@T	�e	@T�\]��|@U pZG_@UC�+�/S@U���q�@U�l��3�@U���{@T��Cy�@T���n�!@T�R� x.@Tc)M�@Tk��Ȝ�@T:��z�@Tn���Z@T>J�:��@T���t�@T�^���p@T ��"f�@TN�w;y�@Tܱ� ?�@U��i]��@VH�m�>�@TZw�]@T댼��%@U�O����@Up�[���@U��&��@UR��M
E@T��f���@T��#iD�@T�
B��@U�Dy�@T�w�vU�@T��Jm�@TpU}4@T�����@TG�<}e@T-���{1@TFH	M\�@T5���@S󪍔V�@S����6�@SVO�,<s@R�D� >�@R�ANL@R>��l�$@Q��/��h@Q�"�9@P��\�@P3�ɥ��@O�,��*�@N��%��@N) �v&w@M7S�@Ld/�#@J8|���@IU����@HO��B��@F��.l�@Ef�L���@E�hEe��@E����4@D�h wE@D�+`$�@D/j��ݛ@D ~A�Iu@D��i�E@D5��Sm)@D�S����@D�r^�_@E�ј��s@FD�b�X�@GE��<@G��F�#@H���;|@I噢��'@K-A��@K������@L}Ͽ��h@M1Y�,�@M�!x���@N	�V&�@N	�>3@MEC�VSm@M(>[��t@M"���L$@Lߤ��@Lp�d3T�@L}�=�;@L�r���@K���Tvg@S����@V`�R��@VXH&@V����q�@V�q_�![@W��@Wp)��e@W	Vh^@V���8�@Vɇ-k��@V� �WK@V�&��M@V&�Ț=�@U��$�8@V=�墠1@V���\�@UJ>*Z��@T,l>�:@Svh?�@R"�p�қ@O"�V��@R������@J�0�vk�@I�:Y�@Hg�MG��@H@o�9�@G� s�Y4@G,��@F٭��-�@G��U�9@He�<MC@H��L���@I\pK��@J5�N��@J��k�@J�16��@J��cͺK@Kt_�z�@L7ug�E@O�@{�@Py�ѓ@Q����7�@R��K��@S�� ���@U
"F��@Um�E�1@Vߺ8X�;@U���*!�@U�贃�@U��<���@U�r�Z@U��z�ܬ@UH&yC3@U˪��A@T 2�D�@S/G�a@Q�5��/�@Pl(j�M@Q����@N[KѴO@M4|�Q��@J�[#K�8@L�%%9U@O�֏�@Ps��C@Q
o�KԼ@P�[�ٖ4@P�R�[��@P�A@�<�@QR .�@Q.z�t$z@Q`�sZ�@Q��s��@Q��m�y}@Q���9�@Q/���h^@Qܚ��k,@Q�e�i�@R���t@Rn����@RE�-c�@R97�b@R\~ьϬ@R�˕�z'@R�ӱ��S@S5�_�D@S��u��%@T-���@T�0�Z@UQ$c)�@U���c�@V��	@V�#��T�@V�ͷo�k@V�z��K@U�J��@U^�c@U����bp@V?����@Uӱ�E`@Ug.��!@U+�lSg@T�����k@T�=Oەl@U#�B��@U�o��Bu@U`�+�=@S���o@T����e@VDW!ɒK@V�/�@Vo��i@V8G'^�@V/����@U����@U��~�@U���Ȯ%@U2���t@UTpa�o@T���zy@T����qh@T~T���+@T-gO��@S��ʠ@S�Շ:��@Sx�[50@S8���$�@R��i���@R���{`�@RsE��(�@Q����@Q�N����@Q'�<��@Pp�b�3@O��&ٴ#@N�6�R�_@M��X��@L|����e@K��Zpr�@J�/4�@�@Jy���N1@I��ክ�@INAv��m@H?��%>@@F�ٝb�@E��`�KO@EC��4@DZ����@DS ��k@C�n��/@C�'�T��@C�.Ao64@C�m��@B�bT�މ@C�@Z�@C�n�9�@C�.\h�M@Dn����@D������@E%�F�)H@F.�^�@F�h����@G��Q���@H�M&y�;@I�a��f	@J��@�9@KoqD��U@LtO^=�C@Lɿ��!@M>�sʳ@M��9��@M��y��'@M��M�9�@M�>��1�@M�h-@M[���`$@L��F�9@M����@J���V�@Q޷�St�@V͚<Ȫ�@VNLeh�5@V������@W1��
@W	`�}@V��[8@V� ڤ��@V�҅�ۄ@V�ѻ�o{@V�t���@V��_)�@V����-@Vڀx�o@W	���@�@W1��:�%@V�w�M�M@V�wx��@U�t�Ứ@TgpQ���@S��H�Ѹ@Q�I��H@RE͔�Y|@K�S'�@J^{��a�@I��߉�S@I}5�u@H��n��-@Hj4�n� @Hy����@H�J��MW@I��>Qw�@I��� "�@J�˿��@Jb��5+@J�K��g�@Kp����S@K�t9�VY@L�bE
b@M��� C$@Q�b����@R�˨_��@S���m��@T��5܊/@U�^tE]{@VHښ�E@V�O��i�@W�FNWD@U�Z�Ø4@Ua*���@U-�<�,@UY���]@U��9..�@U1U�	�C@U�Ğ#$@Tt�!�@R�H}š�@N�tU8��@K߭�u�\@M�법	T@O��L�@M�ݳ�c�@HaM`q��@J��7�@K�#���@NK��C@Pk���@Py	�3�@O�m��X@PƍH �@O����@P.'N���@Poe���@P��fL>�@P��\wP@Q��犖@Q1/6ە[@Q=N��H@QY"�͈\@Qg�Te˘@Q�J��#@Q�w���@R��װ�@R}:;=�%@R�0e�@S�H3��@S�`K�5E@T	�BE>�@T{�M���@U&C��@U�5u��k@U�b�4�@W��P��9@V��H�=@Uۧl��@U�9�Lܘ@V6�cD��@V`�Y�bM@V ��O@Vx[�a"q@V4�0ݭ�@V�e�
Y@U���|��@UD��Jv@T�|蔄�@U?�H�@U�c���k@UFTȜ�@U����@V��5cE@V�g= 8@V\f�W��@V��l7@V#�ʁ@V"���q@U�y�sS[@UU�ɮBD@UB���@U �p@�@T��d��@TT��@@S̀`��@S�ՏE� @S7��'��@R�aK��@RG*@R5O5t,;@Q��+ɿx@Q]��UP3@P��(+q@P���M�u@P0��	��@OƉ�Zw@@N۪��[X@M^��NeK@L2(�
�k@K����� @J_"�y�@I�}Z��@H�?��f�@H�|?��@G������@G���ô�@G��5`�@F�U��@E���C@D���@D;|/�'@C��q�<@C�J>�]o@C��w�y�@C!ӫ펹@C�h�2@C-��"C@Ckj�w7@Cf�KP�@C�>�Q��@Dj�z�2@D|�Ja6�@D��3�@E�站$�@F����@G�KW�e@H��;�A8@IN�M���@J�=M��@J�j�6n@K�
�=� @K�G��@LiH�{\@L�y�T�@L�h
��@L�[���u@Muo�U�+@N#�0�@N!E�"cE@Mk�j^�u@M o��dg@Lx�g;c@J�`��?@T_ZM���@V�}H�H@V��<L.@VeE�.�g@V�s=@V����@V��Mn��@Vz��s�@U�l$�|@V��;�i@VZ�
��M@V�#$��@V���3�@W3��`t0@W<�Xыt@W"�:�jq@W ⒆�y@W�~��O@U�"��+@S�P-�Q @Th�utq@P��E�wW@L�����@M�
e�\@L��Z)&?@L�z�F^E@L�m���@Ll�dـ@Kʒ���,@L�b&�@L5=�A�u@L8�9�c�@LcK#]�_@L��K��@L��ʆ��@M��o�_ @N�����@O�����@PCQ\}̊@P�u�%Q@S�tDQ�k@Tx$:�P@U[ϵ2U�@U��|�@Vx!�:} @V�O��r @V�����@VJ J�b�@U
�m��+@T�UMk��@T�I�g@T�#��@U
�D�@T�߭�ڨ@T`�;g�@S�8����@Q_�dY�@K|�@cS�@G?�3g	@MR�C^R@R!y���@K�I�m@Hɟ__�@Hq��@I������@K���\�@M��4�@N�� 旃@Nkq�_�8@Nm4���@NoB���@N2�n�@NP{⡹@N�?̌X�@O[ص��@P
�isJ@P���-@P6�"�`&@P�]&_zm@P��Y9�@Q�-�)@QS{����@Q�G���@Q�s�=h@RzEEp@S 	6��@Se��N�@S�sӍ�'@T����@UaÓ��h@Um9���@Wql�+@W���  @Vz�S�@U�J�4@U�*|�8@W-���@W�=R�@W=�*�@V;rB�XP@VW;d"�@U�JwI��@T�%ZI�@UT���@T�(B��@U�շ�@T����@Uڳ��C�@U�<�c�k@U�����H@V疗��@U��3m�@U��a�W@U|�!0��@U*"���A@T�/um�G@T�鿭��@T��#�;@T�	��@S���b2M@S[�b�D*@R���@RXrcS@R
싋^d@Q�]�١�@Qe:�Ĩc@P�$XM�G@P_�0S�(@P9�9`n@O�����@N�� �@M�_ @MJ�K�\(@K�c�]�@KV���E@I���>\@I4o��@Hp$f�}�@G�7��@F�w��@FP��@E��Z��@E�YGpl@F71��@@E͓�Ux�@D���`��@DA����@C����@C�W?���@CdH��C�@C�7�s@B�=��@B�f�,ڝ@C��|�@C<4�;@$@C��fo�@D�ޥ2�@De9�H�@EO��V8@Es�4���@F6|�O�@GT�P�a@GY��Q��@H2oބ@I�ɫ@I����@J��U��@J�=����@J�ei�@J�Is��@J�v嵹@J��^��@Js\0�0-@J9�N��@K��L�)�@N�XK�?@L������@MJ�Xʳ�@N�v�kO�@P,��]X�@Vd����@V��r�,�@VF� ��@U¶:i��@U��l�[@V2+XTyc@V*e4&�M@U&õ��@U���7N�@U�|�U��@U�u�{@V>�ڙc@UV>@�@Va��@Vj����@VWVjhI@Vs���@V]��9h@S��@P��q�͠@P�f2��@P�����@P�u��`�@P�M+� @P���kP�@P���;@Px2��c�@P��$6/@OxJKDw@N֑��c�@N�x� �@NE�'��@N��;�-�@O\�{Ta@P@dB�R�@P�j���@Q�v��@Rz��JR@R������@S=Gnʂ+@UFMj�)�@U��$��@V'��|�U@Vw*Z�H@V�_fC��@V��`���@V���@U�Smx��@TL�$�F@Sr�`-<p@S�[�V�@S�v��@S�`�`�@S��� @Sn���i/@Rz0����@P�l(@F�@5�iM@E��T�K@I�+�I�=@N�Y�[1@L7O�+@H883�@G�hȬK@H�'[�cE@I;�;�@@I����ZS@JM��;��@J;��f5@J�Z\&�G@Kv8�<�G@K�w���@L6�N��=@L��9�t@M�I����@N'w�nH}@Nt2C�h�@O>*�"(@P�1�4;@P�.�P�@P�n�ha@Q#�>z�@Q~���2e@Q�<�CD@RU%�]��@R��l���@SO�6��@T�ˊL�@T��7��s@T���_ڃ@Uྍgs0@W�> �@Ui�&�Ph@Uj"U@T���B��@V�q��?@W`���@W#L�J�@W���@V^��%	�@U��~�E�@T��ȉ@TE��E��@S�,��%@Sˊ����@TOï�ۥ@U�V`�A@U���Օ�@U���{�@U�ޤ�Eh@Ut����X@UO_��)�@T�c�W(�@T�(�@T��d��@TvN1��@TK�c�9@S釐egu@S���"��@SM>z�K�@R�Ҙ�@RE���3�@Q��.P�`@Q���{@Q���N�@Q��+�@Pz��+m@P'ŀ�'�@Om��ܳ�@N�� DP`@M���'@LZt4<Eh@K����W	@J�V�]y@I��Z�e@Hh�����@G�~���g@F�^Hw@FT�SF�@E:q��Y@D}���@Dp��`�@C�p+9@C��0�Z@C�����@C`��@BI�)Q�@B_�o(@Bg+��t�@B"Ju�o@B:XX�)@B`�lG�@B�[��@C�����@C�ʸ�й@Dc�|�@D�K��@E]5�7�@EÅ��@Ftf;@F���5�3@G����]@H|�C���@H����5@I��f�30@JG5�x�O@K	���X@Kijg�@K��Ug#@Le�4Ƙ@L��K4�m@L����@ME�4�@M+�5U'd@LCU7(t@N.6t�|S@Pr4#�E�@Q?^{� s@R����@T�T�r@V�z�Z]@V�7s%u@U*�P�Ò@Tc���@T��ɠ��@U��*.�@U��Bp@T�_��@T4>�� @TY�#f�@U,!��@U�խC}@U�AX��x@U����+<@V6�v�W@Uo>ni��@R�^<�	�@R�+�@QfA?�@Q��c�@Q��ڋ�@Q�q-�*�@Q��XOm�@Q�2W�,�@Q�f�H�P@Q�����?@Q�.p�k@QZ���@Q�Μ�I@P�xTΌ�@P��)@Q!��~�@Q��t}ǫ@R=�;�z@R�:Y�5G@S��d���@T"6Z���@T�ڂ6��@T䏼f�x@U#��ʇ�@V$j.�9M@V1i�CTc@V`x���@V��:v�@W,c@߬�@VsWV��%@V\:T�5@T��z�Q�@R��ôb�@R.']@QW1V��@Q\���@Q#\��@Q��	�H�@P��n(UG@M.�q��@G-g��@Cф#\7@<XC���@Css�~3@Bw��0�@@!��	�@A ��i�@F����<�@I�l3�@Ir̬� @J>���:�@Jp�z�b�@J�Ԓ��@J�,��@K��I�4@K���0�@K� I���@L��jq+@M
��u@M4��W%@M�a�u�@O9�)da@P�R�-<@Pp5�PA�@Qu5��@Qf��j�E@Q���|>�@R3iߘ�@R�Uf](�@S-��xn�@Sq?n�}@T<�^���@T���p�@S�ۑ�.�@Vgey�X@T��>]��@UNf����@TkM!�@UE�\��W@VZ�Vo�@V��l���@V�Y*]@V��7�٨@V{���@U���"p�@U
��@T�7b��x@S����
H@T'�����@Teo�d��@Tl_C|�@Tn��H�E@T�i�$�`@T�{Ƞ�N@T��6@T�y��F@@T�YBy&)@T�I��%N@T�ʩ��@T�}T�u@Tz���@T`���@T��.$�@S�Aͣ<�@Sh�NpG@SJGWA�@R�+�O�@R��t�-@R��~�
@R-�8��@Q� ��@Qc:���@Q�5t��@P�\�/@Po��
@O����@N��iF<�@N��sk@M�R`��p@M�� {	@L1�I��@K�[s�Е@K:k�' @Jm����@I]XT�@I8No1@I��g5\�@Ij+|¿�@IŤ��`@J1�V� @I�!�(@H�����\@I<����@Iz!À��@IAN�5@I��#n@@J,�I��p@J_��V%@J�C�a�@K,v]N�@K��_@L|9�D�o@M��"�M@M�����@N-K��&`@O�yV@c@Oܗ˼�k@P,�G���@P���D�@QSht�@Qw
�q� @Q�s]~�@Rhj���!@R՗�s7�@S�D#�@SE�ݥ,@S�B���h@S��y'�m@S(GE3��@S3G�X�@S�嚔57@S��\��@S�]<�@U�ħ�!@U�����@Vd���Q@U�&�2\@S9��I�x@R���Qc@S�a���@T}se���@R��C�Y@S�[���t@T9
pl@Uc
���@U�2eT@V�yMYm@U�a���@VU��$5�@S����=@Rq̂�u�@S�y��@S*�VO�@S��,���@TC�x@T7`��$@T~��,-@T�!��p�@Tg�Cҹ @Tt� �5@T�&�F1�@Txs��7@TY�w��@Tt����@Tp�8J"@Tx��@T�e1o�@T��eC��@U�Hus�@U-�*�@Un"Bы#@U�Z��@U�=���@V ���@V&[�ux@Vp����@V�SBܒ}@V>ű�cH@V;}�C?�@T�u�6�@R5h�o$@P��r@L�@�(?�@K���L@K϶�se@J�z=	�-@KUӰ��@I�kñ�u@Gf���V�@D����@A�^�<��@A�f��&4@8i��c@=aFD��@;]��+G@2v�R��@3��p�@@�_��m@FuK湴�@Kf���@K�P_�m�@L�	r�!�@Mf�{y�@M�r���@N��j��@N?G�B�@NU�D�h5@M���\@MW�0��@LيQ�h@L�ˡ�D@N*����@P+�S�&<@PҜ/ʑq@Q`��@Ri���@R\�su�@R���@R�Xexi	@S]�J^�@S�C�&�@S���./@SH¼~�@@UZ�w8� @S�q>n��@UJ上w@T�i���@T�t3��@T�J��j�@U�f�HM@Uj�O�zP@U!�UY��@V%թ^<�@T�����I@T��A-�@THu� �@S��)m:@S��v��A@S�ŠQ/�@S�ᢡ_x@S��R+[C@S�ɬ~t@T9���@Ts�!>v�@T�"Z�9�@T�&���@Tϒ�o]�@T׬L�9@Tחt��$@Tߔח��@T���9@T�?��@T��(�b�@TrP׽a@T4	uí@S�.�Gt@S��}�@S����TD@S� tb��@SH�%@S7@�MҮ@SA�c�@R�o�^Z�@R�����@R���)Ge@RL0�a�@R
-C,'�@Q�%kCB�@Q�J��@QR]n~d�@Qa���X@P�j�B�0@P��]��@PO^S�[@P$O��@P����f@P3l��@PX4���@P[�DL�@Po�PF�@Pw��@Ph�ޛ@P~j��@Pm�e�@P}�o� �@P���u�>@P��K��@Q"�RPm@Q#��@y@Q&��?@Q��қ8@Q�2��c@R7���(�@R_唩ȉ@R+�WYE@R�_�
��@R�E��@R�I���Y@R��#�,@R���$�@S<�3���@S��({��@S��:��@TsD�@T_"<S�W@T��ظ�@@T�o�8�@T�Zil��@T�g9�nF@TY��p@S�2�
\@So��d_@R�W�q@SK>�1@U
L�e�@VYl�5�@U7Cy ��@S��U��@R@YsgG�@QeGo�@Qz�n� �@P_-�`)�@T�.�'C@R~���.�@TF�:�`@T���/P3@T�w@U�<槗@U~����X@So�@��@S�s�m�@T-G�O)1@T��2r�@T�et8��@U+p�R7@Uo{U=�@Ux�gZK�@U�k}V��@U�
�Ɋ�@U� �:��@U�z�ٺ�@UYFs�?@U-ּz2�@T�cM��6@T��� �7@T� �Ӱ@T�j�܏@UD�*%@Uu5�q@U�;P���@UN[p���@UHI��/@U��Z��@U���58@P��{[�@T'�M4�@UA2U�o@QԪ��D@P�x8�j@FG�t��@AX����@@��f�d|@?�KAb�@@.E.c��@@�Y���@@����[@@eP�qM�@?f	��`�@<��B1E@=f8�DO@?����ֻ@B��#��@C	�_��@=�Ҹ@8�ZBR�@-~�Dƕ@'��[�+@/�6]�-[@:���X�@H��u�@K�s��@K�/�W��@M��fU@NhA �=@O�u��@Oa?�� �@O��L�8�@N>��
$@L�Zx�0@LM�Ymy@LK� �@M��aD�E@OV���(0@P���h� @M��L�'@Q#4F��@RC���j�@RUm:s(�@Rh\�t]@R�^��<�@R�:@R�����@S�����@Q�`�[@P���5�@S�w����@S��[�j�@S��(|@SϲD�[�@T���^ g@U�Gg@S�룍͋@S%����@T,�<@S*�o��(@RnͤeS@S..2<��@S˾�ń@S��e>�$@S�	�/z�@S���+sA@S��DW @S���~P�@T	���@T3�\��@TQ��ƽ5@TY���o@To�d��l@T�k��@T��vW�^@TŎ|�@T�v��o@T,���J�@T&E����@S�\��t�@S��\���@S�Y���@S���� @@S�^]m�8@S��Rw�A@S�Sz�nU@S������@S���/��@S��6�W@S�����l@S]�K 4@S_WD��@S:ꂽ@SWB��@S
�����@R���˺@R�hQ�1�@R��8Sx@R���=@R�]��|@S�����@SU�q�K�@SwF,ADA@S{��.g�@S���g>#@S��<m�w@S�a	�B[@S���ӳ�@S����Wo@S�<٨�k@S�(�S@S�q��"@S�e!�:@S���Ȟ�@S���9��@S��wI*X@S��Y1k@SL�7@S��c��n@S�ދ˨@Si)Y�\�@SB)�aj#@SF����#@S&τ�@@R�C��@R�vX�@R��,�2%@R()���@Q���'o`@Q4��^�_@P�6Em/F@P�n"y�@QA��@Q"o zvC@P�n�J�#@P?�D���@Pj,��f4@PS��(@K@L�g���@P�!sR|@U#ؓ���@T�Q'���@Q�ż�@�@P���Aڐ@Ox�6wU@M�*�_�@O��;��@R�C۱M?@RJ˾	$�@T�I#��m@S���W�@P�
p_�?@QZ�[T=S@Q�uZ��*@RňX��@SAu�3O@S����@T�0�x@T���%�S@T����L@UC,<��@UW<Mc/�@UM�!���@U](1��o@Ud3 q @U5���@T�F����@Tm޳���@S�����A@S�j��@S<͋5aO@S�i
��@T�#�`�@T��ٜ�h@S�M����@R ���q�@Q��9Kj$@R`>_��5@R���H@A���;�{@C>���_!@EP:4��@D��o5��@B��Ty'@>[u����@8d�즭@6K���@4ݫΣ��@3��-Zc@4��y�@3���e�@2�h[@N�@3I-�$�N@4��j�K@7���]%@9M9-M�c@@��k*��@A�9����@8����@6���G@*����M�@!wEd�@!���2�@%ls��p@@�F!p��@I^�p!X�@J9I�޽@K�'�b-�@M8J��@U@Nw���m�@Ni�GR��@M�vh+YE@M\��K�[@L�R9'L@K�~��@L9j��@Mh;o0�@J��
]@L��@��@O[�?RO�@QiNW�D	@Qu�Z��f@Q�d���@Q���@Q�Q�B� @Q��;�h@R-�w�C�@QLiK��8@K�~��c�@Q�{�U^y@R
}d�>^@Pp9�FAq@Q��\䏵@R׷�M��@T�纯��@Tu`
9�@S���%�@R���Y.,@R�d���@S)'$�[l@Q^�t�V�@S�#&�@T�16@j�@S�r�0@SZ�Z�g@S=V���/@S�*�(@SAxg�~�@SVW#�ai@S�g:�� @S�+�@S�B�O�@S�'t�@S��5�A[@S�/���@SQ��?c-@SDj���@R�Z��@R�n�د@RuZw��=@R��s�|@R�F�@R�f�@Q�'(�{@R'��w@R_��@RM.p� @Re}�aH@RE�<@�@Rb�X�@R#�޻��@R+Sw��@R.��30�@RE~ԗ�I@RO� ��@RU��cfU@RS����@R7�]�@R>��%L@RZ��ȿ�@R�Ôb�@SUO�G@S���"@T!3� gQ@TG�����@Tf]�y��@T�<׊?�@T�A��;@T�#�9�@U~D��@U#)#�@UN�e�@T�'�	��@T�4��:@T�����8@T�/D^�@T]�o_!@T��3+�@S����'�@S�P_�s@R�W,e@R�c��@Q}_4쎡@P�U�a�L@PM�����@O8!#�@M�� H-@L�d5�y@K�'�<��@JO��{A@IP���z�@G׮w���@F���Pq[@E�Ήd��@EB���x@C1���!�@C�.|���@H�>:� @Ij/�o@J�I�0�@QQ��;@S�d�ZX@P	����#@Rǳ	�`@N��rg\c@L%��U�k@Q��*�@R���;@R�Dd2�{@Qȇ�e�H@N�,&��@N��0w{y@O#w+��@P�	��-�@Q@QkMjT@Qc�[/$@RX�u\H@R���@S]�*oX@S��>�@T3�&�s�@T�z�Yg@T�Y��+@T�����r@T�"q֋�@T��i���@Tv?c�+%@Sw�;���@Rp����@Qba���@Pۮi��@Q�_��� @Q�5� s@K�}SȒ�@F�ĘF�M@A�P��@C+�O���@D���N}�@A֢kq�@2=k-վ�@3�!�]�@3LJ����@3����@1�fA�Y@2m��c�@2@�῕E@1�}g��@/J���C@+:P���7@*[^�J�@(�
1�s@(4�!��@@'>��]y�@'��R���@'{G�{@(��\I�@,����c@,ڄ4�@1Ѡ�*�q@4��e��@-NUJݽ@7��J�ظ@/��e��@ ^��Ν�@4P��Ҧ#@F�x
@�8@Hib�Ƕ@It��@J�Ⴘ�c@K��v@@K�N#��@KԎ���@KD���@KoM=�@K]���@L����@Mf9��~�@D�����@J���`]%@Lf3��3@O���&_=@P8� j@PtqĄ��@P߯�0%/@P���g�@@O�_Yb�o@PD�y�c@MZ9���`@HV@;���@P	�^@O��z�@M���/@P��9�@Mߊ���@S��7�%@S����@Sc-Cu@�@R���ES?@P�0�LK@P���C=@P�/�e�@SlQ�>�@T1�v"W@Sb���@R� CSR�@R̡#F�]@R�f�kX�@R�N�P�@R��p(E�@R��H��,@R����.@RoGy"<�@R;�g�i@R	�;��;@Q�M\�@Q����@Qn�>cO@Q!��<@Pa�?�@P
$ g��@O���c@O�����@Om|F�H�@N���]�@N~�>B�@Ni�ˁ�a@O!����C@Oiy���g@OCB�4}@O;Gw��@Nۆ�	S@N�8uh��@N��^z�@N�̇�l@N��U#&{@OWh��?@O��q�0@O�xM�@O��Tb�@P���ah@P��n��@P�&��1'@QC3��W@Q��4�S4@R9!z�@RS��q�@R�U���@R�5ˈU-@Rӧ,��@R�
�KE@S29z��@Sq5n�l#@Sa�s��@S�A}$B@SԮ����@S�ێ��c@Szj�"��@SN�IS�k@SR�,�u@R�梥#�@RKM���[@Q���(~@P���|�@O����:�@M6���@J���b�@H�g��m@F�c ŗ�@D�l���@B���6�$@C����@D�j���K@A�ױ_@;Gq���@4�0H8c@8z^��`@:��u7u�@Oۅϫ�-@Qc]IW�p@PH�*�Vx@Q�����@H�s�;�U@E5���f@MH;W i@M���m͑@K��!Vk@K(��*@L��n�}�@N�<R�K@MJ�+�f@@Mr���!@MM�p�	@Mƻ�WU@NoBE1_@N��w%��@O�2����@P���B� @Q.�%[K@Q���c��@Ra��K>�@SO|Ʋ�@S֟ 둥@T]A�U�_@Tx	��ͻ@T�N4��@TiN]�6t@T e��@R�	t��@Qot'<�i@Ps�J��@N�GFs:�@LA��1@E���;Q@<��g�K�@9Ae��%@7*=sD�@5�/�DS�@4\�E�0�@1اЀ#�@-��(�B{@-p���.�@-��@,��9�'@/D��S�@0qzp���@)���bb@)Ht
� [@&Jb�@#*.�۫@!�̆���@ ��� �)@-�7��%@��{V$�@9�ܓ��@;��ڻ@�0ˑ�@H��xga@;#:���@%a�S�@4�8���5@1�X�D��@E����S@E
�#cq�@B:4��0?@@!�~�@C�.'[B�@DL��}��@G������@HU:>ޘ@H�y�d@Im+o߬@IJ����Q@Iu��׵�@Ip��Ƞ0@J'�pe?�@I�x&-`�@G�C<���@>�U�a.0@D+��3\@L�G�ϯ@LU�kC=@L��ˡ*M@L���=/�@M@��[��@Ll�ݠe@H����@J�����@H$��6Y@A�"��@H�(����@H�0��P@K�i���@K;~;��@Lovq��@R�۫�:@S#9Ħ��@R��@`@R_懦�[@P;"HϹ@J��@D��@Q(:�un�@R��0q�<@S���z�@R�>,��@R��v��@RT�7�^@R {�	�@Q�k@��@Q�^��@QqT�1�@QD���@Q(�A��@P�,�h�@P`}��0Y@P:)��V�@O��r^e�@O+��~]�@N�m�P@L��v�@Lgȍ�{@K��� s�@K�`OMY?@KPǑ��@J׻��f@J�"x�@I�-���@I����@I�ѡ�D�@I�����@J4j^�l@J'%T?@I�3f,��@Jo���`�@JP��s@J`5��Ճ@K�_�X�@K���Z� @K�� ��@K������@L�ɮ��\@M�\y;��@N��A���@O^�Q~�3@O����@P4ޓ��W@P�3c�@@P���Ł@P��U�G@QL�p���@Q��U�#E@Q�OzQ�@R�8q�@R149��0@R�o� H@R��觰E@Rԡ͆��@R�aї�l@R�w;d;@R�r�!D�@RQ�{݀�@R ��ٯ�@Q���WA@P�#4
��@Pa�o�8@M���a�\@K ��c�@H��E���@E��*-w@B��DRxy@=`4{x�@8,vNΣW@8�T�RCk@9�}v�D�@4��3��s@/�#)�ϙ@+90"׹�@Eq�$@Q{z?0@LX�B�e@Ks�h���@L��J�x@G ��Y+�@Aw��_@@��� ��@DW����@HM�0W�u@E��qKJ�@F��q�՗@H����!@JO���!@J�]兙�@J�z��RO@K]�O�m�@K�����@L���@M��\n�@N�HRÕ@On��:�@PW��
@QI����@R o���@R��d�@S?�yd@S�j�mw�@S��c~ao@SY���@R�V���_@RA��J\@P�Jc�@OSzS}�@MO��|i@A�E��w@;8%ɔ@8|Ǟ%��@6����|@5V�k�L+@3�ʞ�P@1Ma�/@0��m@.O����O@-}z}�@,Ң�0�@,T˶NC@+s͕$"�@&�*{�&[@'`����@(��o@)�Q�	��@#����%�@���KC@�е�5@�p@�V@ӿ*�f�@|Ф-M�@?���@����@3ӽ�9+@��q��@����@2[gm�q@:�1}��W@2���"�@-Rb��@44Z=Z o@?��'���@CP}��@Du>s?�<@E� s���@G :'ݛ@G�ґ��@G���Γ@Gy�SF�;@F۸�>�@Fܺ!Q�-@GcO]5@E�N �><@:i&-`@5��4�@;��`@H��#��X@JK�]��@IqQ*�x@H���6�@H�ٽ�f�@G�84��@EI>$��@B��V��@?�)~��@:�dΜġ@E���]��@G]�V�~�@F����@CXV}O5�@LN�ְH�@R�ݕ�LC@Rr�S|@RE޵�g@Q̎a]U@Nc�8d�%@K=M8�@R��5�g@R�ݴq�#@Rr�u4�g@R?|�D�@RX+�@Q��t��@Q��܄�E@QL���!@P�W@ԡ@P�g�4�@P(�Mgù@O_=G	X�@O:1׸�@No�hѡ}@N����@M:b�Fvt@L,.Z���@K
#���@J_&���@I�O1�zD@I�P�4f?@I�ٿ�@I7��AD�@H���5O�@H��>�@H�j��@G����$@G�P�ƅ@G���O@GB.���@G= �@G�	hje�@G���ԯ�@G�<?�g�@G�i�& �@H�R��ڋ@Iy|q��@I�ey���@JXp�A�8@J�� �rh@K}l����@Lk�nœ@M�|3)g-@N���I��@O���}@P�I��L@P:z(�T@P� �A�+@P�v���@Q��gx[@Q|#Wv�@Q�$���@R<2S��@R��jP�@R�0fG�@SU��A@S!��,�@SNv,u@R�Ay�	@R�ș�E@R1"��A@Q���J�@P�b@�&~@O���\P@L|�Ad'�@J��@F�&<N\@C�z�W�@@�p���1@;0�@w�@6����S@<��*�@8����L�@4/��[?@:M#�p�@B�C���@P���"|@P��Tr�@J�	����@JE&�-�@I߽��Ǎ@I����%@GE��}�@G��6>�@HfGv��@G�Ȥnk@G7�?�@E��Ee9�@D��V�5�@H��s�@G�4�/A@G�R��@H�}��@I�q�n�@J͞
�@J��$��H@K�U��@M���@@N3����W@O�L*���@P�Ӑ�:h@Qo�v��@Q�s��_�@R3�9%(@Ri-�%�S@R3����@Pܰ+K��@OǠ����@Ps��k4<@N)�6�xm@K�%�$�@?����@<�~��@:l#t !(@8�S\�X@6�f�e @5	�kr�@4LuG��@1=�"�@2t�I�i�@0��4_8�@0�#K�@0#S��@.{y�k;@)�f"��@)��sv��@0����J@5eϔ�@1�	���g@!��~�*�@>����@㙵��,@��g�5�@��F@�$lT�E@3}���@b�Wc @��7M��@"�7�i�@F���s�m@F����@*�_JS�@���kB�@+�7Q@��`��]@0�,�4��@<.���p@A�iF�@q@D��"�?@FXDE��@F�
��H@E��(D�@C��J{��@Bw+?d�@B�N-�1�@A��mt@/y-��f+@0^JO;-@4�v~��@D���h�@I�i�>�@Io=�4&|@G�AV�-@E�:�P�@D��U�u@A�!��j�@8LJgP�@9K�R���@98�nd~�@C���R@BNƃt�T@B�їX}@E��hKP)@Rm
1�ȹ@R5n3	|@Q�$$�i@Q�q�2��@Q ul�K�@L��/@H@y����@S�'��@RD]�pP@Q��D�c�@Quj e�@Qz5lQ��@QH�	��@Q� 54@P��CԈ*@PCy�$�@PEʷ�'@N��c>�@M��.�(�@L�� h!�@L��<�� @K�׾�"@J�f����@J&�G�Ld@IG:E@H���<�	@G�	[�v�@G��`�p@G�i���@H)�Ҭ�@HN[H�@Gٙu/e�@G4�4��@G�a��c@Gm��;@G(�9)�@G8L�z�@F��c@G\����@F�0��@G.X H@G��q�lc@G|����@G�_�d�g@H�g��@H���)�7@I�J/ �@I��E�;w@KO�rȆy@L�d*��@M��-�|8@NS��	@OCܡ��@O��%.@P���l@P�9���@Q0,a�=@Q���Ԕt@Q�-���@RR��@R՛��@S<K��f�@S9<ޓ��@Si�5c@Sr�T�l�@SI���N�@S���[�@R���|�@Q�d�5@P����uo@N��_�(�@L��h�d@I4�mݟ�@E���+8h@A����l@=����>@8�w%���@4����	@;4��@?Oܹ .c@E���@@P�/c8OY@M����@M��%e@Kt�aY��@H�?�(@I$wF�F�@H�A+�@H��(4�@Hç6��@I`LuԔ@H��//�@G���T�@F�D�f*�@D�,�cP0@D�I�K��@F���[��@F1�4�@F4���@F�Z̕�-@F�	����@G��Ih@H������@I�n��A@JԳw�a@L n/��@M<jd�Å@NO�B��@O�xE��@Pl=��@Pۙ���@Q$�t��@P�s?l�@N�ՖƔ�@O3���h@OS���	@M��C��@K���L+@A�����i@=�)`�)�@<j�E�[@;!��J�@9ܧ��U�@8��M m@8�*S�@4���.s@4�
�"p@3ِ��@2���2�@/��{�@+�%ӉA@,q�g;@,��Fpt@)��0��H@%���L��@&U	^�Ɲ@!�g:œ @<@��e@ٷ��O@�c�u�a@�&/۽@����@�r�G@כ�,��@��y�h@CG�����@L�p��@A>�IXc@!�F�{�T@j.6�e@�Kt��@3(@�e�@`=Q�M,@�Mi��3@0��[2`@@Yx^'��@C.w	}#@C�*_�ע@Br*P"��@@7n���@=���w��@=��6�@4 !�+0@)�7���@+���M�M@0����@9�R���@8%&�W�-@D�n�R|@I���%�@Gb��%@D�Y� _�@@�5M�	@4�'N�@2n�7��@8h��I@@��'�!�@B�g�Y�@B t��ws@R�z_)��@RF�q�;@Qx�Z�)@RŚ ���@R`~&�0�@Qӭ*��@N�uψ^�@G{��N%(@S�dT�T@@R)�痢@QowT���@Q���t�@Q?���E@P��Ol t@P�E/�z�@PBx�ma@On(ӝ�@N¥K�kX@M���$t�@L�����@K�Q�@K$�]}b�@J]�X��O@I�a�8��@H�0S���@H�� ��@Gȁ-`e@G*n���@F�3��@Ger�C��@G�ݎ�Y@G�����I@H��ܻ@G�?��*i@G����p@G��|�@G�I���@G�rm�@G��:��P@H.+���?@H:�����@H(V����@H:�޼�@H�(g_@H��k��E@H���h�@H���6 @H{�"��@H5)@���@HA��U�u@K؄��"@L��w0@@MN�N�
�@N�7����@O�ٯ�?�@P�B5�L�@Q�r�J�@Q�����@R�I���@Rh:�)@R���@S8AM�@S���h�@S���8�@S�J\P��@S�����@S��Sn1�@Se�m
T�@R�\P��(@Q��Q]�@P��l4�@N}R*v��@K�{֔�,@II���@F:����@BR��Y@<(��R>�@7-�S��@7 ^-X�@M�jw��@P�J7@I&��^P�@N�wU�@MAq=�o�@J��u�@J��y���@J|K�w�@F�Z?��@D범���@G�*yv�@Cg"���4@Bݛ��@Gx�G�t�@Dgn$�@F�rN�;�@EN���;@F8{ #�@F�ᢅA@F��bJ�K@F^���I8@F`�Oͧ�@G,�C�X@GD��.e@G��W��@H��U�E@I���i��@J��8$�@K^��rh�@L!�@1�@M>��ʨU@NrB9�1�@O�V�b'�@O�H�8X@O�Rd��a@NꗮC(3@N��)��#@ML#s��+@Je
̵�y@Hl�`�|@CG���@<�& $b4@<���~@<��0L�@<��
z3@<�{���@:�HI��@7^��?�@4�+�(��@5O�T�y@64Ӫ�@3��9�@1Hr��;�@1s�BL�T@-�n�\x@*�F~4{@%���KP�@$@	u�^@#�We'a@!dC�	�`@ ׮��,7@���ג�@���^C@o�o�'�@�-|�@��@!&�|{M@Kz�ቢ�@D��3M�@0��<%�m@"�Y�|-@&/�X�h@%�o9x�@"�O���d@6�g.#E@�b�Ү�@�G�9��@0�/x��@?��B
�@@t�gf��@>X��ߗ@:ؗ&"b�@8wK%$�@0�Y�>��@,�Ź��@'�|���@+�-m@/
J��U�@4Ij_���@2����@6л�0y@D�P2@I2�'�f(@Epb��C@=џ���U@/�{�g-@0��xj�@7M[k�t@A��´@F
 @0@N!�G�ף@U���ʞ@R�q���L@R;��� @S��Hc�@T{q��Og@TW_ױ�@S7�t��@Rv���.�@S

��@R��j�@QWޙ-c@Q&�̀�3@P��C��Q@P�p�@P��ڂ@P;'8��@O�-��%�@N��wa@M����$@L��}1�@K�$b�)�@J]��V��@Jm���@Ixi4�>�@IY�50W�@H�6���@G��N"�@GJ��$C�@Fת��45@F����W@GNL�Q:H@G�G�)@G�H�et@H<��|1@Hd�Q��@H��� \@HkXH�H@Hn��U�x@H���Dt@H�@A��w@I+�LA�@IL�2��8@I�,I�\@I�1�#�@I_I��h5@I�����@I�^B�$x@H���r�[@F$�Q@Fv�xe�@K�����@L~���%�@Mz��5@N�P�r	@O��=��@P9]hh�{@QzPE@Q��ϰ!�@R $(9�@Rxi=/�}@S&�w�5@S��n4m_@T���@T*���{@T"W.���@S�Z�y�9@Sй����@S;j��"�@R�!?�c@QsUA��@P} ��@MH���S@K;ΰ/��@H&�ᥝ@D�R뙼@=莗��@<�n�'@;<sJ	@E����@Pu^��@Mʘ٥@D�ҟě@G��&�@MI�d���@L�����@Kb,)(��@J���@H}b�@AP{E��Q@C�
<-@B���@Dڍ�@H;��1@F��?u�)@F�x�wA@Eۛ&��X@FT��ғ@F4Mݤ�p@F�[���@Fpދ���@F��d�ek@F�3��
�@G��HO�@H<�4��#@H���pX@I��8=�@J=���@J�04�9@Ki�ܫ�o@LvQG��x@M�X#�@M����:@M����O@M��-�a@M��(&uc@L�kO���@Ka�[p@H�.:u��@E�_��@>W6���<@9���`�@<�!5�@=��K�@;V_BJ �@;����-�@;|�F�"�@7�W$�0P@6"bi ��@5���-)@5;��B�@5 P� .t@3i�*���@2����@0��f�Μ@/��l�,@0GJp�@+E���K@)�͂+);@%�%��@$��؊�@#���/G@&À�6�W@$?�F�a@ ۹��B;@F��De@2Q0��h�@F'8乽�@3�b?Ч@'P���+@(4z��@,�q�cs@/�3�28�@.��3T�@(���w��@"���@!����<@ ��)�K@8�p���p@>D?�ϝ�@<HH��E@:4�
��@2Є>�8�@$ٚ����@2����@*�B�[�@.�[6���@2�垶�@3܉	_M@5�P��@7{J��%@<����@BQW>�%t@A�R.���@:��f�@4�?'R@3�[/��/@9����@A^L���@I��/�@R �4�g@UD���P@T=X�p@S��$Q�@Q�9u�@R�� ��@S�O��@U�X����@R��$l�@TuG*��@R�x�U��@R���i@Q�5|��2@Q�ē��@Q
�6�ۯ@P�.��#�@P^�T���@P'N��{r@O֐�v��@OG���5@NzKڣ�@Mр^�:@L�����@K�� =2�@J�N�D̋@JqpOQ[�@I�Op#�@I��D�@H�j�4h@H��-\@H�/�ݬ;@Im�A��@Ie|�8�@I;gLG�l@I9w��=|@I�	tFU@I8J���@I#��@IF���
h@It�<>�@IG,��@I����@J`(y�N�@JY�~Kc@J�{��H�@J���MǤ@J�����@I��'Ę@H(oX�XP@I$�g�Z]@J��2c@L~o���@M�@q�Q�@N�5�O��@O�����]@O�Ds��P@P=��-��@P�}�I@Q���R�@RBn� ��@R���Y�@Ss[t�@S�8��@S�_�C�@Tc���-@S�;�jx@S�d��-�@SXG���@R�z�u1h@Q��F���@P@I1�?@MHd77�@I�B�T�@G5CW���@FbG�F-�@C
��B�@=I��@1�@<���r=�@Dd.��@P�M[Ed@Q�o���@OV�L�k@J�rJ���@F��n�@@F���a@K���v/@G���-@E`�Md�9@F�����@Gn�e@F-��MS+@F�eH�2@Fo5;@G`<�Pr�@GL�7`�@F׺�,H�@F����l@F�X@F��^y)9@Fy͵x�@G�Aq�h@GZc�'�1@G�D�Id@G��9�Y'@H�5��l@I@��@I�Fo-�K@JDG��H�@K%�T�@K��/,`@Lj�� �@L��M�@M��"�@M�a��@@N=~�p@Nƫ7t�@MS�0W@K��8@H�#s�>�@D!�%�@8�Sg���@6�>h߸Q@7υr_�@8󫡳�)@7�׌��a@6�\Ɨ�@6PwM5٘@6iP�v�x@4u	nw�I@2�v�Sv@3z݁�_�@5�3@4+2��nt@4W�����@6��^G@43%���@4����@4'`�Z\@39k���@3]-��@+>1铵0@+���@,.��վ�@*�����@-���ܩ@%!3l��S@?>���@@:����Pw@0K��d@1bͪd�#@2���igM@4�/��@7S�:���@8����@9��][�@8��讛@0�p���'@9�N�Z�;@?>�r慸@@�fx?@@>A7�4@=5��M@7[6�C�O@0��k�_�@.,!w�{@,�KpC@1�gJ�(@6E�ˁ�k@9gf�<@;�q��#�@?i�z��@A�f���1@F��p�=@F�&�]�0@B���/}@<c7� @;�c��@@>�����@A҆%���@E�'L`��@L�g@�'�@So��@T���F��@T�S{jw@R����b'@Q]ǆ��@P1C���P@Q�	;�g@R���!@T�j���@T����@S�6v��@R�پ�O�@Q�y���@Q�H���@Q� 2ZY�@Qm���@P���r+@Po�H�M@P4���@P;�U�a@P�(C�T@O|��@NQ�/a�k@M�E�d%@Mn����@L㢮?Ѕ@LFplk�{@K�����@K�;��@K�GD�>Q@K�W,;��@KɝBBqi@K�B��#@L�5-�@LM�p�@L����fc@L��ڼ@LM�ƪٕ@Lwǫ�q�@L������@MQJb�@M�@Df@M����@M�}��`7@MgN2�sh@M_��<C@L��K2=@L�m�$q@L�:��@Mz����@NuN��a`@OM1�`� @O�_�R�`@P5�Y#oe@PNQ����@P��6�@Q	��A�@Q�]��Z)@R*�֯��@R�IQ(�@S�#�Z@SU��\�-@S��'�1@S�Nw�#�@SpGe|�@Sk�(�)@Rj>Ė`@Q�:�g�@PRy�퐃@M��jHdY@JS��_�/@E>���5@B��Y��@C�tʺw&@@�A#�5[@>w��걡@?5eg0@CлF!9�@M�ھ��@Q�Z�dg@Px�Ⱥ��@O@�Ҏ@Lx�`��D@LY���@O�1���`@L։��@H��B��+@Jh|��<$@C�����@F��e@I�ox[�@I:|D)@H@'���@H�.e,}�@H}�B��C@H��z)�d@Hou��#E@H��lo l@H$��r�@H(�36�L@I5��a#@I0�!�)@I�J��@I��'��@J X#��p@J���O+�@J����i@K�ų���@LDm{���@L��$��m@Mq�p\�@M���AM@N����@N��~�ɣ@N�|�d��@NR3�C(@L��{y@J�PNYO@G�C��#C@@>Z�_�e@6�%۴8@67KR�q�@6���h@5����#@3���r]d@4����r@6��P�M�@5���x\@28]�{qQ@1���0��@2d�k��@3#�=[�@3e��<�@4`���W@5�L�Ӈ@4w6�+��@729<T[@?'8O�=@;�?�H�y@2�0w�@7�;��r�@5VUλ![@7���@1D@5�$2��4@3\LEa��@@^y/k�@2$	;@2��.Xe@7�z��v@=��`1h�@=z)�o�@C)�<hC@C�d�5�@D�懤(�@B�8B/))@@���#��@:���YY8@6$@���P@4{��p�@3��v�A @3$��7@=H��rRg@1��{�c@0���D9@2{tz��C@;:m\?
@A(U�]2F@HI�z� @NB����@P����0u@Ov���`@K�~��}�@F묠v�%@E%��4�@C��8���@C�0V�D@B�^K$�t@?�eh��@@�4gy�@J\�^Ձ@T�к�1�@Ud�@T���j�@T*����@R��tڽg@Q�tF>vs@P��e�@R�����@U����q@U�C�=��@Um��z!�@T |�x�d@Sbk��q�@R��R���@RHZ�UV�@R)k>��@Q����F�@QD	g/�O@P�?!�o@P��'I=@P�����@P�j��k@P�ƙ�U�@P?�Q3ܗ@PY�6;G@O���:C)@N�q i�c@N�I�w$�@N�]�p�@N�h����@O���,@N��0c:L@N��p�@N¥;4�@O{H@K@O(Y���@Oz�s��#@O�ps=]�@P�<�@P%X��0�@P�n�/@P3&/bn@Pk"�/@P�}���@PV"���@PR�L���@P��@@O� ���e@OA� ��@O�����@P�kL�3@Pp@��@P����{@P�� Q�@QB��M%�@Q�ҹ��}@Q�؋4�@R)�ɣ*�@R�!R���@R�6#��@SNN
0A@S8W�n�@SF��3/@S/d����@R�
k�[�@Rwؤ{��@Q���̝w@PwJ�b!u@Nw�o��{@K
���@Evڠ�s@@QY��&w@B�B�a@@�#�݋@?�����?@@�}���)@AU�`�@G��jZ	@N��%� �@Q2�|�d�@Q;�L)��@P�聶��@P/�'Q�_@P�+5�@P���h@K{.�M�g@E���*�d@L8�_o��@H���a#�@K�S�q�@L}�/Mߥ@K��(��@KWq�ݯI@KM+�}�@K~�	% @K;:,��C@K(�V��@J�R��x�@J��y�*�@J�I�V�@J}j��@J�{�T @K |�be@K0��@K��:0�@K���`�@K� ǟ�!@L%��I�@L�Iv��@M�հ��@M�4c��@N'�7RD@@N�\�TP@O��}�@OH�'�@Ov��B�'@N�?�+` @L�Ϛ�@J�0�bw�@Gۨ:�L @@�����@7�T8��W@4�^G�@4�F�T�@2��x-:�@1�b��@3N(P=��@2���_�@0jg�"�@2V}c�@3����3�@2��rr=/@2�R�4�}@4 ��r�@7��L���@8e	��@=��ہI@A޽� @A@����S@>�����@@ ����@?�~�W@?�mm$@:��Ɍ� @8)�2�u@685����@6#F��&9@8��r�ס@;�)<�@?*�kWlG@FE::a[s@J�FO��{@Ga�@F����}	@B��u9��@?�n�3u�@=��Y%��@;��B�@8S����9@7����[@:�:���@E��} @@H��7Ec@;M���{@;
�Q$@Ch�-��@K�qg���@L����]	@G}$�@G�_��	@B� �9�@A��N�{@A��G�M@D�i�p-@L�X7�u@J�r@!A@M�=����@AH��ջ#@B�8�E%@Rߺs��@V2j�� @V%�>[2@T�����@TdGQ�C.@S\���'�@S,�	EH@Q�}�ʏ@QQHg@S����'@U6��K�-@U����@U��؄�!@U�ŕH�@T���ˣ@S��V�}@S7M��^�@R�N4�DM@Ri��@R0���$@R���8:@Q��yn>O@Q�H��3�@Q���!@Q]��f��@QK�*���@Q
�~�@P�d�<�@P��b�@P���@�@Qb�!O@Q�$�@Q8�ft@Q*�2;��@Q	Yv�A@P�k�}��@Q(�='�@P�I���@P�Gu��]@Q��;�@Q+OL�,@Q��GR~�@Q������@Q���D@R
����@RS�KQ�@Q��=d�@Q} �l@Qr�-�I�@QU>�3��@Q3���@Q�_"�C@QNfܣd�@Q~�6̵P@Q��,(h@Q�Z�y�@R;A�{��@R�����@R���ޅ@R�{��@S#�T��9@S$&���@S F�)�@S%���@R�LD��@Rg�3��"@Q�)�rE@P�d11�@O>5�\th@L2ͧ���@H�n��a�@Bg����@@��(�@?w��5�@?_n��c�@?j�Dd��@A3f>Ar@C���o@K� �::�@OV>�E@P@��$]@P|���8;@P����g@O���US@P���-��@O��R�@JnJ�W<t@Ix�4	js@N��<�H@P%�=�%X@P@A�q�@O��k0T�@N╥��@N�n��IM@NP��9��@Nx�q_^�@N �fQ�@M�ڹ��@N ���@M��ƀ[9@My���@M��#Z��@Mh�28^L@M�9QG�@M�6�8� @M&L����@M���	@M����O@M疝FZ�@N�J*�@NP�>�K�@N��䐿@O�����h@O��3�X�@O�D���@P@)�p�@P��@O�Aq�	@M�E�3@I���`_�@I�0��0@H��~)K@CO��@6�s�~�q@2�p/]@1�c�O@0=�*ej@1�V�Aȗ@5mZ�@4y��@2�0�cS@54�W��@4�H� �@7.�:���@6�1T���@9�����@=p�P�9�@Db��4�=@GamK@@Gdgʤ\�@D~���co@C�0 G2U@DYO�D�@FcY����@F �M�{@D"��c@@���T�@<ٔ�
[�@<S���%K@?�A��\@@B�|l���@IA���P�@Hߡvl�[@J� .��@HR�Z@A{d��@B�s�]/@>��2��@=a��c'@@R s5��@?{LM�c@A�B��@B]]ƕZ\@B��4��@J	x��]@JT���@K#6�V+�@G��c�l@F���
��@H�����@C8�]��@>ͼׯ�@<�����@@��j���@D�K�XX�@P�[��@O�9e�R�@F9'ݳ�E@D�z��֯@K���H�q@U��O��@V�zC9!�@Vs�o:�[@Th]/	�-@T3�I闑@S)�5@RYZE.�@Qs\���@Q�ϥ=֫@R�H�@T�t�_'�@T��;\@V]��y@�@U��C'�c@Tً��d�@T�L1\ �@T�m?��@T6�Z��@T!�����@Sɑ�w��@Sv���I@SH����@SM��̞L@S!ͥ��Y@R�ǽ�Vq@R�^,\^k@R��,�xU@R�<mH��@R��W4��@R�G]��@R��}l�@S =���@R���U@R�,!,��@Rl�h��W@RC0�L�@R:v�[d�@RoAn�M�@R��w:@R�!�?!*@R����y@R�+&�@R���J[�@S(�:���@SK���ū@Su���&�@S8�R�W�@R�6T�MH@R��B2��@R��t�A@R��b���@R�����@R�PG�n�@R���;��@R� �e'@Rۯ����@R܅\L��@S#{�H{@SP�wεI@SU��GW@SdkTzd�@Sm(���^@S]	�@R��y�:@R��"i��@Q�)<&h�@Q]8Ӄ|�@PKvi���@N6nV ��@Lgٱ@F���V�@@9�f��@A�H�	��@@�����@@�^N�-@A�d��7@B���D��@G�]F,�@I�,k6�8@M��LA�0@P[�x���@Nع~`@N�N�k@M/q��@M`�I��@L�l�|N�@J|�@p��@J������@Pk����B@Ra�ϝn@Q��r��@Qdx�$�@Q�g`@P�/�kAx@P��9�@P��Q]@P�u��@P~y��38@Pt����U@P0_���@O��h��@O�}�@PF�[@O��ܖ�@O����!{@O݃h�{@P3�7�C@P��f�@P*��6=�@P"�}�c@POz��@P8�]�*@P�%�2͵@P��1���@P�G���@P�WzJT@Q6�+�1@Q�o��(@P�_�F��@PU��	/@P7/����@N��7�,@I��<�7�@AY0�}L@7�M��0@2�J�ð@1�7��i@2�w��T@9��\1��@:�Md�@6&X�� #@>k���p�@>���-��@>A7�U!=@C8�_�Q7@E([e��@@I��{H��@L�5�c�@L���7�@G��o-�@IR/F�͌@L/���d@NR�p��@Mx�"	��@K]$?g��@L��W�U`@M��?e@@DV�ɨ�@A����@A$PB@H�x��c@M���'@O9���;�@M4p�Q0k@D�fE��\@A��Б)�@B/;(�h�@?� �(�`@B����+@FW�����@F��A��@HL�*=��@FU��D+I@E������@JQ�K@�@L>zrM(@K&pOg@O�����@J���8@E!m<N	@C<�3s��@CC��� @Ei�ǎ#@DFR�i_E@H�4"�}@O��ʻ��@N"ʼc�A@M"�"�@L�$�6�@K������@Q��ͧ�@TFP�ci+@Td�ѿU@Q��+�L�@RaB��#�@R&ڤ�[�@R�9I�@R>QJ<�g@R!�a�b@Q(�~vO�@R}"V��q@T=����@UƩ5l��@Rط�T�y@Pv�vqp!@S�l��p@T�{/�<�@T�@@��@UW�ct��@U<��X,�@T�W7��@T��ta8�@T���'��@T�O��?@T�����@TO)v5@Tr��@S���� @T2g��|@TL!�R�<@T^M3�F@TY]�Kd@Tڹ���@T�i_�@T�R{�@S��e���@S��<;I@S��ʮ@S��;��	@S�U�e��@S�Ӑ'@S�G��p'@TTC��{@TGu��q@T<(���@T,�{�p@T�#��5@S����;@S�g���@S�lv�@S��K%l@S�5���@S�����@S܆���_@S�'�a@@S���%�@S�\�W��@S�\�e*�@S�㟁�@T��8��@S�^�O@S�a���@Sw9ڀ�<@S�S��@R�nt�ml@R()	��@Q֧��@O)V!�W@K���h@I���Ա�@D�T�6@D��H^�^@C���M��@C�C��v�@Cp�Hu�@D}���v@Dw���`@F���{;�@I=��
r@LG�;�@NO	�=�@Nr�Ԃ-@O!�ɳ@NI�O]��@M�)D��@M&Ih�
�@Lr
Mp��@K�&?:��@MV~����@R��z2?@S���T�@SL�\q�@R��G�@R̪�]�8@R�����@R�a��@R�bW�p�@R7E ջ@R���Ӱ@Q�>�M/�@Q�nDe�7@QɅ��f�@Q�զX�@Q��MIǳ@Qr�I���@QQ��	�O@QB��2	]@Q"��Oe@QJ�m8��@Q��X=@QWx̈́@Qe��9@QRl��&@QS�1��@Qc�g%s�@Q�`(`�@Q��yo�U@R �^�m@Q�*\W��@Q��mc@Ql�ʸdc@P�����5@N�|�"9@G���@E�V���)@B���^\@9��i�x@:b�Ue@FE�4��@EI����@A#�;E��@G*N���@J]�(�XI@D�f�@G�2t�Y�@N��a�J�@O�60y�@P���:S@Pr��}@Pg�!��g@O�ސ<@O�`x@O�ywCC@N���a�@N���2��@N&�S�U@OJ �~h@J?,H6w@F�"m�:W@J�2�&�@O�'��L	@P ��ya5@Nң�R�@K���s܈@G �+}h{@D�F�+@FWFt�@G^s3�?�@J�V�	��@K�0<).�@N������@O���@M2�KS�@K-4���@IՏ��C�@M��b���@Qխ:$�@Shf��m@O��(��[@LcG_��@J�.y��[@L4�@7��@L�=U3g@N��`��@Lq�	� �@M����@PO����@P�&d�&@O�[`�B@I���2�c@M9P��@Qq>��@QF�m�ͩ@P�Z�\@P�mkݭ@R�!	���@R��:�@R
v�+B`@Q��z	c�@QTފ���@S��si�@R*�,�D�@O��S���@Q���%@R�Dǁ�@O�ki	<�@O�O�C�@P�d��J'@S)o��i@U�״D�@Vf���[@V^I�U��@VG�[*k@V���@Uִ".��@U����@U@�r+(�@U#wm�@UG�b�7@U� [�@U��j�w�@Ux[�: @U9����@U/+wv�%@U	�eh�@T�&%��@T�-�J@T��W�v�@T�e ���@T��^\��@T������@T����E!@T��N�@T�~��@T�{����@T��X,��@T�T�@T����'@Tfv3]�@T`����E@Tt��˹A@Tw���O@T�#A@T�Z���@T�$����@T�S4���@T��~�%@TwaEQ`$@T��Lp{�@T�c��@@T�kQ���@TM<�o��@S�.P��@S�[UOG%@S���@Rn)1�(�@Q,���`�@NTq���-@GqD�(@GvUd��@G�^n��@Ghl�fF	@G�ȅz�@H��X<�@G艣��S@F
��@DzF��9'@E�0B�8@H��~�o@M�Wf��@N9�M,@N8���Oc@O�2�#�|@P6z���@O;0r'�@OJ�]+U@M���H��@K���b}�@K�p�.W�@L��&�@R���@T�{�4w@T�C3�Ug@T���zL@T��i�@T�K0@T<z{�I@T5�o��K@S�����@S���O~�@SL���!-@SFVM@�@SD�8��@S�[SC�@S//\`=@R��W�3V@Rh�qm�@RC(]k@Ryb���@Ry|�{�@RV�#��@RQ�phl@RO���a@RSll�[@Ru����@R��� F�@R�R.���@S+0Mrq@S�x@��@Rǖ��� @R�����i@R$�h��h@Ql�I^5�@Oy����@K0|�s_@I��5K3@F���GN�@D��q���@L�����@LS�0	��@K�OC�Iq@M_T�`��@N��qHC7@N�}/��@L�����@M�4ƀ�@M�$�mh?@P�u�L'�@Q�w"�X[@Q�=�C/@P�G��k�@Q�c{|@NA�%8@N"����@N��<<'�@OH~�k�@Pa���#P@Q����@P񜸼V�@Q:�@"�@Q�1K/qz@Q�b�@P N���@O�����o@N�MM���@L�����T@K�J����@M%#�p@P
WY��@Rm��@Q�����W@Q�u覾�@RQ�=�E@Qٍ<��x@R  ���C@SPw�g@TP����*@R�����@PH��N�|@P�`��2@N�D��@Pmͫh�@PSM�/@Q!s��@N_u���@K�\�-&�@K�T�n͛@P��`vi@H�32㯨@J'>^F��@M��K�Ը@O燮R+�@Nn�C��(@N��I��@O�ic.-@R('���@S+�l�@Q�V�W�@P��>�H�@P6��E1@ST����@Q��[U<o@Lr���	%@O��߻@Uϩ�K@V��?m@U�v'c@PƏ._˹@J����@S~8'0@Vw�a��@W)�-W) @V�k�$1@V�7��@V��)��x@Vj	���@V5�~"4�@V(��� @V7�<p@V.E��p@V:�6G @V-oT�@U�G��@U�#~��@U�~�;R�@U�s�T#�@Ue�<t�K@UO�ٓ��@U3n��@U�~��@T�٦@W�@U"U�T�@U"څL�#@UC8�~��@U6�+z��@UF���u@UK��@U:0a,��@U�����@T��=}@T���@U����A@U*M��@U`�Г�@U5@�MI�@ULjd�v�@U^���@U6Ģ-\�@U?j�1�Q@U'���@U�d@U@T�`|�-@Ts�,\�@TD��@Sk�8Ts�@R�;��@Qd�pA@Lc1���@N���nJH@Kq3G)No@J��eN�	@I`@d��@J#І�r�@L���s@M�v��)@L�\�9�@H�/]@Hı$'�@H��L�@O<G�@O�eiF!@O������@P*B�Ua�@Q�=��@QE	�Ko�@Q�����@Q=q�Ic@PN�8��^@N���	@M٫W���@Mץ���@T?yr�"�@V:h���@V����=�@V|���@VPz���3@V���&L@U��<yem@U�Uͦ�@Ua3�%m�@U�}��F@T�X���7@T����@T����@Tk:pG;�@TE	:j��@S��=e�@S��Aq��@S�D�v�@Si�S���@Sc,�))�@S4xl
O�@SAГ��@R����9@R�����@SKv@ScA*�~@S��	c��@S��m���@S��Q�3@S���g&�@RɫN�-@Q睕V(�@P�iK�]@KoQ*���@K�͏O�@I����}u@J3����@K�܋��O@M:�����@OJ9,��@Pw�O�mw@Pi��*J@N��b_��@O��ON�<@P#�NOa�@NZ[��@P��03��@P�Qw��9@P:���@P��y~�@P�Ao�@O�A.�y@Q
����@R$�y���@R"�u=xQ@Q�����@Q�+��l�@P�p��M@Qc��6P�@P84��?@Q o��@Q^�,�@R�G�כ[@P���z%	@OҜg�@Q�Ɂ,_@R�~f�@Q��*�p�@Q����@R����]@R����@@R���2��@R3� -��@R��1��@S���f�@RE)P�@Q#���M@P-~��w@Nc��
_�@N��b��H@P�[J�@Q�N��@NK�H��l@M7�zz�@J4Rqe�@P)��PB@O�!�]�p@L]�SJ�3@O#p��#@N5w��@N�̿��A@O���s@N�%Y��@N�v*-�,@P������@RI'��@P���S�@Md3,�h@N�\܊�@PN��?@O�hc��@NѠ�ͭ@R��?S��@V�Z:��@VзoT��@V��kz�@V��
�%3@UU=�0CL@R����k@UƊ��ӈ@V�/:���@V��u�X@W�K�L	@W�z�x�@V��?��@VێR,%@V���,@V�\8��@V��u5��@V��ߋ��@V�H�&#@VA� �k@V(�F�S@V'v�G:Q@V�u��@U����T@U������@U�lfn�@Uur�!@US��=+@UD�u�x�@UIcY��@UiP�2.�@U{�$��@U��5`�@U��ҖYs@U��[	�@U��k9V�@U��eb@Ub�ɐr @UZ�YjX@UK$Y�9�@Ua���@U�Ӓ��K@U�\|P҇@U�o�;b�@U�>���@U� ��L�@U�>E��9@U���7%�@UX#�|E@T�~�:�@TK 
�D$@S�źN��@R�j�%��@P|;��p�@L�|��@N!��6�@N�_:�L}@N�����@N�5��jc@P4=b=�@N�>ȩ&I@P��l�@N꧃�8@L��Ap�@K��4k�@LJ=~�6@O��c<��@P#7��[@Q��hܕ@Qn��� �@Rޯ��@S�é@S<�ڛI@S~���h�@Sx�����@R�c )�@Pmo]�_L@O�+a*y@R2�d@U�e�u��@W�U���@WWEr��d@W������@W{�n\�@W7��:G�@W%�g�@V�#�3AL@V�ur&G'@V_0H���@V@��v�@V��۞E@U�c�F��@U��r�G@U��kH�}@U57���@T�s�*�@Tn�h搉@TB��΄@TA�����@S�P�bV@S�f�JU_@S���2�@S���ܒ�@S����@TVf�:�w@Tn}��MD@TJ�7Y�y@TQ�E2ZG@S�����-@RO�4��@O���@L5����@L�o���@NQ��V�@M�e��@J�����%@L�m�Gg�@P$
A8�9@Qw4U���@P��~�@N��᏿@P=>�JX@P@�l҆�@P�B�"�@P�r��@Pm�;��@P�ŸK�@Q~/Hѭ�@Q��� �q@R��s[�?@R�*��
@Su�6��[@Sy-I?�@R��@R�
xj@Q�?��ΰ@P���@Q�s}�@QJ&c`S>@RT���@R�w�w7@R��'��@Q¶)���@S�D� @Re�[��@R�����@R�@��@RoqxF-@S4�̯��@S	�H1��@S9�}S�@S�x�i�@R>i��@Rj6�1�@Rۧ ɯ@Q�Y@�4�@P����f�@PT�`?�u@Oִ+u��@P�"�B�@Q�h=��@N)�k���@ND��Sd@P�U�P�@PD�?��<@M'vEZщ@L�k��x@O3|nu@N�Z,��@O���@O�z�F�@P�g�._@Pyu����@PR�mB�@Oɕk,z-@J�>�e�C@P�W�i!4@P���\s1@R}÷4~�@O�L�u�@R�A`���@URT$��@UE'7�'@U�&��@W1a�`A�@W8i@�CI@T����߹@VJpp�Q@V�D
ch@W;��@WK���S@W,O�Y�@W9�NI70@V�x��}�@VΌ�w�@V�+��4@V�lES@V�P�\P@V�	g�c@V�H��$�@V���@VW/��3@V�GG@UÔ�2?�@U�$�r'@U���&��@U��.!X@Ue3?S��@U^2n�P@ULV��_@Uo���S@U�(�ۚ�@U���f��@U�mWKp�@U����h�@U���$5@U�n����@U�爃C@U��&��@U��|mu�@U������@U�4n�g@U��o;�'@U��qe@V����@V3���{@U�W�](�@U��V��{@U�A,׼P@UT�ɾM@T�md�@T�)�9+@SS)��l@Pm�=�L@N�R�[�@P՝�� @Q�e&�Z@Q�𿪵-@R}H��@R�w��T@QH/⨥\@Q���?V@Q��ۈq�@O:��@Nk����@Ow�*�;@P��
[��@QN��
@RQ	����@Rπ��@R��.���@Sn22�v�@T[$�eZ�@T�_1�@UP�Aܣ0@U��Le�@T���3tH@SO����@Q>*5�]\@S�\���@T��D���@Vk�ȧP@WIˉ��@W��w�==@Wë��$@W�Ǆ��E@W����HL@W��,�@W_'ڿJ�@W*@? R3@W*Ymh�@W	����@V�~���@V�t=f\�@V<��"�@U�"���;@U���t�@U[����@U=����@T��Ę��@T���u�@T���C"�@T���I�@T�
�
��@T�tf6��@T�d9;@T�@�/�@T� �^�@TX��/@R��NI�@P/�7��@L�4�~t�@M��}%#@N�'�}�@M�0?B@PL��@M/��x}G@N����@P)ƆN�e@P�sX�@N,?�"B�@O�n2*ɷ@Q-�@P	UG���@P|ݹ٥@Q��]qO�@R�՛	a�@Q�
p"'@R4�Q3mY@R�/�(�@T��C�@S�ܡ���@S�G����@S[{=���@SyF�{�@SP�9G�{@Rh��@R+q�	�f@Q��H� @S ���{@U 7��K@S � ]F@R)�e��@T�V��@SH��`�@Sb�K��'@R����!�@RK�P��@S#;���@SM�Q�9�@Q=Rvʪ�@R��Q��@Q$�X��C@Q`+��-@Q�aGx�L@Rg}D�@S��e�E@Rr)FI@Ri�2L�z@P�Tl
�@O����D@M56#I�@N��>���@P-NhO��@M�g��;@K������@Kf����@Lq��O@NL��m��@P~�Q�՗@P��8k��@Q?�8I�@R<�^9@R^�1�18@O��"��@M��(Ym�@P@Ÿg5@R���Ui�@TFI��7 @T�� >��@Q�0�Ig@Q+�t�z[@P%_XM/@R�G�{!@V��Yf�@W<���@U���T%@Q���Qv�@S��"MI@Vs��c�@V, � �@Vzs��1�@W�%�Ր@W)F���@V�p�8@V�����@Vt⮌��@VCa
-@U�N�L��@U�+��C@V\H� z�@Vm}���@U��+ݼ@VQg�@V
�&_�@U��i*K@U���l�m@UQ�X3ֹ@U7ct7��@U r�"5@U1͙F��@UcI����@U�����@U�6��Lw@U���{�@U�t+�T7@U��fT@U�1��,_@U��G�@U�h�d5�@U����e@U�~��@U��F>��@V�����@V:8��@V�1J�@V�*ŀ(@VP��{(@U�����@U�?O��@U9�Fƌ�@T���,�@S�����@Q�&+�^@Qt)%~>@R�dE�?@R�``
�@RxL�3Xh@R����>K@R��2��@P�
�*5�@QM����@R�<[�C@Q�#:y�A@P�j/�!@P�,L'��@QV"H/ �@R2���@R�`=�6d@S�k��@S>U��{@S�>IF�@U���i�U@Ut��7{e@U��T�@VgU�0�e@V��IY�T@V�Y�ǖ@U:��VE@S=�e��@Q��x�8@UG���S@V�~�y+@V����@WT���N@W���g@W�i�4*@W�I���o@W����k�@W| �t7�@W��r=@W���Ӯ�@W;B���3@WY��Ω�@W2:2��e@V�c/���@VC����C@V�̎�%@U��q��k@U�尯's@U����B�@Uf��+�@Ut��P@UW��Z��@U5-����@U�/�@U�
���@U�{�4@T�&�(��@S�1�S�@QMÍi��@P�Ko��@P�7Ad�@Rfp�`�;@QNe< y@R����@R����C;@P<�s�w�@M��M4�@Ou�좂�@P�%��A@Q�p[�D(@P� �-�@Q�=�@S����@S���mC�@S��b*�@R`3Lz3/@R�Ł\.�@R��_��@TK4@�,@U�{�]K�@T��T�t@T������@T!iP�"�@SV[>��@S�BP��@T���V�@U4��@T���=@T]Vl*��@TH��0�@S��ŹKp@S[(#�/@T�]O�@T���+ �@S3f^�@R�C�b|�@Se��v�@R��Q��`@R�L�b��@R��-u�M@Q�[�=��@RL�i���@P��:��@P���y�@P��q��@Qtr.��k@R4��S[@Q�4~^O�@O�Q���C@O�&`�W@M��^H�@L�n����@L����@O�q��O@O�i�PQ�@O�@�Ԝ@Oۧ� �@O$)P��@P�\l
/@N�T�nK�@NSH����@Po70a��@P�Ax��`@M����@N�/�ݜ(@P�y�}FI@R1��=@T�|�@T�ySo�9@S��.k@S�HH��@P��D��@S�$�D��@Wa�>�h@VXػ	�(@S�X� �7@S���٢�@U�oe*�@V��OA@ @V���M@V��z�o9@V��:�y�@V��\̄�@V�b�fH@V�W$7@V���IO[@V�U�@U@O~>Ч@UO�c`@U��l3@U������@Vz��-_@Uε��iM@U�����?@U~U1;L�@UNk(aZ�@Ul,e�0@ULכTV�@U5��f�W@Ul��,�@U���<@U��"΍@U���bd@U�P��`@U��s���@U�4��@U�W�Hbk@UЅ_��@U�rx���@V|"sO%@V3
��@V0ǳ6��@VC��R+@VM���[@VGN����@V:{���E@Vt�g;@U������@U�^�+�#@Utc�ac@TVn����@Sb'��@R�މ|�@S3ʵ�p�@S�k�[�,@R��a9!@Q�Z}Ǣ�@R��f�@Rخ!\;�@Rh����@S�$�@Rmz���@R$�\��9@RB)�K-�@R�=��ao@R�K�߀C@R�|�f�@S�S3��@T����r�@T"��W@V�Ì� @VT�h�@VM���@U�pނ� @U�?Ғ��@V7�4[.�@V��o�U@Vh�r�|@S�/���<@SX���C@T��w���@Tu�)���@U#/Ԝ�:@V_g�o�!@W�[L�c@W}�m�@W\kl�*�@V��\�u@VU�,@W^	q`ڈ@W�N�ū�@W����g@W���@W.��{�3@V��"m@V�G�D��@VO��a8�@VN�	�E@V/K�y"�@V3�k��@U���K�@U�z{�5@U��`�'Y@U��n߷�@U�ZWa��@U`��X�@UH�U(n@T�GL{�@@T:����@S¿��tt@S�1�vUc@S���u-@R�A���@S6IL�lS@S��{r�|@Th6�@R���@P���Mu@P���c��@PҵbK�@Q��f�@S�O.5��@S�\*M�3@St�츣�@T+8RT�@T$R���1@S�H@V��@S�2{&@S�gl���@T�#����@T�����@T��>a��@T�B��@Tb�\;\i@T�9�jw@U�1t-@Ut�W��@UX%$�4�@SY2���@Rh�e;�@S�:��<�@Rò�u�@Rr0���@R�S��]�@R��Wj�@R;P�Ex,@R+���~�@Q��Be�	@Q���7�@P�0d_ޘ@QdQD�6@QEy���&@P���C��@O)�4'Y@O�ђ}�@P�i>[i@R#�zi@M
�J�g@L&Z�M@Pn�x$q�@O���;@PnC�D@O×Ë��@P#�	&�@Qd"�U�+@PľdA�@O����9@N�2c@YH@NsȳQ�S@M��"ȰX@L�"y��@P�0nZ�T@N2�؇ @R���K�@Q��m+@QQ����@N��,���@R�F�O@S����@P�q~H�q@S��j	M@S�r�n�I@Qu�Z{� @Un�)	N�@U�e�:@T2�}c��@V�����	@Wg��=�3@W'^ɑ�h@W!µm��@V�C��h@V�"%޳'@V�S�:�@V��\1�@W���2M@V����}@V��2�@U����2U@U�+� �@U񴗅Q�@U��t�0@Uǥ��v�@U��dbuX@U���h/@Uo-	X�w@UY'�/��@U^��r�@UI�a�c@UI����@U}d��\�@U�J~ @U��	�g�@U�t�3@U���F�P@U���ٽ�@U��?�ٵ@U�ؕ8`@U�K�u�@U첌S��@V!�Qʗ@VR)cڐ�@VN��:��@Vf���o-@Vn  *�p@V[lDmu@VTv�~�@V+�@�9u@V!�_P�X@UÎ�5�@UW����@T�ҶIK:@S�5�@T/HQd�@SՃ��'�@TbjL�E@TnR8�S@T�E����@T=GZx3@S�u�\�@R�����@R�o��Ԙ@R�˫�@R�+I�@R���|��@S�(y}@S'[[�4@Tf�1:C~@U�I�X�@V���l��@V|fX�@Vl��M@VT�j��@U��/�L�@U�\:'�!@V���%��@U���ԇ@UA( �\@UE⷟��@U��Z�x@T��QEHh@S�$�+6@TV����@U��B4�@V6��x@V���\�W@V�����+@V��GL��@Vz�a9��@V�� .}E@V��M'o|@WSsUy@W̚vl͝@X����Q@W���x@Wg{�ă�@V�Ku��@@V��/��@V�(��J@Vk.��@VR1��@VT�b�%@V>���!}@V+וs�@V�ttQ@U��pT�k@U�B"
]�@U��Ѧ��@U�f=R5T@U��)�@U9�@Ug�h۞@T���`ū@R[����@T9K��@T�����@T���״O@T�
��|@T|����@S�_ٜ�@Sw��Ā@S��F�@T7X2��@T2'���@S�d���5@T��у�@Uo�n�@Th{N��+@UX��@T��m��@T���j}@U'_Dи�@U4�{��@U|�YD�@U�L&�0�@U��,Q<@U��ǋ�@U �2"|@T�Z�;$�@T�)���@S�[	�U�@S.����g@R9�C��@Q�o�[&�@Q�x4�@P��]�??@P�, @P���K@O��C@N�@�xmq@MÇ<I��@M*�ǽ�\@L�e���@N薿M@O�8g�@Oq�*u��@O�d�̠3@O�<虔�@L��`
�@P�ͪ�@Q�>�E�@P�+�&|@M�­�=@L{u
�q�@Q���%@Q�M}[@O�����@M�\kc�@Q_/��\Y@P�z�к�@MʈpZj�@LP,��E@M�ƪ�ӫ@LÞ�O<@Q�Ƞ��@T��Cǯ@P7��WA@J0y�n�@Tr�q@T?ǜf�@PyD���@O�zm�@TPs�q@S7�=($O@SS|=�G@T±AG9t@Q���W@@U	)�XM@W�	qM��@W��vK,�@W��F:��@Wh?�M@W@y��K@W��UF@V��S;�@V����@V�3��x}@VUAY��1@V*�t�@V'U|�Qu@V��a>e@UȮr��@U�T�X�`@U��	��d@U�th)f@Ubĉ^;@Uc���[P@U]�y���@Uv�|�<P@U�T��0�@U�Y9"X@U��uH@Vޒ�9�@V	���kk@V��5@U�C��Gt@U��#$�@U�30�@U�r��A�@V*�=}q�@V@m����@Vd��WK@VwEIZ�@Vvs�a[k@Vg	�7�@Vdmk��@Vg����x@V]<�@V,)���I@U�#�w�@Ue�Yܡ@T�� �R�@S�>��>@Ta����@S��L
p@T��:�w@Uh��R;@U�,��M@S�K��@SB?1�$@S �����@S�<� �@S�*�n@�@S.o�64�@R��)�@RF=��@S�땤{�@U0q@U�N	S�@U(	&�\@VT�], �@VJ5��\@U�fe^\�@U�����c@UX��@UKղ�)@U%�]��@T�;-Θ@T�ժX�@Tc�g� @U�v�;:7@Ts�ı��@T\F�{I@V���j��@WtvKu@V]���@U�h�7�@U�a��@Vj\���@W!����C@W]t� �5@Wp����X@W�ʌ��x@X%��6A�@X��e.@W��[Ψ@W?mޤ��@V�lO�3I@V�,׫}9@V���[j�@V�����@V��*+õ@V�)E?�@V=��ү@Val9Ե@VV���{�@VQ6��\�@V+o)��S@V��S�@U�&��n@U���@T�<��3@S���o�@S��W��@S�=b�@T��.�@U�=&L�@U\W�G��@U���;�@U���I�@Uml��4�@Us����@UHj�]@U.��T�@Tԡb��@Uy���@UdH���@U�C^��@U�)]��@U�'R��|@U�.IL�g@U�/5��t@U� ��� @Uh����@U`��}�L@UG�̩@U��CM�@T\�C��@S�Y����@S�Η�@S3���@R���n�@RVî�(�@R��"�@Qw����@P�(I�@Pm9gc7^@PN?g�N�@PKjp�1�@PX���ѿ@P> vR@P#���@P�e�A��@Q;ʾ�qh@P�Y��ޔ@P����(@O_CO<F�@P��>@P.�Ƌ!W@P����^f@Q�*�i^�@P�^���@O9S�vX+@O�5�l@R*��5�@S�ժ(�@S�WF��@P�J!sf�@S�����@U
����@Tn�Όs�@Q�q��d@O�u$r=@Q)ɛ�@Pjt�*��@Vkn5�60@TuO�,h@R�Ea9�#@P�[f��@R���!�e@Ta5S��@R�!�?�@RDn��p�@Tf?W��@SVK��Rs@R��I�H@P�}4�@T�e�P@W��?���@W��{k7	@W�s�}C@W���v�|@Vt�R�@Vu�ş��@V�f�"�s@Vۏ�|�9@V�g��@V�Sᬵ@V���{�}@Vp���7�@V5�n��@V(3^Q@�@V.�]6�c@V��.$�@VCaܴ�@U�&��aa@U��S9@Uޛ&��@U�~u�1@U�@� @V�Ex@V3X5�˹@VQ�^G��@V_����@V;_�s�@VQ�Ț@VV$�d'�@VY(�Pzy@VO5Hz@V^���aO@V���E�@V���Q�@V���2��@V�4���@V��j���@V�!��p�@V{��4��@V^9��k@V�On� @U�Q!���@T�y��\@S���a�@S�`H�v#@S�$�@T�?mU,@UH����k@T.�}
PO@S)�2@�%@S"��ֹY@R毓1$�@R�&�n"�@RĦ4FӐ@RZ��*wz@R+rۉ��@R��ÖcR@R��]h�$@T?U9�N�@Si���I�@S_N�A~'@Sr��^OG@S�.ut�@T]�w�@T��G��@TWa=�E�@T2���>H@TP�{%@T��6O�@S�6Yr:@S��^��9@R��E7�k@R�Uw`�o@S̀ ��@S�32:�@S8�q>@T0c�I�}@V6�߼�@U䵙��@V7�;U7@Wg회;�@Wޕ6��@X"��Ƀ�@X+��{@X/aw[-@X/����@X]5w\t@W���̣@W]q�O!@V�b]-_@VÖ��c@V�eoO��@V�Ŀ��@V����P@V������@V��Wx�@V��b#�=@V�Ż���@V���+�@Vq�K�k@Va�(P��@U.�&T�q@Th�r��a@Tt�5�k@Tr���K@S��1�R@S�~�5=�@S3N��v�@T#���@T��Ց�)@UV�y4�@U���h�4@U>rgzk@U'Ż�P�@U?v���y@U_&��b�@U�T�)@U�E�@V1���@Vea��C@V/AmɅ�@V]om� @U�m�rY@U�0-4g$@U��
��@U.+� (�@U0�@T�z�N�P@T�/�
�@TW�š�u@SU�t4�|@R�6dS�@S-3|	z�@S4�Q�Y@S�l�2�@R�wQ#�@Q+����@Pʈá��@P���w[p@P��\��@QV�#��@Q@Y+��@Qc7~2��@QB1�m��@Qqt��m�@Q[��8`�@QI5�y�@Qb��\W@Q���"H�@Q���^��@P����@Q���L@Qʐ+x'�@Q����%@R�tf��m@Q{�Rõ@Q����@R6�k�t@RTi��=@S��=�@R�DKy�@S��ޏ3�@TJ�>�U�@TW*�y@Sk/����@U6X��E�@V���@V\V?��%@V���*ۨ@V���0�@TN���V@S!���Ū@SK��M@Q����@R�<n��7@S���@Q���1�@RA@����@Q���E|@U^N�@�K@W�=1�|�@Xjqx2@W���Y�@Wh�`Z
u@U�vN%p@S�I�P-�@U�8��@V�Q�>�c@W)E�>(#@W��8�i@V�	7l�@V�4]տ@V�~W��@Vl����@V�5WA@Ve%$N�U@VXw�	@Vk]d�e�@VI(�H�7@V3�S<�{@VgG6L�@V}�Z��@V[\�Q��@VS�����@V{&*��@V�)�yF{@V�����[@V������@V��b�d@V����@V��cl�@V��Q�q�@V��haB�@V�����@V����@Vˍ�(~`@V�7�6�@V���m(@V�e�0f7@V_.v�`�@U�
c�` @U#8�#q@T.`�8)D@S{��#C�@S(�����@S�@Y�S@T����9t@T*d8A)M@R��Q:#\@R���T�@RLO��@R@o�xڄ@RS�$T;@R1b=r N@R4\����@SQ���@S~��3a�@SJ;��3@S���o@Sd�9L[�@R�.j���@S���@R��ü@Ru��J\@R���/�@Ro��^s@S�ή��@T�?��@S�;�ef@T���@T�wJ~Q@S�"@P��@SI�%t@R�L��z�@RT&6�dS@RO��@5@Q�(���3@Q�#��O@R�<뿕�@VTz��@W���r�@X8W�/s@Xc��d-�@XZ�Ⱦ�-@X:���@W�ǂ	�@W�3H|�@W>���@V�Q���3@VӐ&wz�@V�	T�`�@V�ǀ���@V�,�M@V�t�)(@V����k@Vԋ�ə�@V��^�@V誥r׽@V��"Ry�@V{� ��@V7h�C�4@T[�K�'@S��Kk�A@S����@T=�^�5�@T_e�ާ@SP<�p��@S~��Z�@T;�r�p@T���ޙX@T�ݓ&�@Ut(<���@U_��5h@Uw�\��	@U�7��{@U�I���@U�F&��@@U����@UU��@V
����@V����@V���u�@V`qA�cS@V��)_�@V4��٦g@U�yl�T@US*>��@U�ހ\��@U>Ou\|@U6�;!�@TB�&�Y@T:#����@S�d�O��@S��0ϒ@Tb�&�K�@T�uD@��@R1*���@Q�vg'_9@QZ_i�'�@Q$~���@Qzok}�Z@Qj��@��@P�]c�@P�En�f�@Q���s@QU�_G@Q�.�D��@R���\)<@Sa����@SZ�Ȋ�J@R�1�v�@T��Xt@SG�_F^�@R�tʇ�@S	��{��@S~��M @S�
���@S�r��i@S�ũ���@T��n"�@R퀤zT�@R�KmYȄ@T��˼QX@U_��9��@Ut�yR`�@T�b/�l@Uh�P�8@U����lS@U��|�`@UQ��~�W@SՖ���@R��*m@R���}��@Rlf�k@P��Z��@MI_����@O��oO/�@N��ù�@S/�xf�@V�� Č_@W�M�^��@XU�tP@W�0~Yű@V���kK�@T2�|c@Sm�R��@S!%	X�@U����@W_Wi��@WV	��@W9|�~u@W")s���@W���{@V�0,��@V��@\�@V�����@V�:�MG@V� ��P@V�6a*�@V��FAG@VɈ|#�@V���,|=@VK�鼽@V ��;�@U�([f��@V}&*=�@V!��<��@Vx�6��@VΧ�<>@V�k���4@V�±���@Vۮ�J0�@V�b�gl�@W
TI��@Wd��}�@V�Tm�}�@V�l��@V�݁
O1@V��,�9�@U� ���@Tq����@T5a���@TM��
=@S����@S��4�@T�|vY@S�u����@S�v��G@S0�nqU@R��Kn4�@S!f����@S��lށ@TOS�4@S�;�s�@S�<�#C�@S�q���@R�V5��@R���,�@R����m�@Ri�+?�@R����]�@RYb�b�?@Q��Eh�@Qeѓ�M�@Q;&A@Qu=�@R�MPn�@S����m@SU�e�S�@Sn�!"P@S��`�@S�$-m�Y@S����_@R}���2@Q��<L��@Q"?�̔@Qd��V.@R!v"KU@T,�'��@V�
��)@X9S4ե�@Xz��L @XU�6>�!@X#�=�!1@W��+��T@W�09��@Wxqx�@WO듂��@WF���Vq@WZE��@Vڴ�ܱX@V���̪8@V�6�#�@W?l�@V��n%�X@W�B�Wa@W9�㲘@W	�)>�K@V�J�I{@V�2��q�@Vt�cV�M@T؈~R�@T#3�<�@S�[��@[@S���`E@T@���@T��:/�#@UX�$��@U25U@U^�.@TyJߴM�@T˥1��@T���^ �@Uq�4���@U�3��@UD�	@P[@U��}S!@UrmP��@U~����@U�F��>K@VA��݋@Vm{��/@V��c���@V�
7��X@V*>&}��@V.�`u�@U��q�h@U�@ҟU@U۲#�c@U`9b=�@T�´��@T>#V��u@TN����@S��\��@T?l��6 @T��{�80@T����';@Se�# Z�@S"��n�@R���o;y@R��ܳ�/@RАud��@R�{�y�@R�����@R�E�M�|@S���w@SNaA�RP@T�ݮ�#\@T?����@Tb-φ�_@T�$����@TP�:4y@Tx�����@T��8$ƹ@T?�э�@@T堄���@T���`��@T�v��@T ��4��@S��V]�@T
wJ�6@ScA�I\@S��f��@S�Cok�q@T.�@d�@S
>��?@S�I�R�x@TE�#@T���MP@SfIm�k_@S)���@Q��,Vo0@Q�?�wC9@S�%�Yml@S���^@O�C<�@M??��m@Q �<�@T�����P@VLV6å@V�a!`@W��^��I@W�H�xd@W/���n�@Sm�篋x@S$��Ce@Tk���}�@Th؂yG@W,fQ�m@W��*t�0@W���6�@W�؄�3H@W�uNh�@W���/��@W|�3t�t@Wh%!]�@Ws��|�(@We=�R�D@WJ��L�@WQH�jf�@W"�� �@V�#��w@V���Ǉ@V�GEr�@U�fڌ@U5ôh@T�}z��@T�	��.@U�*����@U�����@V9�2�@Vб���,@W�C���@W�Z��@W���@W 0z�:�@V蟜a�+@V�mZ�ū@U�V�%A�@Tǩ���)@T'P��e@S���(��@T�.9s�@S��D��@S�,z��V@S�2�.�@S0hf�$@S�i�@S���C@S���Ԝ@S���E}�@S�'q�@So�pUt@R�C��!�@R�B�s�@Rw��:g@R5�IT�@Q�ܢ��@Q�$Ы0�@Q�tA%!@R(oٺ�@Q�b=ͣ\@Q$�O���@P�^A�M@P�8� ��@Q0X]q�%@R���5@S'�A��@SvУ;(@S;���1@S���v�@Sc`��]@Sv��D��@Sgd�@R�D��+a@QtJ�@R~Z�h��@V��0��@W�Oq���@Xp#���=@Xm*N���@XSh��B�@X,@@�@X�Ȅ^�@W��'��@W��Yn�@W�$�ǿ@W��M��@W�oƄB@W�+!7�X@We�ݭ9�@WD�	�-0@WCrӆ@WEfT��@WD/�s@WH�Z<��@WK�>[�@W0$YP�|@V�.�tp�@V�>C�$@V�`��G@V��IHT�@U9��5~@T{�8��@T�� ���@SO�jG��@U>0d��@Uo���@U�`~��H@U-��X�@T	=D�@@Tw(�ϊ-@TT�S�@U
O�
�@T�m��l@T�{���@U�IM[a@U�\���;@U[#<O�@U�X!�no@U�:=�@V'�;�#�@V-v(qr�@U�^Ѫrt@U�/(&9@U��'��@U��?�H@U����E@U�\l��@U�&�P@T�C��X�@Tzw����@T�S�R?@T7�F!@T�� �L�@T���~<@T�[��t@T6�α@S�����@SUnK�̍@SO���}�@SJ+���@R�M��@S)v{�5I@Rᾁ��l@R���@S�����@S��4�?@S�nn�eG@TuVTP@T���Q�@UT�ר�)@T�c��1@T����@S����@S��V|Y�@S�� �H@S�P;=��@S:
���u@S����@S��^ɸZ@S��YܩF@Sڔڃ5@S��t @T\:��2�@T�o+�A�@TR��:�'@S��`F@SJ#f��@R���gO�@S.�l��@R���W�}@RPp��@S�K}ާ@S-Gf�{@S�H�~1@PK��$OL@P'ȂNɹ@Q�N5yb@S-��A)�@TgъH�I@U^��x(m@V3�1��X@W;���'�@V�?)A��@S�l�$e@R�B6v��@SD?y�)@V�Ur�L@X"��9�4@X&�q�m�@XӒb!�@X5��-�@X>�v��@X(��j�@XiOޔ@W�`㩎@W�m�y��@W����L@Wr*2�O�@V���9��@U�o��9P@U{�4�1@U;Us,@U�vz�@Um�2	(@T����@Sʢ�)�@S��9m�@S�1H^l[@T>%9	V�@U�lǃ�c@V�І��@V�Z��C�@V�g(o@Vє�6I�@V�K��@H@U}�7�9�@TB���
=@TBr�2*@R�ݡ$�@R��	��@Sp� ]_�@S�(�Y�@RbbP��@R4���}	@R��c��7@S�n�J� @SA�>df@S
���;�@S��f��=@R���s(@R$�p[@RC�M� @Q�/ޗ6�@Q}����@Qcw�#�@Q��"$4@Q������@Q*S`�,p@P�����y@Pi��G�@PSI�@PP ;o�@P�����@QG�L��@QƘ^�/R@SIA �\@TIt5K�@T!��{�4@T'����@S�Ҿ'��@S:����@T�)��Z�@S���`@R1n��N�@UMt�l��@X`���@X��!n�?@X�,�Dg�@Xd��P@X:8�O֝@X* N�Nk@X�� �@W�f�6��@WҴ&�A�@WĒ�:�@W���;c@W³ۂ�]@W�7���X@W�_��X@W�����@W�<:�d�@Wh�Z�@Wr"��7\@W~Q���@Wk��l��@WN'�+�g@W3K)y�[@V��>_]@W6d�hk�@W9E�i�@U�O��@T��nlL@S���w�@S�sʩ�-@U�_&��@U��O��@Vm$�:;�@S�σ��S@Rg,���@RZ�ukt�@S)����@Sqs�Q-@SX)4�7�@T!m@U2\���@T����@T����*2@U��Eu@U=���@Ua�u,ϣ@U�x��ј@UThT&'�@T���{�@U%0h��@U9z�}@UUn�kI@U"X&g@T����p@T��\A{@T�5�_`@TN��\�@T�u�r�@T-ش&-�@Sǻ���
@S*� �k@Rdvv��@Q�Ж�Ϳ@Q+�f��@Q%m^��@Q�O�e 5@Q¯�;G@Q�$�U@Q�Ǆ�'�@R>nL�s@R8�߻@R=�'@p+@RM�q��@R�4J�L@R�DV�@R�CC��@R.�J��@Rk�#�@R%�1J�@Q�"�]�@Q����@Qu�.�z@@Q�πK؇@RH�z|��@R���\z\@RK�0~�@Rk���&@S(�:�X�@Sz��_�@St�H�4@R�T�$@QD��n@Q��PO{@Q5�s�,�@P�to���@P���׌�@P�/H�@P��:�@P�d�)@PHd���-@P-g��=@P1�b97`@P�<��n�@Ql�[��@Q�3l�@Q�l	z��@Rh�����@RtN4�=E@S<^�(�@S� '4��@S1h�9U�@R�&Xْ�@R���_c�@S�Ql��Q@T����>�@UTb���@W,E���@X/�C@X_�5b��@Xm&�V�@XXI��O@W��]�k@V�e�ހ)@V���@UTSz��@T���:�+@S�"jgN@Sh��V�@R�>=�X(@RUzV���@QҘ��X@Q���gk@R2&1�-@Ri@[`:�@RƉbar�@R��
\�
@T:���n�@T�!�-�@TL�<�7@S���C�@R� ���@Q�w���1@R.�n��@R $�ͯ@Q��%Z��@RA�(�`@R�s�.�@Q��{���@R(%�	@QJ~Zޙ@Q/M���@QXZ�:�@Q�g<su@Q�DW��K@R|֢a-@P�4�HWQ@P�DB{@P��A�i@Qc�`�c@Q��U�li@Q���ړ�@Qר�8�@Qb�^�G@P��l
y@M���!��@M���Eo@N^5ܪ,@O�	���@Oݲ��&@P��#�b@Qb6˷L@R���PM@Tq4+G@T<`M?@S�q�;;�@Rg�t0��@S��-qd@T���e�@T���-m�@U-\g�ϩ@W�p�h'@X��lf�@X��?�_(@X��u�@X`0�?�(@X3s＃@V�|�1��@U9�?���@S��m��\@VA�h}e@W.��䘥@W�t(b/i@WϨ"��u@W�"!��@W���4{�@W�$�d�x@WĠ R^_@W�PV^[�@W�m9ْ�@W�o�O�O@W���vI@W}s'r�@Wq�.&�@Wu�>�y�@Wv��**�@We��vcX@WU�㚌8@V�0�1�@V�l�7� @U�<V�;@WA���e@W�:|��@V��Ls�4@S� :d�'@R�9v%e�@R�WMtM@Rʥ�`*N@RlǬ��@RC�{�h�@S��\�C�@U&��KT&@S�9+�2�@S�T�;�@S�Ŕ�ы@S��i�F�@TQQ�T��@TX�o��@TKx�13@T�F!�'�@T]���v'@T����-@T���Sߍ@Tu�h	�@T�%S@S�ଽ_�@S��5�Y@Si�;�D@SO1�r8�@S?@�b�@SH*�7 @R��+��@Q5L+c.@P�Z�0@Q,&vO�o@Q_�����@Q�Ͳ�@R&�ۺ@@Rb���@RE�L���@Q�>�Sy@R1(�z2@R��8�@Q���@Qu�¾��@Q@��q@Q��v��@Qs�����@Q9=��@Qt?��@Qu�x�,@P�5\�>@Pw���@O��p���@O����D�@O�H7�jX@O�+I��@P�끝�@PD��&�@P��q��@P?�L%ӵ@M�y�}�@L���ll@MU��x3�@L� ��@Lr��#�@Ob翣@Kn��u��@I_h�Q�@J�˕�sS@I���C��@J�^�8`�@Mm6-(�@P���"m@P���:ɬ@Q�2|lyF@Ri�]]X@S���M�@R��3>>�@R5t���@Q����@Q_�#�@QZt"em@Q@^Bŷ&@P�5�ǰ@PQ缨_@P�1c@P����@R��k51@T�.L�$@UW!�]I�@U��߬m@Uܯ��'@T�ҟeF�@Ts��vM@T	�/�@S57�C@Rb�Z�$@R5ҟ/��@P�s�
s�@P���/c_@Q!��J�m@P�����@Q^j5@P�����]@P�i��� @R%�l@P�:��ǉ@P�X���4@Q&I��0@P��G�I@P,�:|T@PV]M�if@P��E^�7@Q_����@QW���Re@Q��"��@Q��Yx�@Oʮ��Y�@P�'p�@Q@�5��@Q�f��@QV���d@P�8ci$�@Q8�_w=�@P5�%8[�@O�hm�@P��c�e]@RB��R�@R����=o@R���,�@S)V!�x�@S�A_
@R����|�@R%�sG"3@P� ��@M�-9�@N4VLY<@O'�8�<@PG��c��@Pڗ�g�@Q�S���@S~�Sc�@T?�����@T9��?�@S3�5�)@SK�@2�@S��, ��@T6�9T��@T �2@T�f��@Wr²�w@X�C*}�@X�ߏ҂c@X�D�ڙM@X1���i@U:R�@H@Pg��T�#@PNL�b�@P+4U��9@So59�=@V�9�E{@W��|��@Wԓ;��@W�/��@W��P7d#@W�]T���@W���$�p@W� �@WӔ"<�Q@W��Vw	�@W�]@�Q@W���@W��>�Rm@W�%�-��@W�'�/��@W�F}%M@W�H��4@V� �-�@W��/iE@W�P���@W}âT@W�ܶi�@W�`�4�X@V�W�t�@U~w��@S��%U+@SV��9f@S����	]@R��w��@R'��jS	@R�T0T�@T��2��@S>��0��@R̚;nC�@Sc�X��@S& twB@SE�	�@SR�Me
b@S��N�G�@S��E�4�@S�X;9�$@SDP�93@S/�Y�Xb@R���j@RO�����@R#P���@R|O_?F@R�D\E@R�V��s@RV�t|@Q�5sp@P񑶮 $@Pr��2$@P�}��ar@PY���0@Qd.ޞ@Q��#�@Q�"���@Rc�
��@R�47�i@R:���&@Q��Y���@QW]0�N�@QQҫ�.�@Q�=��@Qu
@Q���5`@Qò�"V�@QR�ց�@P�|�z@P7�U!L@O�ǒ�ʆ@N_:�OwQ@N�%����@M�U?A�@L���ZO�@L|���2@LA�[�A�@L�8i*@Jwo�r@I�O�S/@J �-�@L�s{*�@PKJ!q@Nw9�X*@MƅW��t@J��l�@J��#�U@K�o���@Iي�`��@J:�G�l�@LU�i��@M�Nr�V�@O?z�Q�@O��uiz@Pʄ�&�!@Q�>{��~@Q<K~�X�@P���DO@P��8ێi@P�ƧV�@P�"T@O�1�k_@O��Z4��@O�b��UT@P��ρ��@P��� y�@Q�:�?@Q���@�@P���L@O�1?g�|@P�;�E;@Q�s��@QU@؝.@P�}0.��@O�i�%�6@M�Z�7�@N�c��y@OA��$�m@P:��u��@O磓:@O���*�U@O*��ѝv@O�aVW�P@P�o�.�@PQ���4@P���_�W@P��ƈ��@PVT����@ObI���@P�mz��@P3EJ�i@PE"^0ę@P�G����@Q'Om/(u@QVO1`�@P���9�@P'�-��@P��{�S�@P���觢@O؛����@P4�q9�@O���]�U@PZ���[@Q��Y)��@R���@R�pz�]~@SP��vŜ@Spf�_0@S����z@T(
\W�@T ڵXF@S�o��$@S �P��@RuJ�6�N@P�%.P�l@O_��>��@Q��N���@Q�H�aC@P��i�K�@OVGM@R9jTY[�@S+\�F�`@R�jb��@S܁�uJ@TeV�2@Sgij�>8@Q�G��F�@O����@Ow�_E@R*���@V�3�[/�@XKQ_Ą@X u��r@UK���@Q�^$Yp@OƗ��2@Q�3�z�x@Q��s�@Q�^{���@T�2���@W(�T���@Wֵ�[k�@X�\��@X����V@XY`)�:@W����-5@Wͷ��^@V��v��
@T����@S�����y@S����c*@T��)eA�@U���$6�@W�U6	�@W�sIo�@W�۰F��@WM�����@W1�ƞ��@WO���]@Wצ5���@X� � @W�<���1@W��9�uJ@W�5cj@We���~@Ucd?�@S��5��!@Sz�nc��@RW�5�0@Q��ﴥ@RL"�e��@R�Mz$��@R�=�8J@R��~�xI@RM*K�}@R.�xx7�@R��;���@T\@Fݡ@T�����@T"�N���@R�B��7@R}��I��@RK
�O`G@Rc��79�@Q���*�@Q��[<T@Q�_�5�@Qϣ9�:q@R ���@R	���z@Q����@Q��Ŧ�@Q�SZr&�@Q}����z@Q�c+B%�@R$���@R��Ei@�@S1�"���@S���\�@R�A	C�@R�̄n�@Q�Q�S�@P��`9�@Q��`t&@Q����@Q�%��V@QJ��_ @P��Ʉ��@P0o���@OMo_]fX@OJ�)���@NS��jȓ@Mb�n�Oe@L�����@MKW>��@K9�Z@I
�M�@G5U�V޳@F�p)���@EV#Xޡ�@JrG�A�@P�m"Ğ�@N�[GM�@L�5K��@M����3@Ju��-�@Hu�����@I�ր]�@I�@��D@J@�X�F�@J<2�d�,@K_Y'�@L/��G,@N������@Q	`���f@O.�'2��@M[[<�~@O����:@O?�tBm@Pg2e��R@Oܟ~ �@P���P�@P�yo��R@P��@Q/����@P��V���@Pr8�Y�@O�݌*EM@P��Ȧ��@O�+���C@P&�Fd��@R	���@R�0�$@P�7�j��@O(H̸�@N��@@N��7o�@Oh�Ї�@N�1��@N�x�*�+@M��G��@MonuAҬ@L���J8�@N.���@N�^����@N�i���@M�J��q�@M(�YD��@MN�~^@M_�9���@L� Y�6�@N4��v7�@OK�Z;�Y@Oq�zMd@OjoZ~�@N��2��@N*N�Vz\@M�ġ��a@O:�c��@N�wS;/@OBzPܒ�@P�V��,�@R���!�@R��hR]�@Sk�UN@R�7nF@S6��)L@S.ct��0@S��6�GV@S֚�Ð�@T{��D�@T�5�Ü�@U��
�@T��ǩ��@S�U+��@R�A����@R�6Z�D�@Q��<�[�@M�,��@M��6Қ�@Oj+�i�@P��P��@RSLIK�@Tt�|@�x@T��
Y�@RX8B X@P��i���@PIW��~�@OV�Q��@N�t�2@R�Rl�Ģ@W�U�#@U��a>\@P�$$B,�@O��+�^F@N��)�1@Q���T@R.�v"�>@Q����@R>��z��@S��[t{@Sb�;�@T�,c��@U��UN��@WL��K�@W�G)�@W�o̩�\@V8"	2��@UU��I�H@UO����@T���9@S�r �)Z@Uc�-�s�@WL�N!�r@W�i��@W�\�A@W�0��]@W��@ߒR@W��̘�}@W��W*�@W��@��@W��.}� @W���10@W�?�z@W���i�5@V�����@T�h�6m/@R��r�q�@R�伈s�@R6�ʥ�@Q���3�t@Q��C@Q�zEB+�@R���@R*ʪc�@R@�6"�@RzO�e@R�,����@S� i��@U!!�� @U�8�=W�@S�__�b@S��)��@Swr��t�@R�o��!�@R�I�s�@R�D���@S'� >�@S!�yg|@R��Q�b�@S;Lж�@Sd��E�@R;@�.�~@Q�}PM��@R�2��<7@R�ZH�K@RY�D�'�@S���@R����$h@SC����@S>�)��@R����K@R;"��3@R��1}�@R��8&#�@R p�{V@Q�Y<�'@QF%,	[6@Q��`X&@Q'�K��6@P�\#x@L��}.��@J� ��[-@J`���a@HG����@G��#`�@F5<�]K@Ey��h�@De;���@C>$+�@G��Yɾ�@Qq��\�@NF�Wc�@J��}�H@J��G^�@E���}�@D��ԕ@G^�MZ��@Kx�<�@J�͵�W@K�&�! �@Mb:�M@N��b�?@J+>�
�@Ln8_�V@Ob�Gd@Nw�9�@N~���j@O.��o�<@PPy�g@Pr����Z@P��y�@PS(8�`�@P�/���@RkI�'n@SxAk�M�@Qik�<��@P��ێ��@P��vq@Q�C�ۂq@R�N�\�c@Q�4O�w@O�	|�0@N8
ߪ�@L[�n:`@K� ��0@N�J�f��@O���*@OCf�Q��@P?�{�:F@Q,����Y@P�]�J]@P) ���r@Pϝ�:4@O�@�r�x@N�$V�h@M��A��@M��/Ki�@No����@P�B<6l@P�Ŵ���@P���l3�@O�`
r^@N�	�d�@L�F�6�j@MLJ�Bp�@OC�)�"@P���&�$@R�yL�B�@Q�0��|@Q���Zw@Q��?W��@Q/�'��@QYl�u@QHk�i��@Q؍	�@RWB�&Q@R5�3��@Q�ݭ�!�@Q�̜���@S1�?�ͯ@S��@T��0��@UZ8� �@T[�ԋ��@RY�_�~@S�t6r�@TL����@Qr�]u @LD���@Lxmq��@R�w��u@Qf��@RU	Ӟ� @R���@Q��l^�@Q���'@P���+�@O�$�F�@Oވ��@PPا�W@R3:r&0@T*�q8p�@Q��m���@N�ǭx@L�!����@O�'��x+@Q`@���@Q��b4�@Q��S�,R@Q=	(4I�@Q��Fn@O���0�@Q�b�{�(@Rh���P@R��0�@S�2�^s@U^��g��@V����;j@W�Wci�@W�j��>�@W��O�*�@W�B_u5_@W���+�?@W���$�c@W��_Ǎ�@W��O�@W�6e�$@W��k�H�@X#g���@X�]�j%@W��h�@�@X�Ӫ�y@X�d?݅@W��*�1�@W��=��$@WI��&@V1ہ�@Tg8/:@Sz�5qh7@R˚�4�@RW5Wgk�@Rw*Һ�@RL��d(@SbӶ5�~@U,��;��@V�U2��^@W9�E|@W�LtV��@W�mhpR@W�7�V@V����3@V��C5�@VU�wPP�@U��0lY@T��=m�@S�͈�,�@R쪆t��@Ri�k�X�@R%��
K@RSr�h@Q}Wxɕ@Q��v�@RvXk$�@R�I}��@RW�
�7@Rs�9�i@R�Y��V�@R���<@S��|@R˪zM�@R�?Te�@R�P}O)A@R��B�&�@Q������@P�mtTl�@P�1�k�@Pr(�3x�@Pl�b��@Ql�73��@Q��'�=@Kf~��o�@O�b�R�@P�	Dt�]@O��,${�@K[y&�r{@G5���@D���o@D��[��%@E�h�@H����@P��Α$@P��{��@NE&Y��@LT|Fx�X@N߉�
�@J��v�@Lk��#�@O`��Z-@O�]�L@Okj��[ @M¾$d�4@N1*���g@O?0�m4@P�/W�z@RC��H@R���OՋ@R�D��I�@R�W*��	@Q`��B@P;H@N��'5e/@Np��r�@P�cc@PՁI\�@Q,���@Q]u_�b�@Q�1��@PŬG�R�@PZ3m+�@P D�w@O/���@N$��#s@M��XuB@M���@M�5��X@M����ѓ@O�����5@Q-�
ې'@R.єI`@R��N~�e@R櫮{�a@R|��@5@R)�>RL"@Q�L�8�@P�!}�ї@N�@��\>@N���5@M�U�Dq@M��˂�<@M���OQ�@L��p,@L90)^^@LTg��<@MY�>ʧb@P�0pE6@O�|�~��@O
�(AhS@O��T�l@M}���R@MF�$�w�@P4�uP�E@Pw5@�+�@QH��@R���8@RB��,�@R`RK�<@Q�<�f�@Qt��f�6@P"�O�@Pᜧq�@R0Y ��@R�.P8�~@QA0���@Ox�D�c�@P`)�5M@Q��\�z@R|.l��O@R"�>;@Q�(.R�@P�4+.Ab@Q�s�=��@R��h+}@Qķ��E@P�~u���@OVX�"i�@M�f<3W@N1h{�\�@M8�UVg�@L�7~�?V@M�bu�@Q&��4ƶ@Pm��k�@Q�
�S;@N�rD��o@MH�7S�@P5<'X�C@Q���Q@Q��3G�@R�<�_�@S8*�U@RY���Z@P�Ƴ�ܼ@OOʚ!�H@Lg-�d�@M����@N6z�3�@P�*!�T-@Q������@S��l�/.@VT�a^�@W����2$@XKz^I!@X@�ڷ%�@XB�$�a�@X:��Z��@Xc R�u�@X\��)��@X7�Q�8�@X^Bp_o@X^(@�6@XTDF�{@X_����@X;����@X3��B�@X�V�[�@X ��~�@XF�ѯ@W�\����@W�6!��@W�!��c�@WK`Ƈ�&@W]�c}UL@W�f�l�@X�L�&�@X"D�v�@X:K�Dg@XTq���@X<XI�>�@XG+���@XA�-��z@Xi#�)�)@XX�O�*@X��Ds@W&?�R�P@TS>�~z@S�S���@R�$��@Q�Veid7@QS
u�@Pŕ�=[@P6���@P;�˒�@Q6�!���@R���&m(@R\��5�@R�l���@Q�0�t�@Q��I�@Q�_��@Q�[�3@Rг�u�@R&5vH}r@RxLg��s@R�E�-@R�wL �T@R+��-�@Q��8?�@QSQ�ͱ@PȈ��5@P�m���@P���CN@Qcqa%��@P�K78�@P���v�@PyX�pm@P8��%@P�F���@P���b�m@P�x̙�0@P~�N��@Qo|��T@Q��-˦�@QexE`{@N��=@M{#� ��@M���q�@M}-ķV�@M�� �\@PXݖ���@Qq����@QQR@�[�@P�B�X+v@QK\|�r@P �D�@Mo����@K�V�|˟@K��| P@KZ��r@J t�Ю�@H��u g�@IN�����@I@)�H�@I����$@J�Έ��J@L+���@L�sB�np@L����6-@MY���`@N�h�_-@N�$�v�@M˺+A@MD��#@L���@L��6D@K���@K����@KV��ɮw@K�zb@5�@K�t��@L(����d@L-�#��@J����\�@Jy�Qa@JO��H@Jp��6��@J}?,B��@J��oHU�@J���pK@J�wOy�@J'��b��@I�<�q��@I��� 
g@J�����@J��;CW@J��њ`�@K�U<u�@PP�q
�@Q�H+~R�@P�n��G@P���g��@QVֈ�9@Q�hR��@R�Oy�@Q�ݨ?oq@RA�չ�@R*$�z @P'�t��@P7SW�y@Qd���@R{9vI��@Q���L�4@P�\��@ME�N�v!@O|6|q`@Sh�-���@P�G+"_@P͛���j@P�%b�s@P��2u>�@P
���@O�6KM��@Oq���@N嬼��@MuS�@M_2/���@Lu]�nY�@KhD��I@KG�@L`��k�1@M���ű�@P���7@K�$>V`@M"�ƨw�@M�
ܑ8@O���[<	@Pں�X�@Q���!&�@RO�h0*�@R��_j�@S;���͇@Rá:'��@Q&4,�)@N_�\�[@I��s��"@JX*�%Y�@J�)@J�����4@N<L�Z�l@P�-�h@R!+��6L@UQBP�@Wh=�aM+@XKg��\Z@Xp'B89�@XWBUZ@Xeb J�@XO�I�!�@X]&@��q@X��#gu@X��	���@X�P�5�!@X���O�e@Xt�u|[@Xr��>�@Xb�y���@Xb9YM[�@X`X���j@W����Z�@WM�̂��@Wظ���@XQX\ͪP@Xq P1@X��y��C@X��O��@X`��֥�@XE���r@X>8�B�@XC�q�@XZjU��P@Xv:j��@X�E���L@X��M<@X��m��@Xr���@V�l�:��@Tbahv63@R�4u�5@R�y[元@Q�|���@P���Η@O���Tc@N�\ ���@N{���@O<�2�@P �.o��@O���㷭@O�,�]��@P3Q1��@PB��E@PK$6�5K@P�>���@QO���@QƳ��a@RY��@Rpp<\�@R{��T��@R�4z���@Rװ����@R���}��@Rg��~D�@R��/0@RR����@Q`g��k@P&W���D@P&�B:�X@M.�}!qX@L�2Yl]�@K����@Iz8���@I��]��@J��j��	@I�p=sa/@H�l��*�@Gڔ��/ @G�uݞt�@G�x�#��@H��=�~�@G�,4K@I��G:�K@Kߞ�D@I���$<@G�c0��@G%���%k@F�h��=@F�O�!�@F����3�@G$�5P}@F;9M�]@Fl/�xO@F�e�j#@F�_��c@F�=9d�f@G(m�.��@G��Io�@H�����@IH��a\�@I��vV�@Hx��@H�p��G�@IQ
,@Ih�����@IU9`^��@I�#8�"@Ix�ɰ>�@Ix�N�;6@Il��_�r@I�l���6@I�FYX�J@H�p�
�t@HC��	@G��#m@G��b��8@H�}��У@Itʙ�J@I ����W@I XER��@H��r�&�@Io���q@I��"��!@J��Gd@JM�v̆G@J�+���@J���.�@K^J,�9@J�e���@J�@�0K@N�Q?�N@Q'ϴ	H�@Q���@Ph�w��0@NuR���@Olmo��@OĳUO_@OV�\'!�@O�3��@Pz@��F@N�g�K_@M����8u@PlGe�@P���}KR@Pk��\d�@Q�Z��0@P� ��@M]DS�u@O�Ɗ�y@N!W���@L���o@L|�K|5�@LW�>�~�@K���o@J�xW��@I�ÿ��@H��L��@H{�{UB�@HK9E���@H*'���N@HU�Wo@Iϔ�Sn�@K.�k5V@MP�Xd�@I�+�q��@Eu��b@IB��� @LOѩ�V�@O\��@P�/[�Q�@QÃ���@R.��.
@Q����r@QB�0O�@Q8���C@P�I���@N'k��8�@H�G��#@H�x_mr�@I[�u�@H}Ź��@G�I4�F@Jk�!`��@K=)�xG@M4�z@Q��)�@UHL���@W�s#5@XY~�ys�@X��P��@X��,�T@X�t��@X�5����@X�N�2��@Xٳ��;+@X�d�`�@X�y��N�@X�x�o��@X�
-�b@X��(�@V��ju@U����%�@T�F��@S����v@S��2%M@U�j�W�@WBu�$�@Wڒ����@W�L�t @V���w�@VA�%"xt@U�S�-?�@Vo/1��@W]hV�\�@W��\��@X6�d-�9@XE@0>}b@X(1��@Wߝ��B@Vp�80��@U�(��R@U$�!��@Tj����@Sb����@R����@Q��R��@PP��t&@M8G��ǟ@K��z��P@J u2��3@J�q���@I�|?�[�@J�02��@L����@K
���@K�P��1@LkY�!@K�ĉ��M@L6`���@N6��0V@N����@M+�G�!@O������@OM-^�\m@O��1�k@P
 �w@M��P��@M�x{[@O��i-F�@G�V���@C���K�!@B�Ppr�6@B���G�}@A��
}�3@C%���S@C:���"@B�X���@A��6�]@B1�A��U@C�'��1@D�	bk�@I�9�dJ�@J�$1v"�@I�-Z�Ar@G����)@F\���]b@H=�Q�E�@GHuh�u@En$&i�@D`�i�,.@D����;�@D�����@E�y#�&F@D�Q��\@D �S؊�@Dؑd�sd@DO���n�@B�e>�@COki�:@D�9>��@D�{�C�@EOL�S�2@E��_�@FL:5fx@F��{�:@D��D�B_@EKR��@Fi���Ju@F>�P�@Eƍ+]�A@Ea�����@ET�Do�y@Fx�`\\6@EŽ�Z@E'k;�c@E��$�w<@D��X�~�@D�D^�E�@E+Z[]<@DC^D��@C���j@D6�A��	@Em�x4@F~�;���@G=H���@I0.˵�@J�ŋ�@K<t����@I!<J~u@G�A����@Ip�?��@L�O+_M@ON@7R�E@Pv���r@P}�47'�@P�+���A@P�ZG�%@R/BB� �@Q����:�@PMJC�@P�lB��@P*����@Ps!r��@N��c[�(@N���׉�@O:G4��@P!l�߶@P�$�f�@N�����@N��ń��@L�m��G�@NY���ژ@M^dMT�@I(��}�@F�^���"@G�NgOΎ@F�x���@G���$}�@FE�Θ�@F#���@F�YB#�@Gh��4�@F��T�W�@E�Wxi�@Cۏm@Gh��1*�@K{�o&�@M��V�@O�?L��@P�<��;@P��Zm@P.[�8.@PV$5��@O�� ���@M�Gj���@M��^��@K�[��@H�͑�0�@F5q�ƫ/@E����@H���RU�@GȉjC�@F2a��@FP���@F�$]�7�@H�E�?�T@LjH��@P.ˣ�@R��ӈ�@U��-5�@X���~�@X���gj���8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     