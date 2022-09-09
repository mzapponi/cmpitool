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
add_offset                   NCO       `netCDF Operators version 4.9.1 (Homepage = http://nco.sf.net, Code = http://github.com/nco/nco)    history      qFri Sep  9 15:27:33 2022: ncpdq -a lat,lon clt_MODIS_surface_JJA.nc jja
Fri Sep 09 14:28:10 2022: cdo timmean clt_MODIS_surface_JJA.nc jja
Fri Sep 02 14:51:40 2022: cdo splitseas Modis_Cloud_Mask_Fraction_ymonmean_cmor.nc Modis_Cloud_Mask_Fraction_
Fri Sep 02 14:37:47 2022: cdo mulc,100 -chname,Mean,clt Modis_Cloud_Mask_Fraction_ymonmean_r.nc Modis_Cloud_Mask_Fraction_ymonmean_cmor.nc
Fri Sep 02 14:24:28 2022: cdo remapbil,r180x91 Modis_Cloud_Mask_Fraction_ymonmean.nc Modis_Cloud_Mask_Fraction_ymonmean_r.nc
Fri Sep 02 14:21:08 2022: cdo ymonmean Modis_Cloud_Mask_Fraction_daily.nc Modis_Cloud_Mask_Fraction_ymonmean.nc       CDO       @Climate Data Operators version 1.9.9 (https://mpimet.mpg.de/cdo)         time                standard_name         time   bounds        	time_bnds      units         days since 2002-7-4 00:00:00   calendar      proleptic_gregorian    axis      T          ʀ   	time_bnds                            ʈ   lon                standard_name         	longitude      	long_name         	longitude      units         degrees_east   axis      X        � �   lat                standard_name         latitude   	long_name         latitude   units         degrees_north      axis      Y        � Ǩ   clt                       units         none   
_FillValue        ��8        missing_value         ��8        cell_methods      
time: mean     title         Cloud_Mask_Fraction: Mean       �� ʘ        @       @      @      @       @$      @(      @,      @0      @2      @4      @6      @8      @:      @<      @>      @@      @A      @B      @C      @D      @E      @F      @G      @H      @I      @J      @K      @L      @M      @N      @O      @P      @P�     @Q      @Q�     @R      @R�     @S      @S�     @T      @T�     @U      @U�     @V      @V�     @W      @W�     @X      @X�     @Y      @Y�     @Z      @Z�     @[      @[�     @\      @\�     @]      @]�     @^      @^�     @_      @_�     @`      @`@     @`�     @`�     @a      @a@     @a�     @a�     @b      @b@     @b�     @b�     @c      @c@     @c�     @c�     @d      @d@     @d�     @d�     @e      @e@     @e�     @e�     @f      @f@     @f�     @f�     @g      @g@     @g�     @g�     @h      @h@     @h�     @h�     @i      @i@     @i�     @i�     @j      @j@     @j�     @j�     @k      @k@     @k�     @k�     @l      @l@     @l�     @l�     @m      @m@     @m�     @m�     @n      @n@     @n�     @n�     @o      @o@     @o�     @o�     @p      @p      @p@     @p`     @p�     @p�     @p�     @p�     @q      @q      @q@     @q`     @q�     @q�     @q�     @q�     @r      @r      @r@     @r`     @r�     @r�     @r�     @r�     @s      @s      @s@     @s`     @s�     @s�     @s�     @s�     @t      @t      @t@     @t`     @t�     @t�     @t�     @t�     @u      @u      @u@     @u`     @u�     @u�     @u�     @u�     @v      @v      @v@     @v`     �V�     �V      �U�     �U      �T�     �T      �S�     �S      �R�     �R      �Q�     �Q      �P�     �P      �O      �N      �M      �L      �K      �J      �I      �H      �G      �F      �E      �D      �C      �B      �A      �@      �>      �<      �:      �8      �6      �4      �2      �0      �,      �(      �$      �       �      �      �               @       @      @      @       @$      @(      @,      @0      @2      @4      @6      @8      @:      @<      @>      @@      @A      @B      @C      @D      @E      @F      @G      @H      @I      @J      @K      @L      @M      @N      @O      @P      @P�     @Q      @Q�     @R      @R�     @S      @S�     @T      @T�     @U      @U�     @V      @V�     @��     @t�     @��     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     ��8     @T$R�H`�@S���ie�@V�y�xI?@W�:B65@V|5� Y@Vq�\h!@W���� @WU�ٍe�@Wu�o�w@W�*y�)e@W��5��@Xd����@V�(��J�@Wx<��H�@XS6C�@V���o�@W-g��Q���8     @W$�K:��@W����d�@W��r���@WOh�iK@V��2� @W1����)@U���E��@Vu!v0�@V���q�P@V �H	��@V�dY��<@ULӹ%0�@R�����@S��75�V@P-o�R��@L%��(�g@L"����@J��t<e9@St�ظ�@T	��Ƨ@QB�F�@V����@V�2���7@W&D�:}:��8     @W�"�te @U��٬�L@W\�����@V�Jc��H@V�֑[�@W���3�+@XY6��@TI�\;;�@V�d�ι@U֤��=�@W(�ա5l��8     ��8     @V�OY��@T�H-�G@U�C	�I@Uߍ\�v�@T.�Z�=@W��
Y4@V���@T�ݜM�@U� �
�@V<���@V�m��D��8     @V��v�:�@U�/����@UۿlN�u@V���~@UsY�@S��j��@U�0{z5���8     @P�����@P�.;�@O0��L���8     @Bs�Ɉ9�@D;.��'w@W�8�-��@WW����X@V[��U�@W��.@WE��*^�@V�'�q��@W�I`-�@W���<�@XV�ػf�@W�mk�@W&�u�@Vp/5/@V63k8֙@W��X~B@W�|b4Gf@W�.ǈ��@W���H&o@V�@�2m@V������@W�����@Wr#���@V�b�f��@V�Ó�Hy@U�l�E�@S�xA�=V@R���Ɯ@S���@j@TP��)��@T0X� _�@Q�gl�^M@L�8�X\@Rv/Ѫ�@Q�=����@N�]�@P�x���@R�2h2Rt@SLg�)�@Q�n���@S'cβ��@R5��]�@MJv�=�@LSa��@P��]��'@Qí�0:�@S���dR�@T00����@T��� �@T���:�$@U���C$N@R�`c�V�@R����J@K�Y�hd@O�<�-��@O��1��@P���A@R��874@R~��
�8@Qo}P�@RE�~�@P՛�Y�%@O��}W��@RiB�WT"@R��;m�@R`/�ӻ@S���c�@T�:ߠ@U�/���@X��1�k@X4�; ��@We�j�z�@X�\�N1@X�Ŭ��5@X�9��a�@W�C�q�@W��
��@WH��y@i@W��kR8@X*Oa	l6@W�=����@X�o�B�+@X~Z7i��@X"�=z(d@W��V`�@X[є�@V�jN�T@S*��^�@T�NU�4�@T���;�>@T���9�@I�̸��@K@�9_(@G��&�!@BD�Y�[�@Fe|�F@K
�D�.@O+o+�@Q���r@Q ��L�@M���P@Ow?��@Q��R��A@T��s�t@U�9���@V����@V��~$�@V�u��]@U�y���}@U���5�@U=�K�3@U�s!�%@U�*��5N@V{�ư�@T�����@S�0��@S����o@Ty_����@Ux���V@V6�����@Vz���:@VZ�[�4�@V�W?%'�@V��(;�@W�/��@W9�3�$M@VZ��[@UƊB�@S<����X@P��v]��@K���ʐ�@G����8@D��̓(�@D���.@E3��pT�@Bc�CكX@B��"�>@D%���R+@G�z4:�*@N��n_�@R�&��2�@UQ��l@Vl�w�Xa@WM����@W�OC�@X
��p��@X��i��@XJ��[��@XZo���"@XU� �@X;ރ��@W�y���@W��"��e@W����M4@W���9z@W��e�@W����=@W��u�n�@W�Arm�@W�qMU�@W���j@W��x��N@W�u�	4X@W��5�V@W��8$�]@W6���}�@V�w��Y@Vwd�%z@UdjOH@T�v��S@S���Z"@R���c��@QnG� �@PU%�=�@N�W]^�@L�SPD�@J qG���@Ijw��`J@G����p�@Ehհ�,@Dw��v�I@C�^���X@F<�;���@P]�'�Ѝ@T��GQ�@U*��)@VZ/���@V����K@V���sc@V�Te��@V�1R��@V�AЫ?�@Wd/b@W/��ɍr@Wq����^@W�ɜ%�@W}���+�@WZ$�z�@We>��g@WgX�J@W�1��ɐ@W�F����@W�z.�k@WŌ�ś�@W���W�@Wnv/TR�@W�-��@W5�T�G?@W'[Kf[S@W��P��@V�}lƺ@W �K��@V�&ԏ�e@V���<Z@VOL�y5�@V� %�vK@VV��4��@U#a
>߷@Uxr��C@S�l]�@UD�rQ7\@Ud��C�@U`A�c��@T��c���@V��t�e@WN���@X9-�Y�@W��fy@W�v7�@T�ڶ��@RLp����@Q_���D�@Q�~B�#�@Q���H@Q$Ί�@P�r�_��@R<83��@S,���/@S�!��=@Sɽ�+�@Q���W!�@S�qjP�@R�^F);t@R�ў�L@STL����@S02�7��@R��=Z�@Q��@Q��*Rdm@R���\�@V^ .�%@WPh�y�@W����V@W�R��ܝ@W�t d$@X�����@W֠�N�+@W�Y.ZЙ@W�ȇ��@W�Vz�>�@X䔠�8@W���y}�@W��WI	@WmjA���@Wj����a@WB:OPY@V��@��@V��?=��@WUֆV�@V+���@V[�dE�@V�����@Q8?q�4p@F�9���@Bo���@A���ʤ@C\�@0@G��#3/@K���9op@L�G�n��@JVx���@F���^A�@Fo��*�@H� �JF�@H[׷İ@H7�B��@I,F��ro@I�=)@F�����@F$u|S��@D�XJ��@C����Ů@D�A�Ӌ�@G�� P@DL���@C�ðsY�@CMK.��@C��ݰu@E��o��n@H5u��@H�L383o@J$v?���@L������@O��ΟHu@Q&��ӟ%@RN�.�&B@S��s�@S�����@R�#N�6@N��Yn@F�n2�x�@AWuݡ�@=��\��@=��@mzx@M@�O,~@P�+���@Cb�A�j�@A"
↷@A���@C�QQś�@HC	'2�@M%��/B�@P�ݯz�?@R���
�@SN��+�@Tws��Xj@U:'t(@U�R~Q*@U�)���@U�,\�}\@U��&<�@UGh�h8@U%T��+�@U'^h&@T�d��I@T[چ3.@S���~@S`���V�@S*��@ނ@SC����@S�k��3K@S�v���|@T:=��j@T��]�O;@U+3�ؐ[@T���Sc�@Tb���@S7�\�@Q���u@P�H���6@MT%��H�@H�l{��@E��z	;�@B��0k�r@@�R��w@<�v�aA�@;��ԭ@:�"�bU�@<
}�fv�@;$,lI@9�x$�i3@<��j��l@>`BG��@?��(4�@C�o�d-@OD��Д@T���u�_@Ub�t�/�@U���V @V,��K��@V���J�@V�&H_|�@V��&�L(@V��F.�@V�\E�@V��O�I@W�C35@W"�r� {@W ����@V���@V�N��D�@Wc�F@W)�ڟ�)@W���Ib@W�d��!@Vʺ��@VƔ>��Z@W"c�K��@Vٓm�+0@V��c�@V����@V�� O�v@VغP(��@V��^#�@V�����(@V�"k��b@WXr�k~@W�q�mi@W'J���[@W7�@�(@W%��B�@W.�%�%@WE�a�@WR~��%:@W�ºb�d@WJ�R��@W8�ģ��@WRߴ�M�@WZ]�?�@Vf�IR@Ue̺gnD@T��>5U@U�$C���@W)H�� �@W!�Lc��@V��#��@V��w�8@Wf�7w@WQL���@WRv�Q�@WJ�w�3�@Wd.(�D�@VMǼ���@T�8�{$�@S�B8^�s@R1��k@T�f��@Q��!��@P��r<@R xx��@U�{���@V���@V@U���@V�։0٬@V�1��X�@V� ��K�@V���Q��@V��j,�8@W*�z��F@W '#\��@WI�c�#'@WLj�U�@W4�:��;@V�8��2@Vۨ�֫@V����@V^�(�@V2�����@V6-u�@U��}���@U��n`��@V
T��.@U�G�qf@V(�C@RS3����@I��ת��@Is�>��@F��2�@@H�����x@If/U��@U���(�@S����#@R��i?�@R}3i��@Q�T{�x'@QO��L�@RR��D�@Q� �!�&@Qײ���@Rj���@Tj%���@R����@S]�ȼ@U�rیO@U�i�y@Sv>ͣ�+@QDT���@H��w�j�@M����.@OZA��r@I;-��@Cقۻ[@C[}Ӌ( @DU�?��@D��u�E�@D;ڈ��@E�ˑ�P@H��B`@H��@ӿ@E�<nb$F@B��_�@=��n d#@::M溙g@<��?Ś@Dޛ|���@SyH5P/�@S�	�>7�@MG�]@J-�hr@Dh!�U�W@C��`@C�e���L@D���뚵@E����W�@E���	�5@F�����J@H%����@JŲ���@KD�5b�=@I����0@I�G��@HǐņN�@H�bM��@I�QY�@H��S�k�@F�0�h��@E	�+M�L@D|0�:�@D1����@DDhɉ@D$m �S@D�H�M��@D�	i�f@EZx����@E���F�@F'�ɠ��@Fa��a�)@F�"��@F�P�2�@C�� �q�@@�-��w@=�I�@;�t`�3@=�a�m�@=.�1F^�@=ϭ��G@=��PL< @>O�ff�w@@���  @C����W@Iì�!��@RD5��,@S���{@S����	@T�vb]E@U xA�@U��ŷP@UV���@Ue��z�@U���7@V�E�V�@VH\n�Kp@V/�n��@VK'݉Nl@VY>��n@Vb�N�,�@Vn�}�	�@Vf"YE~�@V�So�5@V��.s��@Vm/��@VJ�.��@VD��I�@V7[��ͥ@V!Ɓ�@VF����@VSg�x�=@Vk�LH(@Vbd����@V4�B@U���eن@Uߺ~���@U��"�?-@V20���@V6`#uk�@V܈,�;@V=Ӆ��@Vp�(Ԙ@V��
vg�@V��}�!@V��t��2@V�U��@V{>Ҽ*@V���NK@V���?@V犽bk@W�$0�P@V�P��5@V��Aq@V׼nԦ~@V���.�@WWӥ/�@V��Y/;@Vݳi�[^@V�:/��p@V�/�0�(@V���"�@V��`� @V��ֵ-�@V��5��@V�?VX�@V�7*0m@U��� @U��w?@T �
�w�@Q2���h@R���h@O@�k�0@Oe_��Y@S���~@U[�:�@T��=���@UQ�I8@U�$�l�@U�6Hi��@V
�=�@V"���@V'�EԣE@VO���@Vt�V��@V�녋pv@V^h$F@V"�>_ܙ@V"P�q�E@V=�Ֆ@U�{Q���@U�3���@UyB�ek�@U1v�e�@U QD\��@T��Ne��@U&:�>�@U	�o@U$0�ݔ@T�Ng�g@T�I\)@T��4�Sl@S�;`�%@T=<��@TmY�Q&@T�n7xOU@T�=0S@T�i��@T�%4a��@T����@T��LC��@T�#����@Tɮ�죘@U<h���@UAQ���@US�8��@U�����@U���_�@U��<!>@U�}oH��@U�d�G�@U�g��@U^��Y@U��:�?�@U[���*@T�|v�@R�����@@P>���i@LC�~��z@Kz���!�@F@�J�l@B������@A�*r@A��'z��@B%�_fK�@F&Z�1�@G�onX?�@G�ώ�K@H��Y�I@K K)\l@QV���q@S>���#@S���~@S�m���@SR����g@O2��+�@M���4��@IG�fa��@F�7��Z�@D�[x��@C�>�ؤ7@C�Ӱ��@D����x�@C��Ԁ`�@C�>���@C��ǭ1@B�����@A�<@B�A��@C��<�@D��$@D�ϡ��c@F�;���@G3���H�@GrU���@H.%gm[s@E)�ʴ@C��Uc'@C����_@D���x/o@D@*>�f@BU��OF@AY�D�Q�@@k�6J�@>��p@>����@@��C��;@DӍ���@Jjx��|�@Q�I/�Jo@Q�A|@SWE�,֫@R����-@Ts4��/@T�곐�|@T��v�.k@U-R�4A@U2�ˠQ@U_�
�O%@U/���@U���}@T�����@T��v}T�@U���SG@Uc/����@U��Ɵo@U����@U�k�o�o@U��C *�@Uٺ2��=@U��o�@U�?�N�T@U��>���@U�J�rβ@U�(g��@Ú��@U��d-�t@Uf5�}@U�cb�@U�� �A@U��;nv�@U�J�!@U֊�@U��2��S@U�":�9�@U��7�@U��zE��@U����Bp@U�b�B�@U��[@U���@U��<l�J@U�����1@U�;ƒR�@U�,P�;�@V��1��@VC�g�@V��K7@V|�.�@V-z��f@V~�	*ҧ@V���`Q�@V���a�@Vy/C���@V�@�)%e@V�� �&@V����"@V[qY���@V\(��!�@VN���~]@VK���?�@V:5{&d@VF=�`��@V%���i�@V3k���k@V�̼�@U�F�߼@U���Z=�@U۹�|L�@U��H$@UTY���@ST��R@PL~�@U^)�U��@VS�\�/@U]б�}@T�M��@TEX��\�@T���χ�@U+�\g�@UUV��w@U��8�q@U�.f��s@U�� ^�@U�G|�Y@U��|8��@U���k�@U�>A6�&@UhK����@U^��Ko�@U%2VS.�@T�qYn�@T��bm�@U}��|`@U
-�+A�@T�?�zo�@T���!@T�,��;h@T�f.�@T��[��@T�L�ze@T��P�.@T�g&��@Ug�D�@@T憓pP�@Vt7�^��@T�b���@T8�lJ��@U'(��,@V�a���@V�6�Ͼ�@Ủ�;��@U`=��,�@VT���#�@U���L&@V&=��V@V��,s�@U�ر���@U��E�x@Veig.�@W)IK�%�@V��;�y�@U�y!V�@W^x��X@W`��g�@W��X��@V?��Ff@U���݆�@V��[� @UI��LK�@T/���=@S[���@Qƍz���@P.�5�~@R�d�5�0@U�qƙr@S��Uˌ*@S~���@U�,A|��@T|[�{9@VU�q���@T^����@Tsh7���@T��D�e@T�X��}�@T�C��a&@U8r�^�@T��k�@V?��� @T�_�,@Uȼ��@R��[�@R�ڟvR@S/�>T�@R�0|��Q@Q9	 �]�@L9��Y�@KI��D�@P~�տ�@Q�$?��@Q���jM�@O�.��B�@S�&}ý@S�A���`@TJjw/�}@TS�4%"�@Ta���-
@S�>����@R�L=~gh@V7�F���@R�=_uB@P�fa e @P�l���@P�Z���e@Qx�9�@Q�7��I@Rb|zlx�@T�l>@S�7oA+ @Sա�6@Tm�dCDh@V�G�Il@T�^�8�K@T��8]�@T�gs�Τ@T��՞��@T�O���a@T���ii@T���FpZ@V�jI�;B@VS��Vz�@Tn�C�=�@TLMG��6@TR&���@U���z@U�o���@Vή��@V���FX�@U��b�{@V������@U�r���@U�0��k@VZ����@U7�a���@U�W/��@S޷X�� @U�� B�@Ux[/��@Vv���@N@V;�3�>@Vy�_�+�@Vzw!�^@T���U@S�a�L��@Tq�<�\@Q�e�]/@TM��#�@U����G@VC��:@V1\��8�@U`x��I�@U�,1�P@T�"�F@@V0�)F@VUb=��@W��<��(@W�O4	@W��p��{@Wڔ{�] @X kj%P@X6e��@W�0���@Xh�Ev�@XJ��@�@W����@Xd�z�@W���F�V@XSo��J@W�A��#�@X,�c��@XG\=�	@XX��>@X;)�@WV��	
�@W�>z ^@WO��8B@VG#	��$@U�\��n@U�h�W�C@U� dG��@V7��~�4@V?���>@Ucj�E��@Q�u2@M#��$T@R�_@T���g��@S��uW@T��r��@U:E�A@Tq�W�ÿ@T��B�F�@V_l�c�"@VVI�˸@VnWE��@V]�$X��@Vw�a)l@VpH�c,2@V�R��(@V�l����@Tƶ{k�q@Vp`Ͳ�j@Vx����@T�6���@V���>�@V����@Vf@�{�@V_u�[X@V��M@V���d��@T���F@V9�u��@T�ۏ;�5@Ve�P���@T��Gu@UQX���N@U��'\߲@U�Q���@U�#�w"�@UǑI�@U��D�@U͐BW��@U�x����@U�6iy�1@U�v3��A@U�X��j@V~tۭ2@Vl��C�@V3<i�@V��f��@V���@V���@V6y���@VT�`�@VY�	�n@V����3�@V�n>@V��WΈ�@VZ"���@V~u� Un@Vd~��@V7�%т�@V }�n@U��׎@U���%/@U��)2�@U¬���Z@U��lQH	@U��F�C�@Uu[G��@U� ��a@Uܑw��B@U�*�H`8@V"h��@V'@U�Iw��@U�Kl9$�@V��@V#��AQ@Vi+���@U��VT6@U���zV@U{�}���@Ue DĶ@Uk����>@T�cg��@T���U��@Ts�܏ #@T,�����@Tѫ�Ը@T<hb�@T=ƿ�>�@T��G�J@U4��)��@U��֚�F@U� 6�0@V]�X���@VV��Z.�@V���\@V�(�$��@VU#�n��@V:�-�9�@V��K@U��β�@V
��ed@V.
�Z@V/9���@V:q�b	@VD�X@V%��p"@V(���V@V$��J@U��F=e@U�2�A�@U�yʈ�@U���v�@U�³�J�@U�U\�.@Uθ��?@V �  >�@V+K0,@V�l�@V+N���@V�.�B�&@W�[���@W��~��@W��V�_�@W�7\��@W�s�R��@W������@V�@f;w�@V���$3�@Vx�beB@V.���y@U�(Cڔ�@U��D3l�@U����@U��-$Ix@U�bӠ��@U�r�zv�@UzeW۸�@U�<���H@U�"4E=p@U�?\LB@Uϯ��s�@U�LC���@V ct@VŤ��/�@W~�AcP@W�f�4@X)$J�z@Xg���ڛ@X�*}fn,@X�H܈`v@X���@X�OVKѡ@X���P8@X�*K�Mz@X����p@X�R`�[�@X�����E@X��y�@X�Sz8^@X�+_��@X�}6`��@X�� �v@X����@X� �]�`@X���]F@X�����@X��#o�@X��*y�@X��a�/�@X��֝z@X�i�!�@Xn��s� @XHe� @W�UU&&@W��� �N@V󠲢�@V�_��@�@V&�*^t@Vwu�P��@V<e��@T����@Rv��8��@Q_��� @RH�4�#"@S�L� �@T�/�AH�@T��Z��@U%7���@T�:Q��@U"^��D@U)�<��z@UT�ߍ��@U@m=���@UH���T@U-�P�v@UOلCj�@U�?���@U�$!p?O@U�e��D@Ui#9�(-@U��D��@U�m�&�s@Uv�;$C�@Uj�s��V@UH��`@U[빻�J@U\5\Reo@U2=�O@UF�6(�@US�O+��@Umg`ư�@V�Y�?�@T�y(�X@TΌ�t��@T��N��@VZ}U���@U2���@V�D���@UR"~�E�@V����@U_�.@V�����@UhT�:��@V��vj�@U�Fo��@V>}�D@W���ri@W��'R�@W+�Jh�@Vaq��/�@VY�(s��@WS�G��@V���:�t@V���W�@V�9��	@V����$.@V�'*`��@V���<�@WQ�=5$@V?ʂ�@W@!�P��@V�}����@V��1�x�@WF����@W0
�$y�@U�tD3�@Vn�� @U�.K�y @V�~l�{�@V#�wyV@V(��)t�@V"L'V�@V���@V1��s^l@U�bX~�@Vǉ�cH@V�[��~�@V)��w>#@V�g�,�@V  &!@V��
e@V�I�C��@V�w��K�@W�$�#@Wp��k@Wl�(�@�@V��0�l@W���ഽ@W��
SV@W�����@W^
G�]�@XUP�@W�<���V@XH���_ @XV]q`@X�ٟؔ@X�����;@X�_��q�@Xu*f<r�@X����Q@XhCƉo�@Xbީ�>�@X1�S��@Xu`=O-@XZ��4L@XS|���]@W�*eW�@W~��@W����@X����@W�����L@W�8���@W���@�0@W����2-@W��ɼ�@X����B@XA���@Xj ���.@X���H=O@X�dq���@X�o:*��@X�1�Y|@@X�mC/X@X�$���@X�s�z@X���B�@X{�J���@XB�8U�@X:U��?@X5J����@W��j���@X����d@W����@Wa/�O�:@V�$�&D@VpG׍Z�@Vo��u�@V�����.@W
}�,F@W`tJ
��@W����O�@XRk̘�@XK��2�@X�@s�L@X�N��@X�Uw�[�@X��x�>�@X������@X���ow@X��#�`@X�R)I��@X��ȓu@X��q�[�@X�u�°@X�j�i�@X����8@X��T�M�@X�`1�&{@X�@��Ȣ@X�e��N@X�%�S;@X��Zg��@X�p��O7@X�\I�@X�����@X�T3q&�@X��ϝ��@X�!į`y@X���K@X��߀�@X���h@X�A�掬@X���o�@X������@X��K�t�@Xz��J5�@X�Ib�BF@X9�4��@XG�:��@W�S��*�@W�K���@W1 ���@VhI%��3@Vܩ�e�
@V9MFDޭ@U��Y��@Tǩ7�m�@T_��o�@T'����@TOћG�@TK'�=�f@TQA�嘶@TS~R��@TfJ#�p~@UR=��@�@TISQX7�@U��7��w@U�Gy	A#@T�I-yg�@T�@ߤp@T��P|@U�*qg��@TN�R�@V���̝@T�/���@T�$ Eh@T���*@T�gfL@T�f����@T���@@T�s�yL�@U�<�1s@U�����@U����%@V ��}`@V,wxO�d@V,%uԀ�@VNs��%@V�>Q^�#@V�M}�m@V׮v���@W%P?�ؕ@W�����L@W��,��@W��zn�@X `�[�3@X!
_G�@W�^�@X�PV�@X8#stq@XY��b	�@X^�$@X\��G9h@Xi��`n�@Xq�e$@XywB���@Xs���@Xn�)�#@Xe�iDc]@XL߭�@XA���Σ@XL�C_B�@XR@�;s@Xa{V ?�@Xg���X@XOE��u$@X �U��@W�}r���@W�1�d&@Wg�h�b�@Wu�仟�@W`.��Ҙ@W�{?^@W��E�@Wܵ��~@X�r�Y�;@X�J"V`h@X~onbGU@Xn����@Xp���5@Xt*����@Xz��{N@X��ΰs@X��.��8@X�JeR�W@X�q�j�@X��{��@X�	QH4�@X�����@X�-�v��@X��hX��@X�N��r�@X��Z�3@X��nY� @X�H;38!@X�V��s@X�r��A�@X��J%�@X�n��ޠ@X����8@X��n�X@X��T�@X�-�@X��Xvy�@X�T���S@X�Y���e@X�����D@X��52�-@X�ūd@X��H�a@X����p�@X������@X�E�Zw@X�d4�k)@X�����@X�7z=��@X�a1���@X�=��L@X��i�\S@X�*:��4@X��[~@X�I}��@X�����@X���@X�r�5N�@X�J!n�G@X��@��/@X��86b�@X��~��@X�����g@X��׏��@X�����@X���G�@X���W�h@X�\���@XN��tl@X@�s*�@XK���@Xt�<��8@X�ֈ�H@X�����a@X��Mpc@X�`b��@X�W��%@X����g@X���]�@X�����@X��/|��@X����@X���ߥ@X�-}�& @X��~{<�@X�bZ�� @X���~{@X�$ZXmY@X�\����@X�{8=@X��Rխ�@X����@X�^�U�@X��ó�@X�{]��\@X�ˉ��E@X����)�@XLCC@X}����@X���6֬@X�:�ޣ@X���G�g@X�z�}�'@X�7]vʐ@X���a�@X��jO�@XzG�+��@X~��j�H@X}��{9@Xq$K��@X}�06*�@X{����@XqG���@X�=�8 @X�,�cK�@X�
�tQ�@X�^��8@Xk�:l�O@X4RtL_�@W�ng.H�@W)�����@W
�ydzU@V�e6@VN,�6Qp@U���vs@U�>����@U��K#V@UhuOL�@UNӷ�@U9�r4J�@U:�h�X@U|��6ڐ@V��] ��@V�1%�0@V�\գ�@V,�v��@Uҽ�掤@U�E܂�@Ul;N;Q@Ulmn�J@U~�7���@U��z��<@U����T�@UɊ��p@W߼��@V��R,o@V�X��h@V�V$�{+@V�8�}@W���]@W(8ң�4@W^��&�@W�Š2��@W�����@W�.���T@X>��D_�@X��j� @X��\�3�@X��|Z�@X�l�(@X���d@X�lO$i�@X�{;�@X�C�3C@X��(�{c@X�4���@X�vBk��@X���k.�@X�`X���@X��;p+�@X�hY"c@X�i���@X�N�#�@X�\�+c@X�I�̏@X�cm=B,@X��D5@X�$�Yh@X�jR�)I@X����-�@X��M��@Xn<t��`@X]V��3�@Xoڳ?�@XfX�ӏG@Xi��X&u@XyQ2�t@X�$
t@X��L�;�@X���Ҭ@X�%Q��c@X������@X���؛@X���ǽ�@X����<(@Xb�j%0@X�!�6A�@X�7	�>�@X���"�@X���8�h@X�I���@X�Z�gU@Xy�u�@X{��C��@Xt���@Xm5��%H@Xc����O@XlH=*zk@Xh络�@Xa��H(@Xc�͛~q@Xa�%}1O@X`��j	/@Xj���@�@XhFD:�l@Xi���P)@Xj~&�c@Xr����`@Xw����@X��ͭ�@X��a`@X�Fl�ƣ@X�)<�@X�a+4F�@X�CG�9@Xr�=|}�@X��S ��@X���H�@X�L��e3@X���,�%@Xt�.]�_@Xd���%@X^�V�3�@X@yY��@XS�UII�@XT��O5@XY�����@X]A��|�@X]��A�=@XQQ���@XG�~��@XK�)E�@XW?p�ga@XVX���@XN����@XUQ�8��@X_ݜY�Y@Xew�4w@Xg�с@8@Xp�0	7m@Xo&T� @Xk�����@X�����=@Xy���@Xo���	@Xs)�{k@Xx��+��@X�D>��@X����y @X��W
��@X�#�̭@X��b��!@Xx�KDݸ@Xl(�^n@Xh���O@Xu ��@Xrm�.�$@Xf�eu�@XX~��@X`-���g@Xa��'k8@X\��I@Xb��
�p@XY�s,k�@XP���V@XPJ<O^�@XE``1�<@X8�KgW@X3U{���@XAػ[�@XN֤) @XPV��T�@XG�@��@XFa��k@XA��w3�@XA`��s�@X?=k�H@X-����]@X)r^T�U@Xp��@X�Q�a�@X�y�}!@X!/�5w@X��8Q@XB���@X[�̃�@Xb�� �@Xs`�9
�@XmD/,��@X^�P�@Xl��vP@X~���@X�zdW�4@Xo�F�7@X]s�39@X$�K{�@W��e�@W��\�]@Wʬ��>@Wd�$ɏ0@V��'2�@VrQ�?@Wiu9i�@X.m��Cw@X��{}-@X#$�]I@X
�SP@W־I��@W��}��@WGx@MC�@W�&���@V��?@VދÎ;�@V�.;-�@X"YXŹ@X�#r8@X#J�,�(@X����@W������@W�=�l@W���`@X%bL}�@XUi��3`@Xm;dm��@Xup̗��@Xx���3;@X��@#�@X�^�M@X���,@X�^L�ǐ@XuH�絃@Xt-�e� @XeГա@XV#�P-@XR�D�q@XL��u�@XGNiz,�@XO�p5	D@X\��E@Xe��2`e@X_���@XW�h���@XU��O�@XXu�$�@XQҢ��@XK�_0n�@XQ��Y�Y@XDM���@X?���e@XD�0��@X;��/�@X1}��k@X6����@XD. �l@XJU�Z%@XeZ�i�@Xsf���@X`o�>�@XU��eT�@X@�~�@X6-�t~�@X3���/�@X0��nҬ@X.�gt0 @X>�p
e@X	Ñ�|�@X�O�R`@X$ܾK�@X1<-���@X+��	
�@X3!]J`�@XA�d��@X(I�6��@X�XƧ�@X
&]@X���O@X
}�ϧe@X��P6�@Xi�C@X"� {@W�� k �@W�aT�H@W꺕�w@W�%]�H@W烚�7<@W�,C$J/@W�] 6�@W��m�H�@W�\�Q��@X6��v�a@X8��ް�@X,9�r��@XP�`/�@X4�ekA@X �c�x@W��(��_@X4��	�@XaĖ�0�@X;�ꉣ@Xr�X��@W��ly�@W�宷ym@W�M�S�{@W͹�'�@W���ζx@W�1h�=$@W���̻@W�ɞ��g@W�:�D�@W��?�@WʾB��K@W��lG%@Wǃl�6�@W�+��@W�Fޓr`@W���=,}@XX��<�@X����-@W���~�@X��G{d@X
���G�@X��m��@X(��s@XEA@��e@XT"�>��@XO\�e�@X,h�'��@X�{�S@X#����@X)�Ut��@X5����p@XEH�T�@@X@ʊ}@X.����p@X#8mW6�@XrǕ-�@X��\!]@XG"`#@X_Ί�@XRJ�-@X`�1�u@W��W�@W���m�@W�wD���@W�3b�@W�L��|@@W���p 0@W�� ��@W��^T�@W�:y@W٠5
48@W�H���@Wڠ�o
�@W���]�@W�k��u@Wɳ_a�@W�CX��@W����;@W��sd�@W$��l@VZWS@�7@V�$ݎ|�@W�R���@WITDx3@W���A��@W�0�aU@W�4�m3�@X��TS@X�ƑK�@X/�Wٯ�@X4��M@X9>���9@XOO$���@Xa?���@Xf�;^J�@Xm4��!@Xd0�T@Xm���@Xo�o_�@X]�W7�@X;c�_d�@X2�.f�@Xxx���@X�.�G�	@X���N�@X�7�:c@X��L��@X��S�qM@X���A��@X�-���@Xv���b�@Xfʛǥ@XL�l,@X8b��e�@XHM3�@XO��� @XU��uy}@XMRS3�U@XD�Q�u@X>*V��8@X.w�j�@X,<�3@XK�K�A$@X`�;��@XW���@X\���%H@XS&rUY@XP� ��@X^�M3M�@XW��@L�@XB�H(T@X2�;b@X&AN�6@X�B�f@W�ޡ�Y�@W�b"��@W�H�Q#;@W�.?��?@XJi��@X0��3C@X
}���(@X�D�4D@X
J�@:�@X�<7�;@X]�;\@W�]tЂ�@W�>����@W믵�[�@W�tEf�@W�ϯ7�@W��HA��@W��@�q@W�̟�Y@W�jtr�@W���v��@W�a5��M@W��O�i�@X���3E@W�)P�f�@W�t��3�@WӠ�w.@@Wƀ�&E�@W�;�b[@W�+���@W�QiV�@WtENZhl@W���B�@W�A�U�#@W��D�@W�M��̩@W�z��@W��Q	�@W� �X�@W�*��A3@W�U�Y��@W�����@W����6@W���o�@Wˉ��9@W���D��@W���
��@W���=@W�J{��@W��B0��@Wm����7@W=�#�ү@WU搊\@Wq.�<l@Wڭ��@@XN~X�@W�#�f(@W�����@W�G3�m@W�� !H|@W��Ԟ�@W�Zk}��@X@�j�K@W�����@W�Mo���@W���u`@W�����@Wn�5���@WR=;�wU@Wl� ���@W�vf(4�@W��6E7�@W�$��@W�<y) @W� G'!@WRq�Gu@W<�Z�٘@WVfW~ݏ@Wl�7��@Wt,����@W�v��?@W��,@W�G�JO+@W�?𹠨@W���$U�@W�⠠�@W�,1�!@X����@X	�e8,�@W�k�=+@W��)*Ak@W�4���@W��W��S@W�+�4=@W�^�zD@X ����@W�3~�'�@W�W2xܘ@W�4����@W�:�Pִ@W�~���@W{vS>m�@W�Ƽ��h@W�Mx�խ@W����@W��2b5�@W�@�f�@W�SrF]@W��|e�@W>���@Wy.�@Wv�d�@WxާK�@Wk����0@W` V��@WU禕�7@WL�����@WDp|��@WE��I@WE�*>�p@WKk�B @WV��o@WCO]�h5@V��;I�-@V���@U�l���@Sk��][@R����q@U+l��C@VNk��mG@V9%?7�@V���t#@W.v%��@Wa��f�@W��.��@W��JB2S@W�����@W�2n7_�@W�v6!t@X�k@X& ���@W��63@VM�ɂ@A@Wf��fV�@X�TV�%@X.R�x0@X>gY��c@XR�(7n�@XY���{@XV!ł��@X`73�^$@XX��r�|@XK�4Fh@XB�����@X9n��c@XF�&G�@XI�����@X@�=��S@XI#��Q�@XL�j��@XE��T�@X��4��@XR�z�@X+/k&]�@X!R�͎�@XKE�e@W優��@W��CbE]@W�Ά�l%@X F����@W�cU��e@W��u1^�@W��E�@W��A�@X=}��{@X/�ͅ�K@Xht��@W��굖5@W�2�Ru@W�
�G�@W�����@W�C��} @W�7߷�@W�)��T@W��1��@W�a��5@WХA��@W�5����@W�.Uu @W�+#� @W����@W�P��*T@W�f`�U�@W��m�r�@W�R��@W{�[�/@WhE~:��@W]VI��]@W@�{t�@W6?��m�@W[4�;�@W��/���@W�f�V��@W��r�@W��,�@W�L�?�5@W�7��'@Wu;�@W'�i��@W/��2�@WBG:�g@W1�_[��@W8�����@W/|��2h@W&:��@W5;�y�@W+��]��@W�YSc@W<��G=�@Wr�� Ġ@W��HE�@W~X��@W{�p��@Ws�#mg�@Wg��s9@WH_��@W&#vL��@W8���_@W3By�hx@W)	OA��@W�Yt@Ws���@WdVޘ�+@Wy�;F��@W˅����@W�a��<1@W-Ƕ��@WoӔ{�+@Wkо�c@WX�&.C@W^m�%I�@WTZMv�U@W����%@Wo�]���@W,g=��@V�v�X�@W��A�@W/��&�@V�>�4�s@W	�}���@WO�(d�@W[�TF�S@WV��ދP@WmO��4@WB��t�W@W�>��h@V�jv0�@@Wޔ�/c@V���1hK@V�S���@W(�B�d�@W,ш-�@W.�9~r�@WoM(��@W���j�@W�F{�@W�^���@W���|�p@W��d@Y@W��*���@W�)e(�@W�o��U@W�Ԛk��@W����@W�h<<|@W�nR�m@W{<�/�@@W{ B��@Wx���H@W^X�}(@W3���w�@W��@WC.ʲ��@W|[��@WVA��k@W?�oU+$@W<-8�;@W"Z��v�@W%cci)@W����@W!�XU�l@WB�3(�@W���@W%�� @V�Y?2�7@V�.}�p�@V�::��0@VjO�@V��	��/@V�uTM@V�]�6�@V��uv[�@V���xc@V-�?���@T�-�%�/@Rx�<t�@PF ��;@Q�J���@T"�m3
@T��]k@T�ؕ���@U��j�@@VY��^�@V�q����@Vͳ�e4@W	�C���@W+�dkh@W2^�QSC@Wu��o� @W��=h��@W�݉�J�@W�`�1]l@W��HE!@Wʏ�6X@W�Up#�d@W��օ�[@XLw��@@X(0 �F!@X*���^�@X+]I�s�@X5��B�@X 2��@X ט'�@W���� @W�hRs�@W����5@W�qs��@W�(���3@W�w�׃@X	���u@W�v�g�W@W��6@W��1�zk@W�Ep���@W�$�ͱ�@W��H��@W��:�S@W�@5�@W��!g'@W�+E%@W��$���@W�Mmd�w@W��TQ#@W�ȁ��=@W��kJa$@W�����[@W�T��y�@W�A�%T�@W{k$��1@W�V�f�@W^� ĕ_@WJ�t�:�@Wn�_G.�@Wtm�\�Y@W��_��w@W�3���@W���@W�:��*�@W�q+�I�@W�m^���@W�\�r�@W|9qp�@WQx0oH4@W;K���@W<���@V�	M�@V��+��@V�Ɨ�q@V�d5tC@WA�y��@W�NC��@W���dz�@W�\�4�9@W��_��@W�+-�N�@W�oX,0�@W��]^�o@WX>���@W��ߖ�@WangwE@V�`��@V��e½@V�r��@V����X@V�!C2PU@VߋK�!@V�7��.K@W���,@W2�[č�@WwQQy�X@WP�X�S,@W1�k�@WH�E�(@WL��8�7@WGe�ԉ�@W^9�'�@V��E�U@V�K�S�@V�tU�o�@V췽q7(@W)����@W�e�@Wz�����@WC�B �@W@M���@V�7@�@V�O�ݐ�@V�$�K��@V��ԁ�@V�URG�@V�4v��@V�d����@V���q@V��Tp=X@VW�|y�@VR���	@V�7���@V�_3F�@V�N���@V_
�u#�@Vm�gћ#@V�]��#@V��utp0@W7��]?�@V�ʈ�� @V�@����@Vᢍ��|@V��l!�M@V��0�H@V��ʛ��@V�����@W\8Ȝ\@V�d -y�@V�`��-`@V�̺��(@W�ܨ@W+T�Q2�@W@�Tz9@W_.���@W^��\�@WIB�մ�@WCc=�m@W"R'��@W!)����@W.h��@W��-�H@W�E���@W,��e@W껁�@W��//G@V���ӯX@V��b��@V˗��@WSii�g@W����@W`p�@E@V��3@�@V�j�Ҵ+@V��'!@V���@�@V�Ne)�@V��g�L9@V�{�Ya�@V�va�\@VםЩ(@V��X_��@V��2泩@V��x�Q@V����S@V���z�@V���+D+@V��� +@V�%Pw@U�#��	�@U*�Ncg]@T���C�@Q��G�@QA?Ѳj�@R9yM��@S����U@Tf�|8$@T��ӎ@U�w�o�!@U�A�B��@U��{��@VE�u�U�@V����@V�8Ծ�@V�⬟�@W
t��5@V�47u(@WND�YFe@W�D��|c@W��I�yM@W���@@W�����@Wʇ���7@W�y4Sy@W�c�4t@W�����@W�Wc��@W�J�8-@W��^���@W���	D@W�*���}@W���ť]@W��a�@W����@W�XiA�@W�0�B�-@W�TNU�S@W�[��?�@W�}��4%@Wo>O�%}@Wk`Y��@W�`��h�@Wn�r��@Ww�:"/�@Wo����3@WD��v^�@W?Z�( #@W.֑Ԗ�@WH�:��@WX��<�5@WW�C6�@W��%.{{@W�n�ج@Wa�08�@W:��l�@W!l�!��@W�q��@W����@W6&r��@W6+�R�@W��# @V�$�@Ws���E@WG�V?�w@W}0L��U@W�\;��K@WY>���@W�ӵ��@V�/��'�@V�?��g�@V�`���_@U�3ISQ@U������@V�S�6��@W%`0��o@W9�tyڹ@WTbW	y@WJs��@Wna��h@Ws��p�@W�n�As@Wx�)�Lt@W])W�~�@W	��m�#@V�ì��@V����� @V~q	S@VI�T�C@VkE�UHM@VJ>�4@V|��t@V��
�,@WA�e�@WA\!���@WB���C@V�`���@V�2(ؑ;@V��O@W�?�@W<~���@W&p$���@W�Br @V�!��#@V�W�7@V�ė��U@V���J-t@V�9� �@V�TtG�@V�H	Ԁ@V��^ �X@Va͚Dq�@V�Z��M@V�c;b�@V�vvi9@U�1�^�@U�0!T@VF�g��@VL�IЦ�@V��_z�@Vz�@U{�jd�@U6�T�f�@UJ���A�@U���<�@U�?V+@V�9ǔ@V� �@-@U�1E�8@V���@gE@V�zf�E@V�����G@V�njL��@Vd%�@V-�����@VU$�8@VT�#.�@VX�D���@VJf�I�@VF�'�>#@VR�W|e8@Vdz\_(@Vu_1ɀ�@V�\&h�d@V��;ޗ�@V����5@VĎϢ��@V���&��@V�S	7Hc@V�0?�6L@V����)K@V�SG���@V�f~?m@V�0�#��@V���tg@V����@V���e�@V�o���'@V����Mt@V�T�<�g@V�w��a�@V��k% @V�d���@Vȅ�/x@V�?&�O@@V~��ZW�@Vt�@k@Vz�8˿H@V}/U0'�@V�P!@V��R�Bd@V��Y��@V�\�9�7@V�C��@V��mF @Vv�3��@Ve�"���@VNZ���@V$ې\�x@Uw��$��@UUju� M@Ue��{@T��5=$@S��f���@P툚.1s@PnH��z@Q��`��@S*�2��O@S���s��@T���Մ�@U��P@VhD��@V�ۊ8߁@V��=<l@W�}l%@W"�9 u%@W:�>��@W>+	�U@WR����e@WO�&ܸ�@W:P�ޡ�@W/�w���@W$�{9M�@W;{���X@WAP�ó�@W@f�.�P@WX��*5@WtMH�WX@W}b���@Wr���k�@WeZu�!C@W=��P3@W"�o-�@V�@��q@W08�;��@W����@W������@W��k@W�s��@WXV>h��@W���!@V����8@Wjfhx@Wc#2kM�@W�x5R5@W'd,�b�@W*�yJ9@Vڇ�L�@V�D�K�@V�H�DT�@V��F��@VإH��@W�@WI��@V�2�2T@V���#@Vn.:��@V�+��w�@V�I�s�;@V���݁�@V�S�M3`@V�Td�M/@Vv�S��@V�;6��@V�,�>D�@W*v���o@W]�V��)@W]1�(D@WI�H3�@V���y@V6,�m�}@V'�
G8e@V����@V��U�V�@WfoK�W�@W��q��c@WHk�.�-@V���k @W��P�@W_��kE@WdǪ�!k@W<4R�@W ^�%�/@V�z��@V���,@VCˊ��P@V/��k@V�
��G�@Vu���zG@Vp��s 8@V�_�t�@V�RL�8@V�����@V�B/��@V��W��@V�5G���@V�����@V���
��@V���j*�@V��@V��j��@V��OT�@VqY9R+�@VS.9 @VG��pN�@VY�j{� @VW�f�~U@VU4h���@VM��Ao@V8�z]K�@V.���'@U���h@U�0�ߒ�@U6��O}@T��S@T����@T����@U1l5@Uce�ɀ�@U���}Ww@T����P@Q뿽�k@Q�g�2 y@SI��"�%@T,J��*�@T�N�oK�@U.9��@U8g��Dq@U���NH�@V�#L��@U�r�O��@U�#Bp�@U����p@U����		@U��/@U���{��@U��U��@U~3*0�@U�nt@Us$��n�@U��8.��@U�C� H @U��$(��@U����C�@U���\��@Vy�?(@V�#���@V4p"��@V2���@V<�_��@V����@V-B�R�@V'��P�[@V%���X@V%���׵@V)���@VJp��@VLM_;B�@V=���؋@VR��{�@VvNj�Q�@V���fn�@V�KK���@V_p����@VI3�0�@V/�M��A@V(��_�@VFl5��X@VB
ʂ��@VH�P�h@VZ��qH�@VW����@VO�^�C@Vm� ͷm@Vj�Z+�@VH�l��@Vɹ��@V�U:��@U��Uc�@UD��Cm�@UI��ܡ@T���Y)p@S�'T�^�@Q�V�H�@L�����@N"撄I�@O����!@Qc�n���@R�Ӂ1�@Ti��5@U�C3P�@V=�v��@V��ts @V��(N�@V�>\�)@V/š��$@VB�@]-C@V_`�S��@Vld㵗`@V|u]��@V����@V_\��@V}�EW��@V��ݑ�@V��wjA @V�I-8�@W3��\�@W0�.��@W'�^���@V��f���@V���c�@V^�&��@Vnq/��@V��4�'h@V�b�@W'���U,@W4:���@V�yD�$@W67���@W�aNu@V�lQU�@V��dGTx@V�F.��(@V�$�dA@W�A��@W%�N�@VߙQ>�@V��.=;U@V�mW�C@V�}@��@Vqc>�@Vj�Fb�9@Vo���/@VH�~�G�@U�2��`@U��u趃@U�.X�7@U݁��)�@U�P^:�K@U���om@Ub��(��@Ue�1��@U�Ȓ�f=@V+���c@Vcu#�U�@V�bݹ�@WdC���P@W��e&�@W������@WJqv���@V�:܄@V���� @W&s��I@W\�qo@#@WT�a��@W5�I@W!q�O�@V�@�e��@V��s!��@W)����@V�&S{�@V�n��g#@V��r5a@V�?�7�@V4�2-�@V_�I�<@V��;~=@V�%7h��@V���hm@V�����w@Vk״�Ǐ@Vb2ґ��@VO���, @V<rޮ	%@V0!]�a@V/��G�@V!��d8@V�YC�C@V�'��@V�o��@V���@@U�(]�|u@U������@U���q�3@U��"��@U��y�@U�Ku^�D@U�&g��@U�{�|@U�H�xg�@U7Ua(@TA���m@T_�'}�@TQލe/�@T!� ܰQ@T+�KQA@TJ?���@Tj��yҙ@T�T;]�@Tu��.5@S�x׫P?@Q;��ϒ1@Pl��W@O��>}=@Q���#/@S �-�[k@SV�V�k@S����s@T���8Z@T����1@U8קw�[@T�r+H�@T��B�D@Tĵp٩�@T����Ą@T�l%�	P@T��z�l@T�@韶C@T����@T�3	Ӱ�@Tˌ҃��@T�/�GP@T��?=@UDkM��@UOO��@Ul� ��@U��K�q@U�H�Q�%@U�%��@U����x�@U��!W��@Uݜ���@U̦����@UǇsd|'@UӁ˪T�@U���x��@U���V��@U�� �_�@V�e��@V+$Jr�@V��%�@@V0���X@VOBb&�g@V����@V%8���@U�Q����@V!���@V�p�]@V(s�.�@V6�^'�@VI\9@V${+'WC@V%����{@V.*�G��@V�&�/�@U�~�*@U��#O5@U�/E��@U��8w�@UޘI�@Tz�]�@Ul �'@S��[oJ@R%��
��@Pk��`4h@L��e�M@N�TP�;m@PB9���k@Q��]�|@S�S�m@U1�Łw�@U��<�@Ub��R�@T�܆���@T�AT+��@T��{c�^@Uں_�O@U,H��g@UO�B�aZ@U�Y��@U�x��M�@U�$d�d@V*��*�,@VK%Ɉ�@V��=s@V�%��"�@V�J,^?�@V����S�@V���Ҙ@VM���`�@VF�ʯ4�@V����&@W��ZZ1@W��X@V��L��@V����ȍ@V�Z��@VS�)�	P@VGڻE�@@V]]�kU@VF�n?�	@V;;�U,G@VT��A�Y@V��z��@V�[��_@V�M�bw`@V~�-�$@VG�"?)@V��´h@V*�e��7@U�#q7@U���_/�@U�-����@U�曝h|@Uk	��@UI:3o�@Un#U��@U�����k@U��h�q@U��ӛ@U�L�!#X@U�;���m@Uɭ�G�@VH���:�@V���<@W[١@WM�U�@W��!l�@V�f觯W@V�,3ݣ%@V�~	q9@Vo�j�@V����q@V��ԁ�@@Vk��Dxh@VJ��[P@VQ��@Vc�p�@V�)�Ĭ@Vn�"&�@VLZW�:@V6�!�O)@V�T�A@V�A�)�@V�u��@VL��@V5�a}'@Uݛ�&��@Uۏp�`�@U���jx@U��
��@U�v"���@U�F���@U��K�J�@U��f���@U|�k�c@UR_U$@UM���~@U0��j%�@U-ķ1�8@U=;��&�@U-y苻{@U$6��v�@U'h�<@U<�:@U5��@T�Z��.�@Tᐼ�@U&-�|�@Tv❡@S��A�@O�H�b�@RJ��s�@Smv��m@Sv:4Gs@S���,^7@S�ŋ`��@S�j��!@T�ԛ�+@S�h@S�n��e@R������@RE��!~@Q+�Ļ�@O"f�)Sa@Q�K�!�@S�ε_;@S�(%���@TK���@T�]uo@Tw�]���@T`s�V&�@T?i�
l@T8{au�(@T0��C��@S���?��@T]R�Cz@S��o�}@TT��@Tb�s�ɪ@TW��|��@Tr,E��@Ttȅ��W@T�~V��;@T���@T����)@UF���-@U]�E/Q@Ub����@Ue���bp@Um�0���@Up�����@Ujy��<�@Uu�J���@Ua�ِ�@Uz�ǋ�@U��+��@U���~0M@U�]���@UƂ��@U�h
y�-@UՑ��>@V�����@U��b��@UћB~"�@U͋TX��@U�'4���@VJk�]a@UڡQ�T�@U���l@U� w�D@@U�b!�@U�_4<@Uơ����@U����PH@U��)\�0@U���S�0@Us퍧t�@U'ֳ4_@T���纀@S��FO�@T�#��P�@Sb���@RÙ�Rs�@Pk�6FxS@L�o% 3@N ��K�@O3�1�h@P=�S��t@R-�v�8@T�@R
�@U����F�@U�Ϧ�t@T�h�>��@TOT��W�@Tm�K��1@T�f:$@T����@U6�+4�@U�O.q@�@U�+@U�-÷��@V��B�x@V#�/}ݸ@VY7� 0@V:�����@VXnV�9@V ��v�@V �6��?@VBV���q@V�;���@V���1�@VP����S@V9��<h@V).+�X�@V"�f�T@V=��V�@U���@U��$Ja	@U����%@U�ʺ���@U��CIŋ@V��g��@VU^��`{@V}3��V	@V��K��@Vbc��O�@V5J�S@U���`7S@U[ ȓS@T��3$@TF�A�@T�8���@U��^�@T����@U,�/dD�@U2�3�@T���s��@Ug����@U�A��>�@U�{�f2�@U�:�@Vt�n�u@V #$@V6)~�-@Vb4SI@U��5�o@U�x�}�@U�^13@U�|"T@Uq����@U�����@Ux4.��@Uerˁh@U^\�,@Uck���@U�Y}~ @Ut'�@�@Utp2V�@UL�w��I@U49l0��@UH�},�'@U<��5�@U=��%؛@U-Vv��@UOЉ�^@U(�)+�p@U��$�@U ����@U0�C)J�@U�.�N;@T��"v@T���'mm@T� A��@T땿~��@T�:���m@Tg��@T<m	�@TgM\Ƒ@T��9y@T1����@T ��i`�@T4���@T"ɮ�/@T"��yV@TDu�./@S�\����@TJ2컕�@Tu���GT@R����@P�1/�@Nn��b@R`���d�@Se�R۪@S'$�@�C@SG�ŊO0@SV�h�5�@S;���'�@SN�8x�@Sr�x>@S�2�C@S��/�@S/� @QŨp�&�@ORX�g�@Qo=4/b�@Q'�IRa�@R����pa@SGx�K��@Svu�^qU@Sr�zܒ�@SQd?�m@S[>�B�@S�o���@S�r���`@S�Z�@	�@S��WX��@S�[6· @Sǋ���@S��3A�@S����@Sׄ�.G@S�d�_@T?z$�x@TS�؋v�@T�oө�@T��?@T�m�,W@T���@U�QR�@T����X�@T����$�@T���-��@T�~�� @U	A���@U��\�@U6��	��@U\�8�u@U]>����@Up���u@Us�=��p@U�VIY@U�ؘ�L@U���j/Y@U��܊=%@U�}p�mX@U��ꟽ�@U��(F]�@U����?�@U�\��,�@U�}&"E�@U�i��;@U��a�c@U����<@Ut	��A[@USv��6@U(ͅ��@T��/>�@T��p@��@TV�:��@SU�E@Tn� E��@Q�{ U�@P�Ϡ�@M�M|��@Mt����(@M�m�&@O)�`���@Oq���g�@Q���@T�L�#�A@U����@U��w&^%@U2�?�i@T����S@Tx���m�@T�=;�b#@U@Ɏ��@UHy��@U@�kL�@UOGѭW%@U�1&>@U��E��@U��*hS�@U���\�3@U�n����@U����@U�߇���@U��hQ�@U�~��%�@U��#��@U���Y�@U����H�@Uw�)X@Uc�+�&@Up�Hl@U�8��K�@UN�@Um�(�@U)���pw@U�@U[��y�x@U�SĠ��@Ut]�Y@UKLI&�T@U�h͌@Tہ��J�@T�3=�)�@T� h�c[@T�:�--@SaH�m�C@S���c�@S��!�@S��1�!9@T0İN�C@T��L�^�@T� �L��@T0����K@TNYp��@Tn/���s@T���F�@T�c��@T�j� �/@T�J3��p@T��p�@Tf��<#�@T5o;G�@T%���@T(��`@T���4@T����@T(E) o�@T9��Z-�@T2쿪�c@TEQa;�@T*D]�g@T-y�0/@TXp�<f�@Tz��q!�@Tv'�˨�@T2�eP��@T(TA���@TD����@T:+;�9@TH�9�@Tp�Z���@T�mꨧ�@Tu����@T�'�L�@T���ET�@T��RK�@TZKtT�@T�d�NR@T��3�C�@T�+�)x�@TR~���t@Sƶ����@S'�E%T�@R�&�9s@R�����@R��C�?@R�N��s�@R�表q�@R��2��d@S(b�@�Y@S7��@Sa>�C� @R�u�x@R?��{@Q�\\9��@Q9B�{�/@M�Y�5A@P	Ѭ�@RJ��*�'@RZ�뻥@R5�ajo�@R��PA�@R�����v@R��2�j�@R�>����@R�w��Y�@R���1�D@R�#|�h�@R�����@P���u8@P}�[�J�@O|����@Qu��k@R=Ϟ5@R��:�|@R�7FK@R���ߍ@R�9>��@S�����@S\Fo��@S:�l�@SBD*@S>��8@S+TU�0@S2�K��s@S&yʹ�@Sc/�A��@Sp���@S���ꄑ@S�f�hpp@TMd�[��@THV'1y0@TV�@T}^�[I@Txg�Ne(@T�	���@T��uX@T��~OB�@T�q�A�a@T�Kb�!W@T�\�w%@T�=é��@T��@{@T� ��?@U"qmK��@U<#����@UVs��@Uz�c`��@U@�z�$@U/�H���@U7&��XD@UK&�r�@Uf�uk@UP�6,7�@ULm�.�@U<����@U?��w@UTG���]@U+��0O@UJS�\@T�fnX��@T����e@T�ZI�w�@T7y�z=�@SP�8�@R
�K�3@RpɊ��@Q����@O�u$�F;@M-��i�+@NVM��0@O�_�.�@P=�����@Pu��<
�@Pn!E�@TO:K�'@T|�� �@U��[�=@Tː���@T�u�81@T���`M�@T���|�/@T�K�W@T�.NA@@T����|@T��rU@T�: ��@T��+�*G@T�b�CiG@T���ulp@T��~?@T�2 @T�:�ಔ@T�����2@T���M{C@U����@T�����@TŐLa��@T���0�@T��aE�@U쬢�d@US��i�@Tx���@T|L�-��@T�X��P@T����@T��Z�@T������@TA1�3};@S`���Ѡ@R��;�\@Q�)�@P���	@Pr[}� x@QhrI��@Q��.�@Q>��l��@Qn����@Q�ݧ	λ@RtOy:�@R��@Q��G�r@RfV.W-@R�E̿�@RX��jWP@R�US�P@R���A�@R�P(	�@R����6�@R���J%@R�jE=�1@R�<M^R@R�� I�'@R�-����@Rت����@Rېw��@R��>���@S2x]B��@SUb�K@S0̚�x@S?���@Sh�շ}@S�>��@S����vM@S��%F=�@S����@S��/��@S�D�|o@Sfe��@S�t�I	!@S�Jp�@S���^�@T ����w@S�'��WY@S����u5@S�SN�N�@S�z�{;A@S��|P"@Sڦ��w�@S�I!�N1@SR���O�@R�����@R����8@Q�_Gk�@Qf�c-@QW���t@Q/�~A�e@Qd-���@Q�����@Rr"��@Q�� 3<@P�� �(?@P�+#��@O����l@N*���@N��Ti�S@O)��
�@Haa~��=@P� #�g@QB�ԁ��@Qa�8@Q��Q��@R#L�Jx@Q���%]T@Q��c�I@Qݎ�x�{@RL��㿡@R3J2M�@Q�R��@P���F@P��[D0@R���@RkX�]�@R=�rB;@R8�{$�@RFvͨh@R0n�Y@RW_�DK@R�\���@S^64΅@R���p�@R��&Tq@R�;ێ<�@R�H���@R���p@S!�ɖ� @S%�ֆ��@Ss���/@Shg��۷@S�W�ٺ@S�<��Z%@S���DP�@S�ހ��@S�J����@S��^s@T"�V�	k@T(�p/�@TF�^p��@T����@T�5˂y@T��d��y@T���� 0@T�bk@Jn@T�]P�m)@T�5��@T��aI@T��K]@T�2�BD@T�i��l{@T��{@�@T�g��7�@T�
���@U��E�@T��F��@T�F�lŕ@T�0�_ @U~M�� @U�Z��@T����D@T��#��@T����^�@TX����U@T	ɋˡ@SxO�ֳ$@R[�_�e@P�&��é@P�lɹ,]@P�QF(Y�@K��k��X@KjCo��@O%!���@O����t�@O﹩z�@@P��Q�@M�'���U@P��\<�@Sf��WL@S�X�J�@S�o�]r@S�-�Ͻ@S����9�@S�D�/�@T
�fl�@T��J��@S�߈��@S�Dl��@S��Ae��@S����@T1�썥@S�+�f�g@S��E�x�@T\~}aC@T'�Y�@T(����S@TN�ez,�@T�L�ݭ@T�\]4�@T���g�@T������@T�����@T�`�=��@T���@S�e�:&@Sʪ~�L@S�e�6L�@S��p�@Sc���H@SȔ�@RR�6f�&@Q p�tS�@N�,_���@K�΀�@F�;����@E�8u�V�@FW�sk�@G���H}@K�!*A�@N��pM�@O�����@O�Ϙ��@O�Ç��m@OS�cC�@O��c	$�@PQ6z��@Pk�m�@P���g�@P�	�@P��C�O@P��lRT�@Q �=�x]@Q#NJ��_@Q@V�5�U@Q��'*@Q� �9�E@Q�G��a@R45w@RD�Я;g@RbD��&9@R��2I��@R����@R�|�2s@R�"Z�@S
E�dM�@So�%=@Sݎd7@Rך����@Rٚ���D@R�Qۀ;9@R�v�R4'@R�rf�9@R�3����@R��Lz+�@R�ה�@R�W}y�@R�	��MU@R�\|��@R��ů�@R����F�@R�܀wk�@RmT�R�_@PH�{��k@O=�ڲP�@My]Al�@M� �	�L@L�ɏ�Y;@ME����@NPӀL@O<RZZ>5@P����@N�!Ҏ=�@N;�[L�@Ld���H�@L�A���@LOqt��@MMV��@K)i8�K�@L�Օ�g�@JjH+�8o@K.^�'+c@P�p�N�@Q=vf2�l@Q3�"�ݬ@QR"�/�@Q~Q
F0@QM�f�m@Q����v�@Qc��E@Q"��|�@P���{_@P�����@Q�a���@Q�Z?<<B@Q��✋@Q�L~���@Q�=2K%;@Q�rb�1K@Q�F�i@R+�T�F@Rh�ʯ��@R���V�@R�y%�A�@R�-��q@R���;"S@R�>�@R�bg���@R����<@R��B�@Rځ*�@S	ϻ/�@S3F�D�@SCL�Kp@Sf��dY�@S��;�z�@S���%�|@S�N��P�@S❉C�@TA�$��@T�w�@TF'":��@Tl
�"@-@T_
(W�@T`ة	T@Tx�ju�@T��ǅ@T�eo�)�@T�Q���@T�B�K��@T��GS�@T��G�u@T�����@Ts3��F#@Tj�0��@Tz%14Yh@Tx�(To/@Tt�2���@T[F寄+@TW�v�]�@T>{�1lD@T
U/.	@S�Kb9!@S�e���m@S��=��@Sh�@���@R��,sWi@Q�GAP��@P<��Ѽ@N0�݃��@PP��L�@EG_�2��@H�v���@O)��sl�@N�T���}@N��1#[�@Mwʯx@Oj���@O�Qθ@Ps�)��?@R��ϏQ�@S3? <C@S:�����@S6�0S��@SJ`-$�@SZN8��[@SBn��@SMDs|E<@Sbb�E@Sh���{@SbAC��b@Si[F�	@SkhCbQ@S~w��J@S���@p�@S�#tF�@S����9�@T<C�c@S����@S�*|��@S�F;{�@Sċ�tk�@SӴ�m�@S���Q@S�)�>�@R�����@Rӑ�!sG@R��r��@Rl��Bm�@Q�<�X��@Q^d���@P+� �*@L��t:TI@G�ke
�U@EH��Uq@A��؆n@@͸3��@@or��@@h����e@B����@G�<�I��@K|�0�@L���Ѕ�@L���-@L�be@Mn� �o@M����nS@M�K��a@N����3@N�����@N�s"zc�@N�+�0c�@OF���By@P	Q�hrX@P/ʼ���@P��Ib�@P�$h(��@Q/N�g��@Qa�~��@Qo`�;ɸ@Q�!���@Q�g@�V@Q�#��Vt@Q�5�@R<�<?�@RGhCi@RU����l@RH���A@R.���!o@R2M��0D@RF����@R����@R@�K�w@RIm�Jy@R7U9X�|@R�Q�@RZH���@Q�3U�W�@Q��l���@Q��
+@Q8E�i@Qg����@P������@L�9��E@O��B���@K�.���@H�|�P�@HuC�"�@G4��t@H�)�<�@H���{�@@IH��v*{@H���o@I��;�@H�ר�@C�$NP��@Dl�T(M@E��:�j�@E(�N3�@I����-@H\�K�h@G�\�@M<@���x@P^X��K@PD^�h�+@P�(���@P��p�@P�1 �4@P�����@P�*�<�p@Q�\1��@Q�cE��@QaҤ
c�@Q.�z;��@Q;[U�R�@Qi��)-@Q8�Guӱ@Qjr��jb@Q��JV/@Qԏ�!=@Q�wA�%I@Q���o�@R �kT�c@R`�זc=@R��X�1�@R�b�U��@R��-���@R��f�M@Rv�쪺�@Rc��wO@R�.7'@Rۣ^v�@R�.tl�@R�B�z�!@S8��$�@S{�Xb��@S�}�O�@S����@SՔ�ܟS@S딕�g@S���2�@T�WZ�E@TdU�U@T*k�5��@S�v%��@T\��Y�@T��V/@TL����@S�i2դE@S��M��l@S����@S��	ÿ�@S�T��@S�pcE�@S�/�]88@S�SX�O@S�a}u��@S�bǗ۱@S�\��'�@S�,�NH�@S���H�@S{����@Sh�e��@Sae�;E�@S>D���@R�:f���@R.����@Q7\ nle@Oïw�([@L��rV-�@J�-J��@DNZ�m��@C�|���@JoLV���@N��&"4+@K�n��;e@L� F��@M�a�G��@N��[ @N��~�@Q�d�;�@R��R�}@R���`f�@Rl�^E��@Rf��,��@R�z?�
@R�h���@R�2�X��@R�=�9��@R�^#�*Q@R�#�W�y@RÓ�IgC@R��/�.	@R�&<�@R�>�c�@R�Ă��@R���!\@R��I;�@R�3�P.�@R�&a��@R����;�@R��h���@R��݊r@RU�D�=!@R�����W@Q������@Q�h��|c@Q����@Qv���@�@PƸj��@P�.�+�@Lp
��sq@G>��X`@B���t�5@<.Z���@7do}OU@6?:�{�{@6ϼ\A�@7� S�@:�f*��@@�^i�@G[��>�5@Jm�D���@J���D��@J��n��d@K���[�@KJ�C�@K�kĨe]@LD��}��@L��Y���@L��1H`@L���:�@M�m@@Ni�1��@N����@O��I�=@O����օ@O��G�UX@P&Y�-�@PXk0�@Ph��G�#@P�c}
�@P�+O�(@P�q2��@Q.<w���@Q2͠�s�@Q=�Bv�@QK�J��H@Q�����@Q� ����@Q�b�|��@Q��O`�\@Q�9���P@Q�����@Qu�r���@Qcl����@Q�C�(�@Qp� ��@P�ǃ@P��%(p�@P�Y�'g@P���3�@K=��C@Kv���t�@G�ؗ�e@D�P}.��@C�t����@FIxYH��@D�{J}@F�&��>x@E���@Aqj���#@?��_N��@=�C�5|u@A�/���%@@n��q]E@<��xV$u@@}��@x@DN��t�?@FiL�̚X@C� ⯂�@E�&�Y�@H}t�]��@M�=5P*�@N�}<=B�@O�Wi�ۈ@O����@O��"�9�@O������@P�VD1#@PQ��8�@Pz�iWs�@P�c�� �@P�j����@QU6h�@Q\����]@Q$�Oo%@Q$�qO7�@QZ��I@Q��7)�@Q�9"��@Q�~��@RT��'x@R<��no@R+;���@R}�E��=@R��p���@R��0.U@R���~�@R�o��tw@R������@R�57�4@R�0�_�@S,�n�@SN%���@Sk�Ti�@Sj­h�k@Sy�e�[\@S�����G@S��f��+@S��xڝ@S�b�$c@S���&F@SMX��@S>���hY@S+ֻ�kg@S�CfY@R�@�M��@R�zG��@Rٚ/�f�@RЙ����@R�[9��@R�?(���@R�	X�5�@R��.��@R�I�U�@R��E��@R߳�T�@S��O�@S }YU?@S��_��@SL�
0�@Sz~��W@R�T�md�@R�f���@RN�1�&@Q��v�I@P�eN��@OT��+I@@M=?�Fk�@E.��+�@>�*hz��@B��V���@H�S��Ou@K-�S �4@J�(^�@J�����@LF'��s�@M���*�@M(��j�@L�l��g@Qz���9)@R-�F�@Qz�={��@Qm���@Q��8�H�@Q��%)^�@Q��i��@Q���E	�@Qj�����@Q7��N �@QSH;N"�@Q6)���u@Q����G@Q:�uC��@QU��,@Qp����@Q-���n@P���g%@Q"�gh�@QP�T@QK�_��@QI�,6�@Q0xq,�3@Q[��{L�@Q&ޗ]�K@Qd��m�@Q>�ۧK@Q >�O�@P:�jdٍ@M���bPQ@H��!�@Cv�.8c@:P��-{�@0A�l�b�@/�a�y��@+�Pr#�p@.7b��t@-�f�#�@1rN o/@6�+��?@Aj+�%�e@G��B3Q@GL�B`@G�h���@G�(��@H��ס@ID���Y�@I��X���@H��bL�%@I��$�a@J�^�@K5��A�@L^$��j�@L�Z]���@Mm2��Ȥ@M�p��@NV�8��@N����-\@N7�Uh�@N�HL��|@N⇏}�@O�CK8@P/V�ݒ@PkZ7ɿ@PM}�-v�@P�^Wڛ�@P�)�@P�g���@P�U|e�s@Q��$;@Q.*艍@Q|.�@P�vB�@P�!��@P�>�o�@P�Rt��@P�x�@PByD�@O���(�@N���e�U@K�P�N2`@F�dk� }@A�}���@>k�`�z@>�
Q 	H@>֨���@@KƑ:�.@< S8��@;Ud�Q@:�v"Ue@9yJY:��@9*K0@9���#�@DSхց@:���1�@7�8E��?@:���AZ�@@���Ŀv@Ae�P@BQ�ӧP_@Di5BB��@G��#�@LA���E7@MA!����@M[L�t @N
{C���@N-�=]V�@N11Qv�s@N������@O�1���c@P��
_@P��{}k`@P��x`�@P�z�l��@Q<��B�@Q6���\'@QKq���@QGJFsF�@Q�ي4�@Q�\�#�@Q� �j�@R��Pp�@R@��+͋@RP�l!K#@R��Wz@�@R���b�@R���|g@R�0�D�@Rr�>AVt@RN���r�@RTp?�v�@R{�733@R�IcN�@R�����@R�(g�ѿ@R�QdT��@S����a@S�ı�@Rӎ����@R�+.�0�@R��r�d@R\PP�aI@R�tn3@Q���b?@Q�N �1@Q�#Hb��@Q�8A@Q{y4�@Q�h�ǰ�@Q_`p�+h@Qk]�?i�@Q{'�@QeI,uV�@Q�ң�]Y@Q�A(��@Q漎JD�@R��8��@R<��@$�@Rjzf��w@R����@R��Q���@R��t�@R��&`q@RY�-�#�@R/�iП@Q�7�<��@Pݓ8�}�@P6�V�@P��V�@@ݔ����@:S#�ա@@���%�@E����y @Ie�qd@In]�3@I��v�q�@JvM*��(@K7���B|@K
F�Ԡ@L���P@Oʹ}ם@QJ%PnE@PXV�@P�y���@O�봀�x@O�?�*�@O�e.;@P���@O�Q�Vm@O������@O���`M�@O����N@OB���@O�=�)@O��U��@O��or<@O`D�͈@O�����@P-�`d�+@P�����@PAL\�@Pp̬ᬅ@P�TK2}�@P���,N�@Q"�m�@QO?<��@QJ �Od@P�G=#�7@PA��`/@K�eC۵@EIr�@?��yI@%�V�x�1@!W��

@׈��uS@!�d;�@$L w��I@(\��}@-4`���h@2V
�ils@?? �`��@C0��@DC�k�?@D,��vD@C�$l�@BA>:��@@��A��@Cz�*�4@J6i��@H����ǐ@J̽��@J]�A�o@K]�_t)5@K���Q��@L*W�H�@L%�^�.W@L����?%@L�n���@L���Q�@M)�k���@M�)��u@N����@O6<s@OTR!�@O_���f@O�(�4�@O� �s@O��m*c�@O�$��P@P
��w@P!��
_@P��Z~@O�\�g�@O�w�r:�@Pv����@O�@�$�@OF����@N����zX@M|�;���@K��H.8@F��U� @?"6�9@7��26�|@6s���@8HH�I@8挚�2�@7�}5���@6���]@6y��,��@6��\��E@6���|	D@3�a��"@1'h�k'@6��X,@@7�	]��@7p��_�#@6���t�O@;�]R@>�0�R4@@���@D���d�x@G���@J�[R-�`@K�h}m�c@L�r3��@MrlЖuC@M�8F*�@N��L�@OǠ`��@O�om^��@PT���s@P1~���l@P=y���O@P�I'@P�_/�3@Q*\�F�S@Q��Y�h�@Qv-��;�@Q�D�hT�@Q�OB��@Q�$]6�@Q��e@Q�=�Ҍ@R,&#xD�@R`�poI@R4�@xN�@R*=��Q�@RN	��O@Q�}��0@Q�{��@Q��m���@Q����@Rm�\Q@R�eĶ�@Q�J�D�1@R7G��@Q�["���@Q���@Q��Ά�N@Qp56�@Q&�Jg�E@P��|�j�@P��k�}(@P�Ƣ��#@PV(E��p@P96��&D@P�#}�>@Oՙ�"��@P�Sb;@P�sHE@PE�v	��@P19�2@PdUր�a@Py�{��@P�t�nKK@Q��
�@QJ��L��@Q�+���k@Q�����@R0��h�@R^���@Rv��'vX@Ry�h:@R�aMт @R�A�]@R'��n@Q��e:��@Q�����Y@SU3�)+@<>�N��@3��	q@8S��v�@F��C@GZ�3���@H]�S��@IU�Ѐ�=@Jݹp�@H��1*�+@H�{��h�@L����x�@O����3@N�	�@Nc Ρ�;@M�ܨ=�W@MR�ox�@M2;� z@MK���@M4Yo���@MF��4@L���l�@ME�k}2@Mo����@M0��5��@M9��"��@MS�ʋ�@Mr�0Go@MJ�s(@NT����U@N�����@OI�Nq�@O�Y�ص@PZ(�-@P[C��@P������@Qq��3�[@Q��-@Q�\Z�@QWY &�@PL�>�@J��M�@C�x��d�@>�͌ �@o�L�C�@Ѐ���C@O���Z@5���.�@!�K
)N�@(���V�{@/7��ShP@6�K���h@AO��W@B�W��P�@C��s�3�@C#t�mO@A(-#V�@8 $�%��@2_��A�@=X�Ǣ�@J�,5$0[@H3�Q*Y@Hoā�"@I'�@`JI@I�qi���@Jt����@Jɠ8Um�@K"��R��@K��%Lj�@K��cfM@K�����k@Li�*ԑ@L��w�@L�Q)�[w@L����q@M�z��5�@NE��{@N��;-�@N��0���@N�E��'�@Ng���@NӦ���@N�L� �@N��p�@Nm��tV�@O ���I�@O���>�@OJ5o&��@O����@NF�j�@L�Lᒨ@IY���@C��;�@:-"��s@51��B�j@46=���@3�r�U��@2TBs@0����@1WGoD�%@0����5@1-j���^@49Ӡ��@3a-0Y�P@,TSg@+$��C@2�K:(@1����@72�=/N�@9�FIoͿ@=�}�h��@A�LW��@B���A@H��*�K@I�sԦ��@KX���@K�	u�W�@K�1�"�@Lv$eyt�@M�[;ٸ@O1wb��+@Ol~�H�u@O❮ظ�@P>=H��@P[�x��m@P{7�R�o@P�"��@P�×�"K@Qo/:d��@QY�jY��@Q��u�cF@Q{�{�@Q��ݤ�@Q��?t�@Q��!^�@Q�{Dbj�@Q�G��1@Q��@C��@Q���,F@Q�A$��@QL�ϑ@Qp��@Q	U�/�@Pƾ�S�@P�����@P�1X�I@P�S�,�w@Pj���G�@P8���*$@P-��@O�Q�vW@O�k��Ϥ@O
�Dfw@N��!�@N80&&w�@M��2Ǒ@M�Ka�@M��0=��@M^
c�@MdC�f!�@M��6�h@M�!�v#@NTh�I�E@N�p�t�4@N��K�@O�@���@P%kG!Q@P��l��@Q�1@Qcn��<�@Q��|���@R%+fq��@R�˥P��@R�-��v�@SE��@S(<�,�@S!)��|@S!�$$�@SĆ�J�@S�W�@U�/�ח@;�.-£@. ��;c�@1��[�@G�j��"�@H q��+�@I�<�@Hԟ&W�@H�Ֆ`��@GؾF�@F ֳe�@Ft�S��@I��wU�%@I��{�[�@H=��h�|@HF��7��@JX����@J�֟!��@J�-���e@J�kսoA@J�!��b�@J�`9~�@J��2&@�@Kh�a��@K�eQB<@K�h���w@L8�y}�@L�.BN�5@L�H)K��@M�����@M�w��B�@NҜ�4�E@OH3H�I}@P\w�4)@P�)��bq@P��քR5@R�]![@R�� �G�@Rx#��`�@Q��ո��@P0�T�@J����c@FJ�P8J @?���}<@�Qd���@
��Ҿ�@��yR@�F�U�@ ��u���@%��-@4�IJv�@<�j�W@@e����@B����w�@C�-��lq@B-���̐@?0��>kk@2�5@��@*~╫Q@6�.y��@K�����@G�~�"c@Fv!Nm��@FC���I�@H��Ͷ@I@I����s|@JZ},@J���j֝@J��$T��@KƏ�@K̆B��@L'�Q�@LN>���3@L�@���@M_��*ȕ@N�Ms`@N*ʣ�u@NC����@M�݉U�@N��P�@N/��0�@N	e&D�!@N
߁�@M�N�{�@N\��Ki@Nbc��x@N۶�{�@O���
�@N�|��;�@M�4G{�@LMZ�ik�@I5���t@C��@8��R��1@3��Ж�@2���@1T��ޒ@0)W)�D@,E���l�@*
(΅%@-<�H��@*�ci.�@2_�[@1Q��e�e@.�����@'.Cm�ZE@,�2+�O�@0�B��@4ꢟ�W@:4O^���@@;��TK@B�O7!-@D�^N��@JU���BO@J��7�?@K�Թ՞;@K�O����@L7a��P@Kb��d�@M
��c�@O��dx@O�;��3@P'���R�@PBg�Q�@PqdeDX@Pk�cF�i@P�Z�	>�@P����@P��;@�A@P��h��@P���l@D@Q���@P�
i�S@P�q�Y @P��~$m@P�	��@P�"���@PŸ�;Œ@P�W��PK@P�am{��@PZ`@��$@O�!Y��@N��v��Y@N����p@NB��Ed�@Ncg��@NB��P��@N k�c�@My�̅T�@M9@��e@M�P^@L��./'@L�R�m@K�l��F{@K�'^�L@@Kl�a�?�@KAl�w+�@KY���7�@K�%tV�@L	c��w`@L36��D@L}�7W��@L�x3�5@M��w	M@Ns��tU�@O���h@P��@P��L�Z�@P�z��C�@QvYwz�@Q����@Rtm(��@R�)��^�@S�؊�~}@S��]�@TI>S�u@T0��S�.@T�f�>?@T�4W�\@U�D�S�@V�7�$�+@C�|����@'�n8�+P@%��j��@F 4hMaK@I�O(��@I�y��n�@G�f``@E���r;m@DR@�56�@BvP9��=@Au��V��@A۹@A��lR��@F�����@G�&�(�+@G��qtW@Io�&��@H���Y��@I/sP���@I'L�vy8@I9����@I�����@J7��=@J�����w@Kp�b�@Kv �k@K�J�VC@K�{��7@L�SS��@M���./s@N���x��@O>�6��@P?�-[��@P�[�0�@Qs�j�@R�cM!8@S,����g@SW
{�J@RX�z*?�@PS��&9@L��0���@L�d�|�@��Jt_@
@��L@%��@e���@M39c�@;u��{G@"�[����@+�8���@7����@<.l��=�@C�V`�#@B��1��@BK���{Q@>gTϛ�@@3Qo�m��@(d]l�@0U�'�$�@L��f�@I�Dѳ7�@Gv}�t�Q@F��9���@G��2�U�@Ji(j��`@J�h��@K)J�� I@K2�q�3L@L�څ�]@L����@L����@L���ML�@M��í�[@M�f�}}�@M����yC@M���;A�@M�caaB�@N4�{���@N���pd�@N����7=@N�
%}/�@N��sM?�@N�څ�@@O&�0r�@OB�av�/@O	���U�@O9va~��@NTyW'�@Mm6j�4�@L y.@I*�p`�@DPv٦(�@=�#ܳ�@3����Q@/N?���@-ƪ��#$@,���_S@%�|W� �@&���n5@*�&g�??@*~}�$�@*��r,@0�D��@1 ��b@)���@-d䐀�s@-8�����@4�_{Q@@U�q	.�@B�V�)��@F���r�@Jd`yu�@K����jl@L�;�$|@M�j5)�@O��#�@NWrX�8�@LKA�	@N�?���@O��~ۥ@PI��wo@Pt���&�@Pw�ŀ@P�K��@P��n�@P��m��=@Pp�� �y@PKC��N�@P-��.C@PJ����@PG��;�a@PH1ߐ�@P�L�@O��6��@O�7�>�@OU��@N�%�R@N�Ӑ;��@N��M@�@M���Ϻ;@L�u�5�@L�0�}�@L)d�n�G@K�p)�?@KЋhM�@K�,N-@K�귉�@Jÿ��P@J����1@J�7����@J]ʁ�N@I�T�p�@I��>AW@I�\--@I�D�$̳@J#���=@J,aBz*`@Jv� �l(@KM�:.�T@K�\�y�M@L3�����@L��Ճ�L@M������@N9�j��@O=���Ec@P.<\#�u@P�Gc�@Q6ɺG��@Q���]��@Rpi@V2�@R��P;>�@S��O��@T ����@T��͌vf@T���77�@UZ2�M��@U�x�0'@V�9ݒ��@W)��&g@W}��bOE@D�P	��@<�%Ҙ<@'����&�@B8�l�Q�@I��^~�@Gx��L5P@Db�J=#�@A���R�@@��=@<�9Vj0@:�y�SB�@:O����?@=��� u@C�HXY@KP+0�@J��Y��@HzON�ɘ@G����@H�=���@HTgCж�@I(� ���@I�����@I��R�W@J+|jߡ�@Ju�L��@J�N	&.=@Jˡ��p�@K�����@Lp�~�I-@M~M�FES@N�<��p@P<���@PĠ��Y'@Qo��#��@R5�|��@Sz�+��@S��+g�[@T	s����@R���d E@QI���@PД��@B=(��?�ԏ���@�ˑ9�@�x4.3@�g�̪7@�6`Q[@�l�f�c@%�4]�@+7�~�&�@1a1c�@8CSI[�@E�3B	�h@G�.<$�U@C=
����@A �h,ǻ@:L�&ݚ�@1U�ut�@2��6��@M�[~]�4@Nz��A@H��l��,@IG^�׻@I���)��@JϏ��߬@K~S��@�@K����4�@K���s@L���.O�@L�L$9e�@L���@M]��=�l@M��*� L@M�.��(]@NW�T��@N���4@N�o<�k7@N��u@�@OG�M	@O���(Wp@P ��&�@Pc����e@Pi�!�k@PI�6�g�@P�H+@O��c���@OD��h1@M��3�@L���-��@K#>�.@H��E�X@Ek�]O�@Aa��֚�@:����@2�����@)��n�s@%����!�@'5�c2��@$�	 >G�@%��T�(x@'�#$K�@*��ص`@-{�0O�x@*{ϒJ��@,Ga�Nmo@,q�`@1x�4�@8�o�Dӣ@J"�`S�]@KE���@J��?�`�@L�|��@Nj=j��K@O̳����@P��ʶi@P���I�@Pt�Uz��@P�K��oC@Q'nY�<{@P�ZX�i?@P�D1�d-@P�B� �@PZ�k�Š@OM��)}@OU8mJ�@Pu�SP\�@P<Ta�?@PL�\@O?+zy�@O���@OG�_@N���,@N����e@N=�mO6�@M���i@M���*��@M?�d��@L�O˹��@K��T�X@K.�n/@JAr�7#@J��ҹ�@J�
�v�@I����5@I}թ��@IX�\�S@H��p�O�@Hƣۺ3K@H���|d�@HyR/��@HeA�D�@H'�'X!�@H~�K(��@H�a�d�@H��PN��@I�W�C@I��g>)x@J��<�@J���~Am@K)LRHrp@K�4IЯ�@M6T@d�@N��_��@N�q�<�@O�7�#(@PR��M@Q��`@Q��^�L@R>(�Q��@R��
9w�@S{�b6C�@T!(?�[�@T�F�%T@UL���/}@U�X$@V��1��@W.� ��@Wk���?@W����J8@Up���m�@8���Tpt@'��@2K@4�U`H@H"}#��@H��N���@DXh1�<�@@Y2G1@<��2��E@9�)&�FL@70o:0��@3���|@5U�N�aG@6�R����@@٪f.��@M���~%@O@z �@F���x�@F��� �@GuN/#@H_�� @Hdi���@Huݚ�*�@H�����_@I76��@I�z;f�@J[��h�@J���ҙ-@L+}I��@L��k�W8@N-\S�@OOFOύH@P���4֕@Q=*�O@R �\F��@R�|p��@S珋���@Td;�� �@Tƹi#W@T'Er��@Sg��@S�ć|��@D��/��@ <g�٥�@��x�q{@	V��%�O@u���*@-d�r�z@F��T��@&���ɸ@/ᜫ�]{@8��2�@?�Y ���@C��9JQW@G �:@J%�@*1�@G%�Ǔ@B��Y�!x@1����Nw@)�)���1@C?xH�<@Q�����@K O!��@J��[�@K_P=��@K�wO\�@K�)�uj�@L��3Ti�@MLpց�@M���d@M���k�!@M�,;�a�@M�/ 7��@M�v��k@N����s@OT�}_��@P�?/@Pf��(@P�lR%�!@P�[�,�@QZD��@QrO�p@QQ#!G3Q@Q��j;@P�[�C�@P���3d�@P+�5b@O�4#h�}@N_.�ߗp@Mu�8�Y�@K�R?�jS@Iw�#��l@F�+ %z!@C9De�}9@>��	�:@6i�o]@0v=�o��@%P�k@"�t`.��@#Vmh*��@#���\0�@'
� �Ɖ@'��2 �@)��(�c<@,Z�
$X@,�Qb�@'��H@4Pp�Lӝ@@�~/C�@M  �`l@M���@N@��>�@O�Q��z�@P�k�[E@QK���0]@Q�5噱�@Q�$[�@i@Q��.da�@Q�@�S�U@O�[ �l{@Q���/�@Q�S���@P�z�IV@P�~�EW@P/"l��@LW1U@"-@O~��W�@O��v�*�@O9�٨��@O2���@N̍��H$@N�V�{@M���d�C@Mb6�m��@L�WIs@L��!Wc@K�d���@L0G1;�@K�Q��fg@K
,��P�@I�v0ɦ%@Im��{�@H�y&T|@H�['���@HS��e�@G�f���@G�k���'@Gm']�Xk@G)�����@F��y�Q]@F�cS-��@F���7-@G.��d@GPݼ�T@G_�X1��@G�cz�@HF��q��@H�òf�p@I&?�^�a@J4�j�i@K��ƚ @K�~���/@M]�,Z7@NS�[�k@Of�rՂ @P+zl�;9@Pًg�=t@Qt3�΁�@R-|0�Oo@R�b�J
�@Sqwr_��@T"=���@T�b�E}�@Us���@V#��@V��^��{@WX:$�ٌ@Wly��@VN�OG�@H��]��@1�*�@-�Ņ^�@F�b "��@K
��7�@GR�	{�s@C�M�߾@@�X�eS@>��T�@9u^uD@4wk��_@0���!�@0��N��@3B~��X�@4v^gH��@8�EC��@J��ˋ��@Q�cd!8@H�?0�xk@GF72�@G����Z�@G�@�U_@HA^qI @HD%cW�@H��"��@Ij���0�@J7���@K�t�v�@K���Q>�@Mev���@N�t�@OL�OFl@P>f7a��@P����y�@Q��B���@RV�?0@S/`��@T~1"I|�@U-j��@U��Mo~�@U�lA��@UIZ��@U[#�'@N���9 @��F��?@9?U^�|@��VW@����@��M��@�JtZ@"��1�K@+���uu�@8-���1+@;W��{@? �c��@FϮ�So@E�h����@G|�����@F��>Jթ@=�Am0��@1-x����@8���im�@O�b�퇭@MS	���@LNS@�c�@L����G�@M2C �@L�劕�]@M�ְ^�@N�	�@Nb���~8@NI"@NPL�*,(@N��-�M@O|zq���@O����@Pk�-��@Q�T��@QL[@��;@Q�B's@R�@E�@RO:5oJ@Rr�.)��@RK�9%�@R�[�n@Q�R�@Qx��~�@P�p��]�@O�c����@Na�~��@M{D����@L]���@J��; �$@HCS�I'#@E겇��@B�"L��@>�����@9c�-Lh@2��V��@&���t�@#v�h6�@#����	�@)�)��@+mKl笗@1η*tf�@9Y�_0Z{@<&K���@5��_Ҥ@A|����@J�=$ �@N��gnU@O���J�@P\|�f�(@Q�@�!�@Q�I/�O�@R��ށ�@S=O@S�x�O@R�m.��@RO���uu@PR(M�@Qp�Ѕ~�@QG�z4�@P��
?@P{���a@Ptb���@Pf=�o�@P*S�@Ot��U3,@N��8J�@L���f10@L�R����@L�՝`J�@L�qq?�@K��3�}{@J���y�@J�M�SU@JJ�~��@Jָ	��E@JexY�@IVIk��@H�Rt��H@H&���@G���F��@GH�� �@Fݒy1I@F`��a��@F�W�a@E�I�*$5@F<��M�@FA�_��@F��t@F|'ı@F D�8��@F�OT�x;@F�4t�-@F�
�L@G���0:a@HC��m@IGv��@I�Ӻ��@Kd�ٷ�@La�2���@M|��%0@Nqv�̵@O���=@Px _��@Q=H���@R�l�K@R�`�;�@Sz�%pR�@T+��Q�@T�S�7�@UYք}j�@V7$|mk@V��J�@WxE�|�=@W���s@W�3�@EU�i��@7�#�1@?�\1m@HY5�1e�@L	��Z�@EV+�%��@B#����@=��=k~_@< �Ǭ��@9sm�,�=@4ʗN"�E@1���9@-���k1@-d���X@-�A�N� @3�h���@4��9�~@F2f�zS@Q��}�f@KEQ���@G��J]�@Gm%��@Gcj�4ڨ@G�s�Na@H%�����@H��uFF�@I�M�(#@J�K��ʡ@K�c����@L)�{��}@Mm�I \@N;d�-��@O�7p�@P�w\��#@QM:zV�@Rix�=@R�&� @S��%�-@T��m8#`@U��٠��@VHL���@Vqq}Bs@V;hZU�@UZ�U�@ST@��[@?���w/@p+s�O@�D����@�P)�5@dF=�@��ԛ�7@��@#$|i/4@)���b�@4���@J{@?_?+�@IT�A�@F.Z����@G��	�@G����]@C��U��@C�����K@?�(Gɻ@Kz���t@MV�\��@MNd+��@MRdшps@M���!S@M�3I`'�@NY�?A�@Ny�_�g@O�<��@Or9�k�@O>1��X@O���H@Pmt�ng@P�4����@Q [���@Q��1N=�@R�w@R@�U�̯@R��핒S@R�k�l�@R�"�QWI@RDL��b�@Rf5tO@Qh���e@P��½Q�@P'��@N�3�@]�@ME�c���@K�W&��@J�n��g4@I�g�u�P@G��ff�@F�m�]@D��¡@@@B�Ld�m�@@a`,t@<բyG� @:���[@5�7Y�y�@3������@-��	��@0T�qӱw@7��@�(@C�+�i�@G�qZr~#@D>pb�(!@JQ@�@P Q�9@P�j$�'@P��M��@Q�U�a�@QN!b���@Rll���@S���Fv�@S�+�P�@Sm¼�}2@Ss�د@Rǁv���@R-��FK�@Q��v�d@Q5�a>+@P��EVL�@P�5�)�@PlnĠ(l@P\�i��@O[X�"��@N��E�2@M����=@M"D<i�Q@Lt�4�4�@K���*$@J��z2S@JG֬YH$@I��a��@I�x�"P�@I��~D@Iz��.`@H�%|�P@H;�Fu�C@Gq��)��@F���*2)@F+���@E�lh��W@EdB�:��@E5f0�@E2M���@EFq�;�@E4!�Z�@E.]��
@E5#�6��@E_'0��A@E7~�!k�@E�ԱgDu@FF7�@F6�IZ*<@F���g�@Gc���O@Hpu��֋@I��-�g�@J�Y���u@K�%B���@Lک�9@N&�M�l@O����^a@P��'7J�@Qx|��v<@RL��.�@S(U��P�@S� �V��@T�%a='�@U2�N)M@U񘾯��@V�I^C�@WU�4+-@W��L`M@W��b��@V��'H�y@@�=��	4@MᲡ�A%@O>�)�@JŧN��@E�۫�i@C�fF�@A�J�Qs@@*6��t�@:,���K@6aܑ�@3�0�1�q@+���=j�@.iՔ��X@*1S���l@+m�v@/p����W@24d3e�@E�b��Fp@R�A��i�@P�?;I�@I$��\,@H���bߜ@HO�D@H�@HLEb�~@H�0�.o@I<kßA�@JqX��@J�A�Q�@K,�:x@KѴ���@L߀�x�@N).Muӥ@O�v�%Z�@P���U�@Q�=����@R��N�H@Sm͐	!�@T>C#�V@U���V�@U��H��T@V(�p���@V���vM@V6���@T���k�'@R�E��@Ie�Qb�@#k��f�@ R|�0G@"3]?2�@#���WP@#�r����@��]�o;@THh�@$�f�� @-j�A@A�����I@N�H��\�@I�DWk�@F��q��@F��Kr�@F-��	@F�,���@I�T!!�@K���c5@M^�>�#�@M�(�M�M@N��/K̝@N��t%�{@N�8Z"��@OH�oC[�@O���@P6ꊫ�@P\���^?@PZ9FOW@Pp0̄@P�"��i�@QM�8q_@Q��y��b@RQ�*@Rh���@R��:Q��@R���h��@R�Nz�I@R���b�@Rg��O�+@R�=xTh@QoDU�o�@P�R����@P+͛�@N�O�F�}@M'Z\���@K�s��q@Kl#��@I{�/(\@GU��`��@D��%��@D��R��@A!Ĺx�@@�)��U@:�9Cm��@AJE�	��@E%_�\&@CK U��@B��\���@E+��A%@K���U@M��K�U@M�1ɰ@K��r�(@M����L�@Qv�E�S@Q�ri�@RJ���Е@R�4�6c@S��j�@T?Ap�@TdU�V@S�$Q��@@S%e@c3Y@S�á�r�@R�Q�U�@R$�$�@Q�u�-��@Qg�%,�y@Q[��y@P�Wt	L@P/�w��@O9j�g"?@N��><@N0T����@M;���@L|�D��@K��o�l@K_�u�@J��v�6h@J$q-��@I:2s��@Hz�P�$�@H4��T[@H�!��@H&�j�bw@H,{���x@G5^ǆzH@F���dy�@E��g @E<\���u@E�I���@CӢ��l�@C�;͑�@Dݐ5m�)@DP*��;�@DASFS��@D>ċE#�@D��n��i@E��=��@E� w@EXJ�;pc@E�}X)�@FO&?�-@F����@Gȕ�>�@H�|UY�@I�cf�mE@JΗ5��@L y��[@M�Fa���@O]��4u@P���,� @Q}���W@Ri���W�@S:Ԯ���@S�,�F�Q@T�M[9\�@U��߽��@VAI��^M@V�'5��@WD$���@Wb1k~K@W�}�`�@KW\Q��X@M]ݑY[�@NI+B@Kn�ρd@H5cI"�@Gd��K�@El0���%@C�'ԟ�@@�����@< ɋ@8��26��@6iG�xu�@2~ܠQ�@2�9h�JK@1�T�@/P��Vq�@,�~���@3�Tt��G@=�^^��Q@OGb@�}�@RA�q�ټ@O�HS�[ @I�QT�YI@I(�O3�}@H�����E@HȻ �s�@I6�^��@I���r��@J%d+W @J��=��@Ks���H3@LT����@M��?�7@O3}��.�@P��OZZ8@Qd�r^�@Rn�{Յ�@S]�4�TT@T-D��Re@S��BX�@TAA&�@T����@T�uq�C�@T���b�@S�[h�j�@S2xO#�@N��t��+@4l�O��@2����u@2��Ze��@7@��8@4�\>�@�@.�={]�@(o"�^�M@%�mr�8@$+DΓ�@*��1�9@IX� �@P/4�0`@H���@G�؅�&#@G�+���@IHQ��h@L�$W�+@M�5��@Nu"�τ�@N�5�m�@O:���
�@P5�>�l6@P��l@e�@P��f�@Q M��^@QF�2d��@QJ��M @QqSy�.G@Q8��^s@Qͼ3Q>�@R@���8@R����@S'���?+@SG�R��A@S����	@S������@Sf83m�X@S5�	�M�@R����@R��=�@R);�c-�@Q��W:�D@Q$��1F�@P�ǁ�lH@Pf��7G@L�#M�a�@N�F,@J�ߵ��@I�/��G�@ED���c@B��/��S@C���M�@D�=��@B����@@QA�Asq@Ee��|@K���~L@K���Q�]@O�!]�%�@Pv>0*S@P7s���@P�/c+��@S�q��@VZ�Z�!@U��iP@TV혋.P@S�]-ލs@SS_���N@U��L@�@T�:����@S�|�qڃ@SL2!��@R�K��Z@S��]�D@R�O�k,�@R��g�g@Qq�h�y@P�5}d0=@P�Q���@P�]u	W@Ou����@Nm�W9�@Mw��N��@L�
~�25@K�:8�@J����v @J+����@I��z�K�@H�kǍ�'@G�,�~jS@GS���;@F�8�ֹ�@Fţ`WW5@FmKs�-@F�뵠��@F~Q[Y?@E���
�@E�,7@D�����
@C�Nm�l�@C�n�tv�@BA�]U7@B�[C���@C4C�e�@B�qN���@C��W�@CJ��l
@CZlN�D\@C]3�-�@Cq;�Z�@C�#�7D-@D0��b`P@Dx���ƴ@E: ��=@E�H#l)�@F�Q�{ʘ@G���5��@I���r�@J~%@\�}@L`�4��@Nh��wߛ@P�tT0�@Q0\R��@Q�x�
�A@R����Ǥ@S�.s@T�����@Uq'�(��@V$��@��@V~�Ub-@V7	�փ�@Vm���@T�oרTI@G��Lt��@P�I0c@M' ��%@Lo��d@K%5V��9@I�Y�yM@G���R�@Eo�*.�p@C.���@A(��_Y�@=Ԑ��`�@>���GO|@8�lw�@5�Ȟ�@9.���O@5���2��@3j�h�&�@5���\e�@<d<�{�@H��h@L�s��p@Rc���#@K�w��(@I�%�v@I�<����@I+\*��'@Izm2�ʇ@I~�O�K�@I|R*�jS@I������@J<�A51@J��c��-@L�T�P�@MO��i�#@O[��g3@P�i�Ț5@Q(w5Χ�@R.���@R��"J@Q/Q;Α@Q�=���}@RM�����@Ra��=�@Rt͍,o�@SIc�H@S�u��i@R�w���@EӅ�Ս@B8o���@E9jB@K�tz9�@F�޳�@A��"���@>�yH@14l@N�@'�2���@0��
��@B[��o��@R޻��]@L4^�Y��@I��IL�@J2���W@L?�Z�+@Nx���e�@O����4M@Pk@#H3@P9YG4շ@P"�U�@Q<.ĸ�@Q���]�@Rb'	�0�@R��
w	@R��X���@R��{�pi@R���=�@RT�Zr$�@S�ԏ�@SX�lA��@S��eC#@S��^�_@S��]l�@S�xq��@S����#@S�1U�@S����!H@Sn��l�@S^�G��R@S��y>@S0y��@R�e}@�W@R4\^��5@P�~!�=�@M���`o�@I8���t�@E�M�w�E@F~�s��@Gɍ<��p@I�`>
�@G�]R��@I��	@J�����@KT���@MzDA.x@P[oNZ@P:p�q��@Q4�A#��@S��
���@T����?@Tb��Ȯ�@W;�ͅ%@VY9�sd�@T����@S9�Uh@S��U��@T�"�Ye@U����)o@S�T˛��@S��j_@ShK-�@R�<��]@R@]4�*�@Q�7t�2]@Qn@}@P�����1@O��d���@O
h
x�o@N�k���@Mc�T���@L�ҷR�5@Kp��f�@J?��Ua�@IQ���$@HUړs"5@Gt��I��@F��C@E�?HBy@E6|(�@D�w컮�@Dw.lm�r@D]��D@D���٠@D0�in�@D26�r@C̴s��@C���p�M@B�
�#!�@B�gX�~7@B�״Y	P@B\ �'��@B-'�/@Bњ��[@A�6?�Q�@A�?Y��@A�S�R�@Bk����@BWy%?z@By9�@B]iXѾ�@B�l-�K@C}+��	@C��	S~@Dj)�d	@E>S���h@F�x���@G���y�@H�5�~�@I�Z[P�@K=� �_u@M66��]@N�K��@Pq���$@Qx�NTl@R_j��h�@Sh�Cj�@T	��G@T��&�qM@U^@wM@Uqm�ofm@T֏$��@P�q�O�@S
NY!�@P����@P��q@P���B�@O����(�@No&_�-@L�ݜ�ƛ@I���џ]@H0��n�@F��s��@E�0��@D[���*�@C1Pq[�@CN��M3k@C�W��@AQ=;:�?@A�� �31@=�=�� @?�$�D�@EaYC��@G-6z�8�@O�"��O@L�^:�u @J+0��@IN��MD�@Hi���@G̨����@Gl7��97@G|zҭ:@G�+�Ф�@Gi� �S�@G��H��U@I^�Eh,�@Jj��B�@K���r��@L���l;3@N6�k�8u@O¸��d�@P��g[��@Mp�i�@Nɐ� m @P8�X^��@P�,�C@Q��� 7@To��@Vի��L@U� 
={@PFt��@P��1��@R�KE�t}@S�x�@Q�?��H@P�]v�@K^$t	�@AH��A�8@8�����@20ZC��8@K�~݅�@RȞ�H�@P�p8���@L�B���$@L�D�C@MK��PS@N����֛@O���!�@P�:qK8y@QJ�z-M�@Q�_��v^@S��p67@S'�_�J@S��0��	@S���m�@S�(��M3@S�1 �@@SqM	Ȩ)@S|iI��@S;	M#�@R�@�B�]@R�K��1�@R�ԕXA�@R���B�@Si���@S%y�m:@Sy���E@S�$�@�@S����A�@T#�E_A�@T�n�I@T8�2Ԃ@S��^ɩ�@Q�h���@R�*���@Q{Z�i�@O�Z	��@MM���%@N��snB�@M��y9 �@P��p���@Kf�ǖ>M@PZy���@R'}�G#�@Qu^,Vts@Q��l�@SOA��c�@T>Ę�c�@S�hR,�@U^��X@T�\�2�@U�n^�c@T��ȵ^�@T\�����@R��U��@R�}���@Rz&CE@@RPY��-@R� պ @S����3@R�=�'��@Q��׃F�@Q� �9�@P�~Ν�@P7�{�(�@Oe*��dP@N���� ]@Mñ�y��@L���!q@L3��*X�@K_�Q�m@JO����{@I���`6�@H���,<%@G��K�@F�����@Fe�D�-@E�L�� @E_E��@D��F�E@C�(�C�@C��^E�@C��&�`@CLA|�@C&�K��y@C��x�: @C�[k�!@Cn�Q�T@C���@B�S��6�@B��)�;w@B�+C���@B|��#:@B�5u@A�چa�g@A��4)W~@A�����@A�Ds:�@B��hC�@BV|�h��@B.��! @Bc<�-a&@B�s<>�@@B�_%&j7@C�@��W�@D�n+@D�!�@E������@F��47��@G��R+�X@H3�5اg@I��~�g4@K
�)�E@L.�IJ#@M��DyS@O���n� @Q��צ"�@R�P>@SP_�@S�����4@T�����@PK#�X"�@Pe�7��@Tq�H�e�@S�Mf�@R���_e@Rߝ�]@Ru�A�D_@Q�@߂}�@P�&�O�@N��P5m@L���.�@K#�G�i@J Z�=@J���h@L�gAo�@M���:t�@K��� / @L%����@Ns���@G�K�\�(@DG	�GE�@J����3@F�Y��\@I����՝@J�@;�2�@H��`��@G{P��@F�	5x @FK�Ⱥ�m@E���y@E���0@D��E(��@D�!rf��@D��%���@D[g�1G@D�p:��q@Ej�B<�@F�7�e_@HD˷�I�@J	b�am@K��Hʻ@M�d�{�%@O���6�c@P�h_�@Q��B'��@S�Z�p��@Vz`Q�^�@Wϩ�pV�@U+{QI@Rv=���@T,g �'@U.�i�A@T�Y��@T�N^a�@U���^�@R*p��@Lg���t�@F)�]�#@D �62�_@I��"��@R�h�U@Sʼ�>`@P��U�@N֏���@N�A
S�9@P�Ç�5@P�e�6��@Q�y�o[@R��D�@@S��G��@TA��@T,��)��@TCv�I@T) H|:�@TX��@S�狅��@S|X��Q�@S
|�B@R�ǟ c�@R��!�V@Rb�Ʌs'@RVvhB��@R����6@R�\3��@R��=F�@S8�K���@S�����@S� .b�p@Ttٖ�@TY�{���@T4#� �<@R׹�b�@Tl]k,S9@S�
�_@Q-`��@P/��r�	@Ovs\Ke@T�'��_@S���g_�@Sul��k�@P�~7R@Rn����@T�$���@R"e����@P�jzR� @Q��l��@RɎ���@S� �!��@T�[PU@Sd���ee@S�8��@S�qV�@S��3��@T�f��@S~�>rE@S2�l�?@R�C#��@R�@�!q@R�0��[�@Q��e�x@P���ү�@P/u��F�@O��\P@N�.��=@M]�P�@L_<��@K�%�`�0@J����f�@I��:?�@I$�yP`/@H��z�%�@Ho
�ݗ�@GR��X@Fv��k�S@E�EKc��@E�y�Z�U@D���"2@D�C)��@D�O�_@D!���s@Dǜ`R5@D�O#�@C�����c@C�8(_��@D2b��"@C�ɀ�p�@Cl���G@C%�#:,@B�t�D@Bu�T�]�@B��DR�@BP����@BP~[&@BY{D��i@B3�hSY@A�[���@B�i-�@B[
��|}@B+/����@B �y�@BP�_��@B�nzmh�@C!&*��@C~#뿘�@C��U@D��Xr+@E)A�0k�@E�ĝV�@FZ�W?mX@F׏���@H;�c�@I�����@KE�s�@K��"J�@L,.P_�m@O��j]@RW��)4@R�~t�Yg@S��V�{�@U/&5e�@U</�fYd@U�B=@UW���C@Tܳ�@T]�P@T�Q53@T6��b�@S������@R�:(q@R.:d�А@P� "c�@O�c���@M�|��@KF.��@N�M���@PQ)�e�@L�9���@N���{�T@Q����a�@J�MCUE@B�^F�f@F5�) @K��Tz�@Iy?�$@G����	@Fy#����@E��FY�@D�>}ʻL@DG�Ә�@D����@C­��b�@CN�˿�3@C0%�N�I@Cl��@B�ʊ�u@A��<@Bl�:�<@C�䳴�@FP{�8��@H�{�X+�@K>}��ɕ@RD�ϧ!e@S��%/@SԈ�
U\@T�7��@U�`�(@W�N�� �@X4���@W]e�n�@U�|ܷ9�@U(�%!�E@U��DE��@U1�q��@U3vX���@U�#�0�@U	���~@Q����@P��|O"�@Ida��X�@LY��V�@N��衤@S�$D���@T��<[@Qpo�<@P�'k�@Q/p�#@Q�D2��@RX���{�@SB�`L�g@S�t��no@Tq�o��r@Tx��v��@TC��XA@T:�{� �@T{��Ng@Sڿ��Fw@St:�MI@S#f�@Rȋ#*S@R��j���@Rnu�$N�@R��O!@R�w�2_1@R�Qe�R�@S��}d/@SS��(�}@S��-�@S�"�e�@T+��C�p@Ty�E���@S��hA�1@SXqp�"�@U�7s��@S%��)�@R)=Dn��@P�v����@R�Y��[i@T�o�L@T��G�j@U~����@T+�c:�@R��e�@Q�)0q @RW�~�I@RQ�mRU�@S+{<���@R�����+@R����@SY	�fFM@S��"��@TLP]m�@S�vg��@S�L�(?�@SW���<@Sn�t"�@R�`�^�@R�д�`@Rl�/HT>@Q�Hx]�@Q[
X_@P@�눋U@O�T��@N6�Ƀ|�@M%_���4@L+G�Pn�@K@�d�C@Jh�C�=@I�_��+W@I10��z@H�%B���@H
1t�]@Gpjw���@Fƭ��A`@E�^B�j�@D�$q/��@D^-�d��@C��1
A�@C�تL!@CXL���@BRo�)@A�?�Gg�@A\$���M@A��Vp@A���(�m@A��x���@A�Qs�q@AKl�t��@@�\��5�@A�P⮠@AI�x7��@A.ئbxH@@�ZP�̩@@Z�)+�@@�g�W/�@@�O"���@A%��͟�@AD�no@A��VR!@Ai^?z��@A���8�@B�i�y�@C8�³�o@D/ �J)@D��A�2�@Ee��@�0@F&מ��@F���h��@GqQ.&}@H,l��}�@I2�7�@J�_K"X�@L�
*�7L@N��l�@P83g(��@P b>�i@L��m�oK@Q�7����@Tl�0M��@U��@��@V�<�V@WM0$s�@W/�.h�P@U�?�@U�Ɖ��@@U��k���@Urcp'\s@Uh����@T�����-@S�M!��@St|v��t@S5�D��$@RD�NV�@P���`G@PlZ+���@R:��0e@R9�զ�@N���P�@HQ����U@G�>M��@F&�L`%@Gl�DN"�@H�H�)k@H��/hm@GYsl�X@F(1�,�u@E(E���v@D�ȼn�@D�����@D�u3��@D�$�:��@E:$��@Ey��L�@E��t�3G@F@��_��@Gڹ�@F�8�wt5@G��]�@Hx�|:�@K�5p�@O�V9��u@QB�0@T�m*���@U'��N1@U��Z�p@V�*-���@W`A_��@W���Nd@X�p@�@Wm�C�o;@U�`6�@Unڋq�@UH0C�T@T�����@T��g=}�@U8b߫Y@U��JI�@S.T�*�@P��E0�c@M_��Js@D�:��GA@G�F�5��@SJ?"*�{@VU��i@Ubr\�a@R_z�v�0@Q$��Wi@QOf��?|@Q�u>��@S@,�O@Sٮ��Y1@Tڈ���@T,��/d@T�tu�@S��-�X�@Sቤ�*o@S��#�V[@S���]�@SC��~~@SÛ?u�@R��:$6{@S�M��@S*�2
@S0��L@S<ߨ��@Sl$?�}@S�%r:Ph@S�U�@Tam�{@T����Z�@T�܅V�@T�8Z�@Tr\�5d�@T�
9w@S���7��@R�X�@R��N@RH<�'u�@S�QfT��@S�b��[[@T̾��m�@SI���ͱ@RG�����@P��DjJ�@P3��@QxoK�b�@R8�(��@S���ԣ;@S[�%b@ST���?�@Sa�:)�@Sh��&\@SsZ����@SU6�1F�@SD6>�r�@Ss4W@R㖁|g@R�b_�U@R��%��@R_�'{@Q�� @Q����@P���l@P�7�* k@P,���Ef@O�Œ�<�@OM��9q9@N��ڝa@N2K'~S�@M�f����@M!D6 ��@L��dE�(@L~BN�$@K�H��8@J���u�@I� "�)@H�I���u@H��;c�]@H�2�P��@H)�����@G�Ƴj�|@F��=@J@E�
�3��@E���u9�@FX��t�@F��`@F�x�9�@F�Y v��@FY�� h@E�����@F6����5@FYp���a@Fe˽��@F.�Z��)@FQ� �D�@Fv�ෛ@F�Gv���@F���@G7��>u@G�Av_@I*#rS @Iξ��-@J�X�ˁ�@L����p@L�+1���@NKi@�X@N�w{�@P�O���@P��K�Y�@P��-���@Q�C1�U�@R�����%@Sqq�n�@T5`r��@U���,�@U��2eD�@UR�zק@U�gI$�e@VY�5K��@V�^�xs@V�� o�@V��,��@@V�Nh�	�@V]v�q<@Vŗƛ�@V8����Q@V�vg{@V_>��@U��gA�@T�����@T@u�{��@TdXB	)@T%E3��E@R�=e��@R9��q�@RD� �U�@R�+��@Ji��@n�@D�SN\�@Fw
��N�@H4���U�@I���S@J�: !f�@K"�Fھ�@J�*=蠋@J��1;��@Ji���"%@J�~ޑ^�@K��}�@L"�u#
h@L��8r��@M��B\��@N�����@O��_��@Pc�>�/@P����Q@QY�s��a@Q��,_~	@RLPD	'A@S��)w@Soz��u�@S��U�;@TOM���@U{��~f�@V�/��[�@W�5���@WԚ��{�@W���"��@W��*�X�@W*�h���@U�C���@T����ǈ@U)�'���@T8�O^(�@TDV�F@T���M@S���*��@Sm��"�P@QT뒲��@O�a�e?@E��no	@P9�EK�4@TBC嚿F@R��\Ì@R�+
	��@S����"�@P�;�a��@QL
9�5�@Q��/�~�@Rk�ʂnl@S�>�{@S��Ц>;@S��@S�_ԋ2@S�G���@T j{;tq@S���Ag�@T 
��@Tq�L�@S²^ȭ@S���9@S� ����@S����z8@S��p�u@S���
Y@S�{� &�@TS�Ŷ��@T����-_@T�wMJj�@T���:m�@T�T�
@T��e�S�@S�p�#��@U.��z1@S`e���@R�����@Ru�M*�K@R��*r@R�_W�@S=�B�I�@T>��«&@S�+9@Szv��@S �� �X@R�R��@SG�h���@SNL8��@S�ҙ0�@S�ӣP��@S�nh��,@S��3 @S�v
��d@S��:�@S�8H�8I@S��V�@S��3�@S��ł,]@S`q�ٜ@SV�{h@S/�[m��@R��=�@R4gp��@Q�RӒ�@Q�+v�w@Q�8@Y-@Q�ʧ���@Q�1Ex�@Q�&��Vr@Q�R�z#d@Q�Q���@QV�	rʅ@Q���-@Q9H)8M@QW�@P�X*��;@P�u3>\}@P1R��'@O̾$��@O���u@OZМ7%@O'�1Hn�@N�*���U@N6�V���@Nv����@N�~�`Y�@Nm{Q�v�@N'�����@Np�$�@Nbt��@N/2s_%@M�x��b7@M�ŗ�z�@N,6�Dã@M��Ͱ��@M����@M�̦�@N��ꁘ@NI���;@NĮg똡@O� ��@PVW��@P[���a�@P�����v@Q X���@Q��9t�@Q��K���@Rd�"�@RѰ��/�@S%�����@S�э��M@T?[�O�@T��X]�@U(�(@U�XGt��@V$�,�/s@Vfɸ��U@V���8��@V�lz��@W	��wM@W.�\�F�@W7OE�!�@W*��g'@W%;�+i@V��?*`�@U���'S�@V���e@V�N���@V�x�d�{@U�C@-Ku@T^ĵ@T��|�@S��寃]@T68���u@R�x��;@Q��>y�@Q���B@Q��ld�@J9�8]ڍ@L^����@M���WCO@N����X@OU�h��@PX����@Q!ߨ�@Qo�eF@Q��y�@QM���p�@Q��Y�*@Q��=j�@Q�=;�p@RcD�$p�@R�`KW>�@S?��f�@SQ;49)@S�����=@TU��ε�@T�o��u@UOe�;Hi@U��m{@T�e�	�A@T�i2%@T;���@VWj�	!@Vz�]��{@WV���y@W�����@W��k��@V�*MxÝ@U�'Q:h@U������@T��?��@TG� s��@TEa\�@T+[��k@S�8���@Ssd��@R�BBcM@R�̏��@R�B|�v@Rv�y��@Sc���_@T�2y�n�@TtyXt`�@Q�}��c@Pe���.�@N$9%�ܑ@M[3�߅@P܍Bm9�@R��]g�W@Q�\�^89@Q��Ԩ�@R�i��M@St��A�@S����1�@T�_G%�@TP��Y�!@T���8;@U
Y�F-@U]@���@T�Mm��@@T�|���@T$���H@T@0`��-@R����p�@S��v_ۀ@T���y�@U
�^}��@Uj��H� @U���YO�@U���u@T�L8���@T��]�6@U�&졚@S�3�S��@R��XT#@Su%�5c`@R�\�n�@SX���@TG�}�@Ti�6R�@R��w�h5@R�;��ε@S�����@S�]�J�q@Tx�w�=�@T���<[/@TvD�R��@T��� }@T�A��7@Tv�<�i�@TU�QN��@T6�}���@T:��@T6�m֠@T	>�Mg@T-��<�@TK̶�q@S�u3]�@S�*ZO@S��X��@Sw�n��@R�X��ُ@R\����?@R�=��A@Q�+�S@R���@Q��
�@Q�e���I@R)2gU@R��)�@RRk�]�@R&I1�I@R8"�V�g@R6��*0@R]X��@R;����@R)p�;��@RYq���)@Ruv\��x@RR\���@RR� ���@R`��ǵ@RV���k9@Rc���@R��(�@R��y�u@R���9�@R�k�	�@R���
�@R�A�bv�@R�+���@R���4k@Rtj9�w@@Rk��tL@RS]�Մ@RxM*R@R�AGMs@Rp�����@R��7Lu@Rڭ:
@R�w��~�@S;1�P�9@Sl�V@S�l��@S�L3e(i@T�����@Tt�E��@T�N`���@T��³�@U+
��@U����@U�lW��@V/���@Vn��ۈ@V��6�h�@V�\7R�S@V���(��@V���9l�@V��@W�^W�@V�p�e�@V�1��˓@WF�aa��@WC����,@ULN���_@S��^?�@Vx�3��@W�?���@VƑ�r@T��	���@S��PSr�@R�8���@S���I@RlZX
*�@MWV�Lm@M���֊p@Ngdgշ�@P��}�7�@P���N{@Q��hL@R���:@R}��9��@Sg��@Sǉ����@S���g��@Tg��@TbY<5V�@Tw�>�t�@T��Mc��@T�9\��@U)��*�@U5��#�@Uq��&�@U�����q@U�P8�@Vw##�kx@V��~��g@W�ܠ��@W�s&8s@W��Ti@W��q��#@WŤ����@W��H9�@W�>��@W����x@WbzQ�ߥ@W�Q8��@W}����@U�VLɎ-@T��E�q@T�1�K�@T�De�'@T;[ �>i@T
,y�ə@S��=k�@R���1�@S_SȐ@S�FF�@U,T��@T~X��t@U�����@R�"o9�?@L�����@OVw���@M��,&į@L�Z�#��@H���ab�@I��W��@R�"����@R���0�@Q��so��@RD�B-d�@R��]̟C@S+9��[�@S�ئ{^�@T�����@Uo5S��@Vf� t@V;UeMֳ@V.p'm�@U�$ o��@Sv}�;5@TM�c�@RoeѪ�@Sȵ�)�@U_pe�c@U��7l@V4��Rs@VSWJ�%@V�:���@U�}0i�@U�X���[@U1p��@T0A�Z�@T{��F@S4_r���@Sd;��,�@T�吅�@T�j[c�@T���	-s@T���$��@T��f\@U�2��K@U1�{�@T��$���@T��{P@U�1+�@U9�oto?@U-46tB@U�ĺ��@T�=ۯk{@T�Ӂ��@T���9`�@Tm<�@W@TSѼ%ݍ@TP��s�@T���I�@S������@S�/�;Q@Sp�1��@R�Ee��@R��$��o@Rh6��@Q�ơ,��@Q˹Ȗ@Q����,@Qi}N�\�@Q�<S$)@Q�����@Q�T�}�7@Q����@Q�R�/��@Q���wC@Q�faXL@Q����@Q��M9oA@QܚW�	@Qަe��@R *d��@Q��\d��@RJLn�$@R#�041�@R<��n�E@R1�V�e @Rr��y*@R�����@R�����@S�Ac&�@S.���@SOUF!!�@Sw.�1�@S��f_%@S�)'d�@S��oJr�@S�~��@S���=>@S��^-��@S�B�͹�@TU���O@T(���@TMf��S@Ts�����@T�D6��@T�exp��@T��I9M@U"X�D�@UL1YNx�@U��SGO�@UݏD���@V)�̒?@V4�ɇZ@VYZcfz�@Vu��͈@VTU�ZM@V�t)�5@U�@i�@U��Oٺ�@UW����@Ujg�Σ@V��έd@V�b�_O�@V�؏/@V��r��@W ���^@VO.(㦘@SR�l��=@U�����@U�/n}�o@U?���_@Uv��-@T��M��@Sxed�t@R��;yJ:@P<sX��@PV�g~l@P�{sm�@Qa�%~k�@Q�T�`@R$'h4P)@R\��"�@R�Q
�M�@S��X5k{@S����f@T勡�@Tm^O���@T�s�{�@T݈g#@T�l F]�@UTG��@U�ȡ���@U�Z����@V���@VBD-��@V��(o�@V��=b�@W��+#@W���.B{@W�NIcm�@W(���@W�� /�@W�:&�@Wzr1�R;@Wp�ധ@W `8m@V��TXfC@W�g��@Vڼ�'	@U�ۖg�[@V6a�>��@U�����?@U13{n�@TوM�o�@T���o �@Tq����@S��t�@SL&AD@TIJ�k@T��Q)�P@UQ�#�;W@T���H#�@SW��6R@Q�,_U�@I�,���@A��\�=@B(#����@A��@@��S���@>/���7@S �?Jq�@R���}V�@SZ���@S�r&@R�p��r�@R�;�P�@S��M��_@T�����j@U�)���u@VW�0=�@V��A�@W&4���@W�z)?@V�����@R�B���@S��O��@U=�!NVH@V'�h4��@V��:�s�@V�ZxD��@VͿ�^�@V�t�Wk�@V�q���@V����<@T��._�@U�7����@U�N�n�@V?�W��@Sy�h�t@Tw��o�@T���L@USUU�T@U�<XZɹ@U`��&(�@U�U���@U�����@@U�@Lp@Tb�Ї�@U�	x�t@U7��|�@U<��ai�@U�f@T�d��p@T��*��@Tj�8�K@T^��8��@T@���@S˨�/\W@S����ѻ@S�^5@S--���4@R�*�e?&@Ry[~��@Q�ͺ�<@Q{�[���@Q/o;z�@Q��Ȋ�@P�%���6@P�d!��@P�Xt_@P��9�� @P�~�@˦@P�ުkJ@P��[�?�@P�K�A�@PXu6Yp6@PN�ȕ�@Pc�๫@PTN��@�@Ph�b��@PkC��#@P���.�+@P��
�W�@P�פ�ǋ@P�F u)Q@P�w���@Q�]��@QGQ})Q�@Q�08���@Q�q�g��@R���_<@RB�e��@RE]Cqӥ@R�џ�,�@R��`�@R�e� �@S��v�}@S(
�y;@S?%�|��@Sq�R�|@S�.~J�T@S���^�@S�@R� �@T"�=Z�E@TRe��@TP��y�@TuU�F�@T���_��@T솠"<Y@U.��އ@U���V�`@Uϗ\�q�@V�q-.c@V/�"?�u@V�;OI@U�8����@UrV���|@U@@�`�@U� *�@T��H��@T@I���@T��~t��@V�'yC�@W<�K@V�m�Ei�@V��q� @T�R�=@R�9��@S@B��7�@S�!n�7�@S�����[@Qf(��, @R9�ÇD�@RP����+@P�Z{)��@Q2��_@Q?=�{@Q�A��K�@QȈ^�q�@Q����.�@Q���!�@R;w�D�)@R���=@R���@SY-Щ@S�&�O})@T;4�s��@T}��c@T{Mr�+@T��M2jg@TĪ��fe@U�u�o�@U����@U����#�@V?����@V�R�|@V�Sx"y9@V�Z܉|@V�|�S��@Vu�n�m#@V	j(���@V��6y!�@W�}��@V�ќ�H@U�c�d@U�3B�@U����gM@UޞMnɑ@T{��^�@S�����@T"�P(��@SY݈�j5@S���{d�@S!kO�w�@R�_ɇ�@R!D�^@Q;���@P�$�ڱO@Q�Zݗ:>@R9�-��@R�62>@R�E�b��@Q�pk��@N��X�k�@Gjd�4@;Q�0f�@Q}��U@S��!�G@P�b�"�6@Jݕ�Iډ@R+���@RO�	�@TO��*T}@T������@T),����@T!���Q@T�����<@U<ϝs�Y@U��u3�@V��޷@W4M���0@W}��\�3@W�4�]U@V���rg�@U���Y%@U&9z���@VO�d���@V��� d@V�_�@W%1v��@WF��ϐ�@WN�	�#@W��c<-�@Wf'ƅ��@V@PW��c@Vv�k��5@V�;���u@W67�K@%@V�r���@R
���6@TaǦ�/@Um��}�@U�
LA@V͊�@Uf��:��@Uy�7��@T[�-�@T��U~�@@T孝6�@T�Y$���@T���y�@T�j7��@Te�ao�%@T�Ȓ��@S�L+��@S�d7�@S7m!��@R�dx_@R�Г�Q�@R_	�A��@R���@Q��ᆴ@Qp6��@P��L2ы@Pa����@P%�%
t�@O�^CL�@O���Nç@Oka����@O�ǂ��@N�o ��X@Nƾ�wU@N�KEV� @N�럒)C@N�A�K�@N�$��3@NY6U�=�@N>�SP@N?��vEX@N[D��1l@N"�E�@NDT�vW@N:�bN�[@Nx�N�c�@N?��T��@N�~���@Oi���ظ@P�|�w�@PK.!C�@P?�
Ʌw@PB[ɃP!@PpЋ�m@P�n�1@QP��H@Qã��/@Qko�עx@Q���2!@R	��� /@R8�*P@RU%�3@@R���4�@R~��6��@R�H�@R��b˂M@Rˣn`+2@S	&D�ã@S,l�3�@STA�.�Y@S�Q 2G@T��u\@TmRa�y@T�.��{�@UYW�k��@U��Q�}0@U�V��@@UQ�w�p@U3�vZ6�@T�}����@T��(M��@S����g�@Q{���,�@T"$Q�\@V����U�@U��W�H@U� �@U@���@R�~g@O\�@.�@K7�lHJ�@LBy#n @M����_@L�G���@Mm����h@Oѭ���@P����$@P�e��@P�ʎ>k�@P� ��@Qy�)Z�@QGD�Yy@QBA^�@Q���GO�@R4�d @RV����@Rַ�r�7@SK��<��@S�� Q�+@T8��y@T2��:�@T=&-�6�@Ts�I�@T���K��@U2\�!Ȇ@U���3W!@U�N�ރ@V?�uH��@Uh�Ϋ�K@Vz�U�@Ub�_Ђ�@U)�F�@U>ˇJ�@Ui��� @Uw�%S�@UjV4t�@Qa�BEo�@Qsr���@Q��B�5@PМ_��H@N�۷&�@MLDf�e�@L�z� �@L���qy�@L�6�Q��@LJ�e�KU@LIK��M@I�e���@F�V(�@C�n�wJ<@E�^�H��@H!|�#@J_�5`f@K���0B1@Lh��C��@NDܘt@D��Vr@N�Q[���@C��w¦5@A(��/ȹ@GX3�FD@Q����@R�a��#�@Q�)B:�@R�h
�@U�9��f@Ug�K%s@U�7߇`�@U�Qs>��@VW�B���@V�/�Ӯ;@W^Hi۫@Wn�ȱ�@W�P8
��@W�����@W:��z��@U�@n��K@UN��d5@V_�F�t@V�2��@V���w`�@WK}��@WY��u�]@Wy��d#@W��ϒ�@W�I�Y@W�m�fp@W���@H@W��v=��@W���C@V8�g�E@Q@4YKd�@R�r9 @T�_�t��@U�_�߅�@U��`C+�@U�Gd׉@T��1� a@S�)���@TFa��@TC���>@T#e��@T~*ӽg@S½��i�@Sv�F!U@S6c]�n@R���IZ�@R�����@R4S�G�@Q��\0S�@Q},����@Q0����@P�8qP=�@P��X�@P#J�ɷ8@O�$�A (@N�����@Mմ�{ @M��EY@M7�?E�@L��Rn�@MJ��c�@L�����p@L�S���@L1�#_&�@L4bc�d@L?�H�q�@K�V�6�\@L=�����@K�<
���@K®��O�@K���@K�j��1@KGb�<��@Kdڪ�s@K��vB�@K�uMv��@L%D�S�@L��V�l@MGzW��+@M��$$3	@M�M�S�@NQ$L;m@N�5D��@Oi�.���@O��4�@P.uڋ�t@P�v���\@P�~�:�X@Pgd�@Qci{�@Q<ulQ_@QHކ���@QN�5i��@Qh��\�@Qa���4e@Qb�d��@Q�%�LA@Q�gu���@Q�����@R6b����@R�=�t'�@R�^h\�n@SXI���@S�J�/4�@S����O@T-q���@T!�Nв@TEm^N�0@S�6�XbE@Ri�pB�\@Q�W�\��@QP��Ĩ+@UGJ�@U��m��?@Sz�8xח@R�D	���@RD���@Q^���@O��{~!�@N���Th@P8�x�{�@P`��:@PR�`EC�@P���@O���Ar@@P��iQ�@P��f�i�@P�<�@P�wT��@Pr҄ZY@PbX��o@Po���28@Pӽ7qk@QQô��@Q�?�T�@R"�Y��M@R�����@S'��`��@S�8YH�Q@T=^}@TmY�G�@T�7n�@T�M�,�@TE�0��@U?e��e@Un��2wU@U�I[O�C@T��lo`@To�ai��@T~�b@SW�y��@RͯH�wo@R�`X�!}@Q��C�\�@Q�$��T@Fg,=NZ)@F2B����@F��x�@D�DĎV�@@��z�@:4����@8WL���@8o�}eo3@8��G�0�@8|���B�@9t�Q��)@8�S�/-@3)�?��@4�6[��@4���	�@72>H��@:Fd�?�@@ ���?@B�e����@Ey�0�1s@Q����O@R�.����@?h1��M@,��s���@.7H���e@-h��)��@G�<5w�@T�z�gS@T�+��@UbO���+@V@���,�@V��6���@V�1�G@W6���#@W=p3[��@WSV�aC�@Wxo�w�p@W��;��a@V�W�Y��@W+tvH�0@V�\a��S@U��$�C�@V?����;@V�=��@W�t,i@W?Jm�� @W��O��s@W��
�@WФ
#)�@W��dO��@X/<�&@W�+&U,@W��B��@W[2��� @R�Ձ��@QA@�9ǔ@R�V���@S�=ma2�@T�d���@T�G��T�@T��m�o@T8X���?@S��X@�@SWR�	T@S5t����@Sd��o�@Sb��ہ@R���G@Rg�����@R3�D��@R*���@Q�~;'��@Qe/���@QЬ���@P�N�+�@P[�|�B�@P4=�%�@OeC��@N���R5�@M����~�@M"8�h�@M,+M@M��
��@L[+�:��@Kݟξ6y@K���ھ�@K.�H@K3�s%qs@J��Vk�@J�L���D@J�=�U�7@K6��C=@KC#��r�@J�L��_8@J���1`�@J��R���@J%��H#@I�~�	��@IS�w:�-@H\G/��@HK0�}��@H�2�B�`@J2r�5@KQ��5M@K��'��@L����A�@Mo�@�,@NB��{ @O^�q2@P6zlLY@PV4;��@P���&�@P�|,���@Q����@Qo����@Qm��w�@Q����i@Q����@Q��3.�@Q_3�@Q,�~�@Q1����@Qq���{@Pﳊ��(@P�~�"c@P�g��6�@P��D�p5@QU�Fv�@Q�x���@Q�6Q�@Q��"�P�@Q}u�"�@RT�����@Q����g�@R=���>@S� �@Q����_@Q�V�;9�@R��l��@Ql��B2w@P��d)��@P�����@PV]���@P��N��@Pdk<l(w@P��B�7@Pb*�4�@PA~�W0@N`���ܵ@N�a_\!�@Pl��IP@PYA�3�@Pq�M%�Q@PE��c
@P(���h@P1�݉�@PKy�\��@Pw���Q�@P֎��@QNZ�=	@Q�X@��@ROP��k]@R�ꯀ��@Sn��iG@S����@TZ�2��@T��fh+�@T0���(@T��ࢼ@T���G@U�U0�$@T�1ei@O�$ZDw@K�(��+E@KUr̷�@L������@L��;�#�@J��*U�,@Kޓ@H�%ãhu@9$��L��@8�̺0�5@52��r��@3}?�ѰT@4��4�@- �}S@(���+�@*I;�m@)�I��@%H�&�1%@"l��@"�J�]�n@!�>>���@"2�Ų�@$[g���@'R)�=3@*�<�� @/��S�s@3��HL�@DV{$�
5@TPϲC�@G
!�ư@2��6��@!	qd�T@"��$�@$���z�@&��g{�@1?V�@I �[�@3@T�ܮd@V0��d�@V�J)�mw@WQY�̢�@WCd���@W.�;�R@W%3���@W�}��@@V���|X@V,	��@V�� 9L@WLc��x@W#��.2#@Vd�[	[@V��<��@W
uMl�@Wh�G�@W�#��]@W�>$�(@XX��=�0@X$�/rJ�@W�^K@?@W�`]�@W`���y�@T���2h@P�`�#��@RK��(k@R_{��4�@R�f(�.@S0���s@S.e$��@S	��@R��;8F�@Rq���%�@RA[�V�@Q�w�4@Q��&��,@Q�8R�5M@Q�����@Q;���'�@P����@P���SG�@P��G�]�@Pi�I�@P7g��&Q@O��[�fD@Od}=1P@O9�/�8@N������@M�F��@MUg���m@L��鯋�@LAR�ow�@LI��Q^]@L��9>�@K�,iv��@K�z��e@J��ы��@Jv�`��S@JE��V�@JjM(��@J���@Ji��Q��@J��+o�@J�=����@J<�}k�@J`ƪϫ@J��+�,X@J�o?
zH@IȲk5��@IeuqR�@I�ǹp~U@H$��@F6yg���@J�u�FH'@KCJT�\@K�T�	�@Mh�$�u@Nj����%@O���K��@P�r*�@Q.����@Q���/?@R6w茫d@R���0@R�۟�s@R�092�_@S+-��@R�s���@R�7���@RY[���a@Q��G4�@Q-P)�s@P���/K�@O���Hb�@N��	��@N~��<{%@O���ҍ@P*�3(�@P�J���A@P�+���@O�ʔ�@N�a����@R�H���#@R�����@NEW]���@R��34�@Q����{c@P:�>�
"@O��x^�@OIr�<9 @M���d�,@Nr����@P����@L�e��@K���{'@P�b���@N+bӁNK@O��8��@Ny�6Y�P@N���pE@N���:�@N��==��@N�&��g@N�F	�@@N���@N���aQK@O8����@O��5�@P
�h/c@P�g��`�@Q=R�YS�@Q���6;@R5˒�&D@R�vˈ��@Sl6���@S�)V��@TD�����@Ta)`ꏁ@T�"����@T}�lI~?@T��3��@S�%#��z@H�ؔ�P`@9EY�g�@84W���@75�Y���@7�.t�ӵ@8F9�h��@:������@:�sj��]@01�� ZA@0O#$�2�@(�.h@#0�l<0�@"���@�}�"@�&���@\r� @#@�m�nK@(%��@�@��&��@���:yi@I�*��@����L @=w�ͨ@�,�G�@@}OB��@!���c\@'L��)m@M�\Z��q@J��Mzo@.Odj�"@�uy���@�x�c�@}?��_@��C�@ [L�>j@%ϩ(\��@)�Z�)��@Gy�_��@U��"�]5@Vt`x�o`@VЈF�c�@V�񂒱p@V��ُ��@V�-K��m@Up�R��u@Vj"��*D@U��?�@V�s���@V�s���@V��00@V��#8@K@V�s�g��@V����ޥ@W��'�-@WLFb�)�@W�S���l@X&���@W�G{��]@W�9�s�@WCդ�7@Vo/K
�S@T��u��@Q�=,��#@R���?�@P���d��@Q�A�~�@Q���w@Q��
|0@Qmn<U�A@Q98�;�@P��]-�@P�4�\�w@P�χ��%@P�8E�@Pa��n@P]@P	�}u@PàQI�@O�ʛ��@Ob�^�@N�˃Pb�@N��CKe@N�ѥL��@NJN���@N��i�g@MՂ���@M@%��}@L���5�@K�Dvsk@Kt�t�6 @K�X�S�{@K�W%�=@K�b��@J��P��@J��ݣ@J_����I@JC�PC�@J'T� ��@J�Uw��@I��=-\9@I���f�@I�<��R@I�C"D�@I�*��_�@I��e$%@I�dȼTt@I�N���@I���g6@I��C-�@E�&݀}k@F�J�I�@J��]�,�@K;��Y_�@LB��0@M���}�@N��.y�@P>-Q�8@Q��k@Q��Ċ��@R}k��V�@S?�|k�@S��g< 3@TD���s@T}�Y@Ty��nS@T]�����@TYY$h�@S�A%.@S Q?�do@R����@P�h̹n@N�/�&��@LNT8Z_}@K�	:R=@L?�ʤO]@N+��oi�@Oz*���@M��Pїp@L�+v�0@PzZ��3X@O���3�@O[ϙ�@G�X���(@NÅ�_��@Qn�w �)@M�g*p��@M��߷�@N5,^�A@@M^!�;@K'�l @Mlٝ�@I�t���0@If8�>V�@MkBW�{@M�^|���@M���@MF�6���@M���@L��w3!l@L|�/\�@L}&�*g�@L�eI�X@Lj�4�'�@L��U�@L�Iz�@MT���K�@Ng�ҧe@N��~�{@O���&/5@P]�*��*@P�VY��@Qn��ƶ@R��&��@R�� ��]@S��<�@S{��&t�@S�3�nt�@S�p7���@R�y_Ŗ�@R��@���@> 
,�@-|�7�)@-�U�a�@*��sS�0@*�+[�K@,[ �'@.���@0+ _�3�@'�J���@&Y���@$����$@ ̆�\@Ֆ]�x@/�ڷ{@���.Ty@��g@f4qH@e��1�@�S4D@ ���[1?��V$\�?�+V�X�+?������@0�ﬓ@	�^w�`@?9�?q@'p����@Gx�ԏm@#KPQ��@��\��;@VgB�|-@qDJ��@�̇T@.g��@_��O�@I+c�}@"�g��(�@)w��\��@Q�䝩z@U��)�G�@V$��O@V"�Bʿ;@Ul�l�3{@T�S�bs@Uc+��%�@U�<��:@@UMDL0�C@U~�	nc�@U�����(@VA�);@V���B5�@V̶��5@V�'�h+�@V�e�WQ�@V�ư�m�@W�%Z�H�@XQ#���@W@I�S@W��@Q�@V�)�9Ĉ@VSwk�K�@VFqn\��@U��Z�>t@U�>B�t�@T:6Ü��@R�1I
�@QL���@P�giU@QhF��V�@P3ƞ�@PG��@Ou�
�#@O"Um�O@N��&@N�zV�ay@N�LEwx�@NQ�w�m�@N�}�T@M�tw�@M�u"��\@M���%@M��v�C3@N�zm��@M����=@M�ږ&'�@M�:\1��@Lء����@K�J�O@K�hj�+@KQ8��¨@KD����@K/�2���@J�]�t�@J���J9D@J�*/U� @JQi�	g�@I�>K;q�@I��C��@Io�w�k@H���Q`=@H�v[m��@H�f��D@Hz|�5��@H~.>!�@H3����C@H n�TC@H.����C@F����9�@DmERx�@E���V�@H={�+ �@I�)�x��@J��*R�1@LFzZc�@MM1y���@N���@P}�3H*�@Q{.��-�@RPI��*@S ��~3E@S�*ؑ�w@TQ��a�@T�x�o@UTTA��@U�Å��@U�Ş�DL@U\]�`T@Uqu�|@T��~�@R����@�@Pܽ���@M_/�$m3@H� ^�C@F��h+`@HZ�*�0�@KN�4q �@J8@��\�@H��Q({@I��O���@O'^8���@MY.���@K۽���@G��pR_@E.����@H"�/qX@H�֞4M@L�g�q@L�﻿��@La�<�*�@M�L܂�@K��E�s�@KQ�׋�@K���-0@L\A��I@LO�@0�@K�}�L�@J�-	�@Js����Q@J<r�΁�@I���7x@ImǊ@I\��>Yp@I�	oG�c@I��.(�=@Iؔq|B�@J�]��@J�mZ�C@K�kg�,@L�Oc�@M*�Q;Re@N�Ht�@O*�1���@P=S��߭@P�yP��@QksI��-@Q�O���@R)Ke'%@Q��T�=@Q]�$�
U@P��Bu�@1���-@$����@%���kg{@#tq�D@"��2c��@$�|{�g@%�ꐯ@&�B+t6�@ ��	�@#����@#�.?*�@-6��W?�@ uLN��@x�G�=�@-h@	'd7�b�@���]l@�����?��#%��?�1y�3�?����x?�C��0�?�f��4�?���l��[?�X���8�?�{�K��@7V6�u�@5��;Yg@@얭�3W@���T��@�oY��@Si���3@��G��U@5r��f�@3^˕��5@3��X�{s@(�9P��@G棳"$�@R��3�@U[lM�O@U����h]@U�i�K�@R���m�@R�0֌+t@Ts�3�@S�a��@S�U���-@T��.D�@T��L�@U��6��P@U�wgҰ@Vri�w@Wj� �y�@W�O�u|@WP�:��@WX'�>Nh@W�����E@W*����@V���iˁ@U�
�FN�@U5R�X�@UQ?�{H
@U�愥`@U�
/��@UeU?��@U6|^!�@T�"��2�@P���t	@P7ތ��]@P���y*t@OӜ
�s�@O�1O�o@Nm���@@M��_lw@M��Ю[@M�0:r��@Mj1�_>�@L�=Ȍ(@L���4@L}�>�lx@L�'��0@MT\�@M)����@L���x58@M5�Tl�@L�!l�zH@LZ�&�<�@K�9y��/@K����<�@K�^+g�(@K�,ǳ�@K��bT�m@Kp�	�E@K6{��T@J��<©�@J�T��C%@J6?k�a@I�'YZ��@Is[q�@Il%�9�@IQYT�T@H�BMY�@H�TςȜ@Hg���@G�!�i1@G�{<:�@G��Lc@G��'f�@G���/��@H2K��@H���R#�@IGok�C@J�|��@K��:ჵ@Ml�"�[@O*��!�@Pi\t~��@Q]�3l�8@R+���e�@R���o@S��$vqH@TTQOG�t@T��|qy�@UP��͎@U�V�S@U���;��@U�H�'��@U;�_8�@Tsf��@SJ"Ц@P�:l�ss@K��gR�@D�U���x@BK���z`@E����Q@L�}k2|�@GP6���u@C���WP�@D���YS@Hdr�?8@J_��@I�mG�ڍ@I��̢}@I����J�@H� �x�@J!���@I'��s�@JHD��~|@L/텎�@M��&T�@K�n�c�#@J�W��(@J�Z����@J�:ҫ5�@J�?d��@I�i-�up@I &��@H�Xh�o@HXC�l�@G�:�U@G4����@F�pde!@FǱ���[@F�Nb�*�@G�� X@G"�'�@G�n�"�@HG&�2@I�`a�@Iu�s��@J}���)@K^�ݳ��@Ly}����@M�j��N�@O/`�0�@O����@Poj�-�@P�{��ei@P��i��a@O�]C�@�@E����E�@"f��N�@#����@!���Ow�@!��C��1@!ѫ��S�@ eM�<��@(���@�Y?W$�@)8���@!X��0��@��:��y@!��8�MX@_<	>M@P�D粟@����@B��^@ C�f&;�?�F���?󤌾�ӆ?�Y���{	?��.m*l?�P\�5��?��.��*	?�����I@�hc��@1� ���@j��L@@x�����@
�̸���@41�q��@�NO�3@��k�@/Nw�gx�@CzĹȝ@G���@D�/(�@<�"4�$K@4��ĩ�@2�����a@8�+AyR�@A���-@Csxޜ�@G$�K-H=@L��څ,@P��.��y@Q�\�u&�@SU;Z�:@U�c"���@Vx0NS8�@V�>M�m@V�����@W�/-c@W}�"+�@WVfę@�@W����@We��^v�@W5Q�Iץ@U��9?�@Tr��V}@T7[��y@T�{��e@UZ}M�'�@U=�I#@T�~ߔu�@T!�����@T)wK1b�@S.��ܣ@O�8hѩ@N(i��@O$���e@O��~�@O�$��r@N�N%٣@N,����@M��{!g�@M���&ay@M/'��@L�y�	-@L$(�r��@L@��!��@LB"��@Ld�����@L�˒V�@MUy��[@M3o`�$\@L�)b6Q�@LRZA�@L ���@L��.-�@K�~���@LPC�`@LNMx�#�@L^(<�@K�����@K^���q@Jl� ՙO@J�r�G�@I�ў�@I��)�@x@J�'��w@I�&���U@I; �r�u@H�\�1@H��P�W@H��0�n�@I.�A�#�@H��S@H&�6��@H�a-PW@H�1)�@Iݾ�0-@J�VihT@LOsJD�@M3���@N{>���@P&���l@Q	jb�
3@Q��D���@R�J�4K�@S]R�0�S@S�z���@T��곬7@U
�g `@U]ϔo�o@Ul}�a�U@UW����@T��N�Ou@TX��*�@S3	^�4�@P��U5�	@E�f`�@<C$���@@p�8ř@GOmE���@H�?�K\@?j.�J�,@@�)�#Q@D�1�"�@I��cr0�@GM?7�<@I^�S|͗@J`�">E$@J�I��@K��4]�]@L[i���{@K2D�]%�@MK[��QT@O�_M�)@M��x���@K��L�@K99;�3�@J���[�@I�OS@�i@I���i@IB��M(@HC:\�G�@Hg'z@G��u��W@F���k�@FS�r@��@E�݃�@E��a��@E���լ@E�B���@E����8@E�B�(:_@E�,���@F]����@F�}@�X�@G�¼�@G��vs�@Il��*�@J�/X�@L�T�]%@M$�~���@M�@�2�@Np�o5�M@M4g�@K1̘�4�@J���p?@91�}@"e?9b�p@#l]�J�k@ �n0�ۜ@!��Eg�4@ O�5���@�v�I�q@�XRF�(@u�#P��@�>u�f�@����p@� @;6�l�@����$@
�>ha@�I�A��@5�8��@ �Y� ��?��VD���?��ضC%�?�<Pn:�M?��Ƚ?��|��?�=S�NZ@HPȿC@�W"�:�?�T���?�w�kj��?�(J@z��?�ZJ8��?��v��Q@输+i @@��h���@2��f`$e@Q�M�Ȥ@!��*��}@��̟\H@�m��9@lC7�r�@�/��Ҽ@,�'m��@?�C�0�@?�B؄@By)�,_�@J?��1�@Q�w�Y�@T=3��	@T��v�7�@U.,a�`@T��l��@S,�%��@Rvf�x�(@SU� }�@T�L%�w@V�&s�B�@V�3���@V�����K@U3�Fi�@T�=�a�@S��Ti<�@SY�言@Tu
k�s@T+�tW�@Sĵ���@S�a��i@S��<?@SXu��(s@Rÿ��_�@PÀ���@O���O1�@P>̹�Y@P�)؄@P�����k@P!��"�@O�T�s"@OH1M��@N�,�8�@M��Rn_�@L������@M&a-�-�@Me��u�5@MQ�wz�@M�[�]wu@M�UJ˗@M�����Q@MQ�F���@M��E�@L�H糿�@MS�f��@M:u�U@M���@L�B��e@L�Ƞc��@Lʹ�Ns@K��#t�/@K��8S-;@K9��V9�@J�n�$y7@Jrܯ�^�@J���%��@JGo�"�@I��1t@I�����@I��?�@I���)cS@I����/H@H���;@H��F�E@@HvW}Y]@H�d-%b�@I��l%��@J���^�@K�d�(1	@L���[@N6�u�@O��4(G�@P�J3�@QC����@Ra��-3@R��8EZ@S���l��@T9�Rs�@T��I�@T��1���@UDK{B�@Tნ�<�@Tl�"9q@T"h��+�@R�oĳ�x@P���o�@;��m���@:�;ǒ|s@A޶��x@E����y@Aq��$�@@�3c�F@C�܍�-N@F��
�T�@J����(@G�^\�s�@I���U�@K_�ޅ@L�[���@N9Ya^m@M�����@J�a���D@Q5� ��@M�̇�@N5\O@L�r>N@K�{.X�@J㲾�a;@I���pC)@IsLz�_c@H�&2��@H���@G�����@G����@F��/��@F.�tHS@E�7���@E����@D���cp�@D�3M���@DF�Ѡ;G@D/���\@D�آa$@D�0�U�@E��T��@ED�Y�D�@E��a�\L@G
��J��@Hf�"��@IW���L�@J�:�Y@@K�W$�J@LV�����@K=���@Dܙ���@G����0@H���8jG@C�lau�@*�2�d�@"�L3�+t@!MH����@/s_&�@����]@B�K�N�@ƈS���@����@VZ�"OZ@����>R@��/�p@�(??�l@�B�9�@��f���@e�s��@�KTa@Dݎ+�F?�6�NZa?��:��*�?�\+��?�����&�@o8S��?��]��X?�0��h�?�OU����?���N�?�>{�W�?��Y*�rc?������@���E�@-8@j]r�@_�GnT@&h���@#o��@l>|�3�@	E��t �@aM�?|@-�&�@X��	`@1,�<�5�@<J���P@F�R�/@L	�R��-@PJ�A�M�@RVxFR�!@Q����@P7b-kj@J`R
,�@K��#�~c@M�*77@O�>XB�@R Z��@T�KJ��'@T�z�I�@SEKlp��@S�5�C�@T:(|-Y@T��o��@S�a�Y@S)�o��?@SN#�)-@Rg��HQ�@R��:Ǟ�@R�:�Hc@S@� �@S[��M@Q2��pEm@P�Qߖ%�@P�����@Qf� ��1@Q���W��@Q]�y��@P�xN62@P����@P^!�nL@P�8�Z�@O���X�@O\���m@Oe/Q�_@O`�QT��@O�<�RL@O|��l@O��"�@N�I��B�@N��XX<@N�����@N���0s @N�O���@Oh��(�@Na��5@Ni.q�@M���P@M�=���@M"���=@Lz�FB8�@K�ɪ�tE@K�<G�@K%D`nd�@J�N���}@J���L?a@K4�E6k@Kfe���@K�x@Js	*��x@I���9@I�
h� �@I곞���@I��#�з@J�ml$nP@KC�0�@K�����@L�����@N?K9��@OO�F
�@Pa��8�@Q7&U7�@Qמ
�g@R�x��ʱ@S:��}�@S��M@T���7�@T���b@Ty�&i�@T@�Sq�@T���@T1W:Bo@S��5��@Kp	q@400
q�@8W��A`@=�f��B}@BUk�W��@=�d�Q@>�]>Eh@A-\G��G@E�u��@I���~̣@NQ���e@L�ք� �@Nlq��@Ok?.u��@M��n�|@NJ�ϲ��@O(�,�Uq@P���$Io@K�6�ƍ@O�j���5@Nι��O�@L�q�\�w@Kj�~��@J��3�@J2K��@IF�DE(/@H[`B�W@G�[IE��@G`��Hh@F���p}@F��jH@E�-�4�I@E;�y�j@D|:B�	�@D�H�Wg@Cew�p81@C�GE�@CY�l��@C��}S6L@D��L�=@D��V�� @E!˞~��@E�Rm{@F�����c@H*�G��@Iǀ�8�@J�	���4@Kj�"�u@L}�2;@M{vglnl@N��H�k�@N^��1%@K_AZ3x�@CCg"��~@-��y#@'�F8��#@#N�~���@ ,��I@%g+�2i@!ls"Ǝ�@�U���@��#%�@���U@��z��@hX9I��@ �k���@0"�kț1@2���(@)���)�x@>.��l@���=!@#�!`���@(
��F$@/�����@1b<ߐs�@1Oh�_Mh@^�S�)?��7�L�?������?��ۮ�?�0��3?��N;��X@����a@�E	��@���n��@b���@	$o�u�?��(�(��@�X�G�M@ ;y�v�@Z���#�@�Wo}~@$����@;�˛h��@E��?C�P@K	޽���@P'��^�@L���3�@EaF�x�,@Fy�d��@Fܛ�4$@H:�ET��@I�S�'%@J���J�=@O��M��@Q�h]�@Q�-���@R*;���@R7�A��@Rm	%��@Sܠ�wc�@SEJlx�@R~�>��)@Q��9
�@R;�.2�@R1%
�9	@RmEW6M@R��1�t@S_:���y@QA<�H��@Qb��@Q<��5(�@Q�N���W@Q��#��?@R$�~�N@Q�g��0@Q�t�L��@Q[3���@Q=��@P�a�~Q@Pߔn�4@P�ҏ��@P�7�'��@Pѹ�z� @Pد�^�3@P���H�%@P�Yl�dR@P�%�\e!@P�����h@P���M>@P�k	/@P�7�#�@Pq_1w4@P&��6z@OڜD%�c@O�����@OJ%1�E@N��\'�'@N*�z;�1@M�UK��d@L�B�@L�i�*�0@Ll���wl@L�ܫ+��@M;f����@Lu(rDOL@K��7��@K{u����@Kw�/�`W@K�qmb�@K��.��@K��?ۗ@LUr�m15@M��~W@M�DO�@O��/X@P�K���@P�X�΅�@Q"3[r�@Q�0�N)�@RqK�0�@R�?u:�@S[�횜�@S��`d�@S����@S��Vb��@S�K2�TE@S�~��W@T0Eæ�u@Q����D�@5�耣s@01@�݄�@68ze[��@==D2x�@9%�j*��@91��]-@9t�v�@>����S@CX�X�U@F��h,��@I���p@K�`ײ|�@K�Mq0o@M�H�y�5@N���n�@N���Ɩ�@P�m�@P*�ȱ&�@J���	P@P 񋳨�@P�&x���@O�Cq�@M.�F��@K��د�H@K
�7�@JA�ߥ�@IJ	,�ch@H���E�@G� ��GL@G)���ޓ@F{*C|�%@FHE�ӵ�@E�-.cY�@D��_�݌@D(�d�@C�A��H�@C�HK2�@C�e�i=@C�BJ���@Dd�
ά@Dހt
��@E?,$G�G@E�u�i/�@F�|<"�@G�%�>(@I %խ�@J��Ȑb�@K|芇�@K��Q��@H �;u�@L�>@	S@MDEQ�%�@KR��:�E@D�o���!@)�i{\C@3��K��@+�0r�Q�@'�8C�'�@0+f�p1�@.���g��@&�{�ţs@!M�i��d@!2bƜ?A@'�;���P@5�l��y�@6�,�܉@4�B��@2�Ŭ�b�@1�<e�@,�m��{@&Ƨ/�@#��@#�;�Y�@)X��1w(@2S|��3@6�I1���@'2E�X�?�X{T�I!?��6��?��?w���@�SL��@3��{��@�=Z;*y@ �f@;�8kB@g���@��1�@�g�P�\@o�&1�_@��D�}@���F+@��# � @+��
3�@6�"����@A@��<��@JV�{ysU@Lʇ4�@�@H�$���@Fl�����@G�/l��@GS���C�@IZ�����@I��!�>e@K��n�Ɓ@M�z���@OS�/�m@Q(���`@P���s@\@Qx\�M��@P����M@Q�Ey��@Q���[|@P��H�%@P�	�G@@Q'���A@Q��֍ e@R���@R�̱���@R+Ф��0@Q��t@@Q��J���@Q�sV��n@Q����_@Qǧʈ��@R~U��As@Rn��na@R��UC'�@Q�� U�@R.˃���@Q��I�@Rga�i�@RC�)�@R	��7@Q��*��@Q��LY@R��vS�@Q���s�@R���+�@R#J���@R-m 
ǚ@RfL	l��@RD5��[@Q��P^�@QɆ8�X�@Q��(nT�@Q6�G�#v@P�6�6�@P���3$k@P��Rc�@P6��q��@O�
J�jl@O��e$�@OW$���@OwW�G�@Og��p�@O�(ޕ@N�5�@@N�2y&�0@NQe���@M��}=@M��p�@Nc��r{@N�#��s�@O��mK@O�_�ܼ�@Pg��Be@P�>Wjn1@Q^?|��@Qcv�O�'@Q߉�y@Rp��jK�@R��^a@S �?c�@SN��T|}@SY�|.��@SD	l��@Rߛj�@S)�7@JlD�$@8/󐳃@*xݛ���@0]9��+@7��ަ�;@?�ӎ�0@B��@�@=��Ebe@;�d��@@��&l�@CQ$oS�@E��ei#	@H]%nL�@J��Xp(�@J���@Kv���@M>�W�@N��Kȃ/@N��<�M@M�ڈg�w@N���,�@L���@O�׳���@P�tͦQ=@O��:P(@M�z(0�@Lا��=p@L�fs�@KD�ӫǤ@J�N�ݿ%@Ir�8	O@H�z`D�@G�B��@Gq��r@F�����@F����E@E�gʜ�@E8s!<�@EB����@EW��"�@E�<�ͬ@E�ԉ���@E�N���@F4Q�d��@G%��zX�@G�x��q@I�EX�@JK^c�S@KIlg��@L(h<�,�@L4�ߴ@Mb�3u�)@Nf�);WK@M�x��@L�E��@IR7l��@BH�CRx�@0���42q@,�T�\a@-P;ڣ�@;D�^�@5a�β��@1�j����@3'\1�_�@2�N>��%@0	@��u@68�V���@4���d��@1��R�@0x�6HD4@/S�ſha@)�;���@#�
S@	@">>9�i@$i9!�P@(�$r�&�@,����r�@)+�t��@1���@3����L@S�Q8�@�	_�Ȅ@т�^�@��#P�@!��y�:�@*�U< A@;o��4��@3��I�Qd@�y:@�1T,*@_�JE��@
,9�6;@-b)��@�ҟ<@$|b���@4�ƞ���@CY:�W�'@I��l*w@NR�D�@K��Z�x@K��)��@I=����@IS�A��@I�	�u=L@K_lH@LYVѭ��@L���]'e@J��4�@J ���@K�^o�x+@M��_��@OY��+�4@K�N��M@MS���U8@NiF�_�@M,1o@NZQ��0@P}
|���@Q�Q��s@Q�w���@Q��4��@Q�E�r@Q��9�w�@Q�`�
�@Sd���H@Rl?�i�@Q������@R@����@RWK�Ykp@S3�����@Sc!F�է@RӘF9��@RŅdJ�@R�I��ι@R�s%# �@SI��hB�@SH�fzu�@SH)9�%�@S*T�2��@Sxt�;x'@S�SpJY@Sp1�[�@S�E�5�l@S�;éE�@S^f6Fj�@S$ba@��@S�H�@S�Q��@R�s�W.Q@R��Ոų@Rftz'�a@R	Ҏ�&�@Q��[��@Qi,a���@QSi_��@Q5�Dҭ@QUR�̣$@Q"\�n�@Q!��n�Q@Q	2GC�t@P�K�#@P�M�^ C@P��v�@P�W߈�@QF���@Q1�Wu�@Qh2W��U@Q��0��@Q���ƴ@Q݋aE)M@RG�|�@RqN�S6-@R��ܣJ�@R� e�H@S�Ȃ�-@R��J1S@R��Y?@R
��8��@Q�����C@L��0?�}@#���}#�@(�����@-Q����@4:m#_Q�@=�EG�@:��^�Sm@<W�L�7�@B��S��@=�dZ.��@>�z�e@Bz>tr�@E���@F�W+�Y@I��<���@J�}��ə@KP;����@L����k<@Nk����@N��Z��`@OQ�R�&@M���x8s@N[��k�@K����q3@O6��I�@P��?ۯ@P�mݕ	-@P]����@O��k)�@N��O_ڝ@MZ�w|�@Lc\�)C@KI��^=@J?�o���@I�p���@I2��!�;@H�:T��x@Hg����@G�a����@G�S�D@Grk����@G���rvM@Gx݃��@GR���`@G� ���@H���@I,�,n�o@J"Z�7�g@K����@L����x�@M�l%�@NK��,@N6,-\x�@Nr��� k@M���A�@L_��6Z�@F�Ñ�ӥ@=���.�@:��]ME@@�����@@N����@? it�9�@@ֳ}��@@�T*�@?5g7���@<���%�(@9��U@@9o)7��@5�P��OX@7b�̏�@0�)��@0-��YO�@6U�ۿF�@.i�3�`x@*����@*֞Ӏ�@2N��@2�;�d�@.F䯃@3>^|1�H@!�U���@��{5@$$����@/bz���@'4}�8@5(��l-�@C.i��͙@@B�CǺ�@4�H^/w@2���r�@&z�0���@?>N^�@�:z�-@PJ����@u�Ue�@,�Tw��@6|����@B���-�J@D[f�8�@H�@����@B��]�@B�Z	�Q@BI:_��@B��4��@EH[Q@H��E�u�@I,�ս!@EJ#;b�@B�^o,3@IԘ�/�@L��FZ@N���s-@K�Tu�n@E�AJ�@F���:�@Hpӈ�[�@H���*+�@K�|W�U@O+�C��@P���<%i@P�j8p�@O��&@@PЊ���K@Qstw}�F@R>Xr�K@S�-.�@Q��(2�@Q�H�7:@R �&��c@Q���Y�@Qo���u:@R�pM���@S���?k@S��PP@SY�M���@S�G钩m@T	[!� �@T97�?�P@TQ���x@Tl�X�BL@T�~	[�@T�T�j0k@T�)Ɠ'@T��EG��@U	uC�Ǐ@T�d�ZY)@T���b_@T]IS��!@T]���@TA���6@T+��G@TR�O��@T���+@S���="�@S?��<�x@R����e@S�u��b@R��g`,@R��.��@S�t�@R�J6��&@R�_Oh�@R��614@R{��6�@R�W�F$�@R�]1 �@R�28�R�@S}{Y�@S��Iv@S�dRq@S�.@S1�<�@S=�ޚ9�@SCk�@S1wD�m@ST/'��@R�t+ ,S@Q��O"V�@P$���ru@M�k��C@3�X�$�'@,\fޯ�@1F߳�(@4�ž��@8n�����@Aܦ�yy@8G��7d!@C���s@E���ME@=���-x@=�r�ֆ�@A�R�իy@D�����@G]��e@IpK�x��@J��� �@J��@K�"��K<@M>�n��@N����B�@Oq�����@O׹����@Mg��I�@I�"n��@J6=J:l�@N1�,��@P��є��@Q�Z�A@QVb�A�@Q3��7�=@P��W���@P,V�H/�@O�yX��a@N�
ō�@M�ԅ%��@Mx�|��s@L��w��x@L8#^��@KYѳz�S@J�%
4]�@I�-�Q,�@JX<F;%@I�bI�a�@I�:�/�;@J���ʜ�@J����@J����X@L.Hw�@M�UW�W@N���6W�@O<�tI@O�%�m�m@O��q?~�@O�;%�@N�os��@L�T�M��@F?XAC@4���Bǯ@/5�:ӛ@/������@3�V�@@-ֳk�@@*Һ�zx@>�{#P�C@;�w��m@9y�D���@8�zw �@9'����@9YOE�Y@=���s{@4S��X�@:��e�,@?@�G�/�@5��ڹ��@6��UF�@8Ƹ�L�@>:/A�A4@:���
�@8*���@=��G}+�@@�[R��)@@�����@:Rs�X�@:i����@B���5=@@t$�l�@;@��+@7��_�@0�3��S@*�ң�@$�(G��(@"x�ɏ@��j�0@8�9�TX@ �4R���@0P�yګ@;#@�|�@?���T@E�HM
 ;@D_'8�3@C^LPє�@B򬩈S�@C2h��x@A�Ԑ�r!@@_����@@�̿��@@�����@@h��bAI@B�i�7�@Em��\@E�e.�L�@B�j��HA@BW�p�T@C~�H؁�@C�+�O�@E`���@GC�q5�@I?�7x�a@K8]o}C@O \>��@PZW0���@P%�~e�@P޾n��@RTaS@R4Rӈ�@Q���Y��@R2��\�A@RDA2�@RF\��fu@R����@ReAQ��]@R{W��y@S�d�خ�@S����@TkxB�r�@U���w2@UY9�In%@U��)�.�@U��&d��@U��4��@Uù>��]@U��m�@V8�� t�@V;���5@VMn�{@VQ�^���@V>�_�p@U��7�}u@U����8@U��s�l@U��˄_@U�R�; �@Ux��SQ5@U;����@U&u�$6�@T�'jT@�@T�[V�0�@T���63@T��K�@T�T�b�@T��L��@Tl�M���@TE�/?�@TA�_w?�@TY����[@Tg��[,U@Tc����X@Tc�~Oi@T<iY��@T>	���@Tdc�3y @Tn����@T;���NX@T	�M�@S��K=�\@S��s��@S0;�X�@Q�E� /�@M|��\@B$A����@*]w�8�x@.��$�@1Rg�Ig@9�3�A�@: B
�#1@=,��"a9@A�V���@A�i���@H����@>���P�@?(�}Wy@Bjs�6�@D��#�Hu@G5(��	�@I�� ��@J��V>-[@J��k8m@LU9[=M�@M��nɁ�@N�����@Obؓ3k@P'M��J@O�%C��@N�-��@KF��?�@JI|Fs@L��U�F�@N��<F�@P@�pg@Q*b%='@Qq���x�@Q~�-�A@Q\�|�@Q!c�؜�@Q /K"Ч@P�#nxh�@Pb���@P;�Ⱦ�@N�h`���@Ne'$jk@Ml�X�BU@Mc���@M�K�A(=@M�N��@Nl!�0U@N��lf�@N�nl��@O���/�@P0'����@P�����I@P�L�)F�@P�zA�[u@P�!�-5@P�R)sT�@P9� ��@Mt����@G��u�(%@;�8_���@4��J���@4��`��X@81ӆ�g(@A��nd9@D�����@AwO7B�@>m�=��%@;06�4#=@<���ۊ`@=�E��G�@A���D3@8ᕯ k@9�W��C�@B=��$	�@C�y�q��@FK���0u@C,VL1��@@�!k�R@>�WtJ�@@�P"�@B�cz5�@A�-GW
Q@D;��b	@G�B��X\@J��/6@@Iհ��e@Hp� Y@E��Y
'@@�R؋�@7�
�$x@2��(@/y��C�@)�6ce�@'�7y@$1�8l�@%���'�,@%,��4�@'�Y���\@6y�d��@@�%�@D�r��@@G���Գ}@J_�m6k@JA��;@I�6Zl@H��]9?@F��4D
�@D`+��Z@@x�Pm��@?��*�L@@��\ Y@B>4z遅@Ab8| �(@@��H&��@AH~EH?@B
}A=�@Bn��`k@C�{a(@E&'	|5@G'�(E@H�~��4@Kj�X�S@Mo�x�c@L�'=ػ�@P$�J�~K@Q=�� ;@Q�<��Ly@R;��x}@Rz�$3[@R�bk�1�@S��Qm@Skc� ��@Sk��� @R�u�rm@S�-b9�@T[9u�m@T�E�V_@Uu�����@U��>�@VC�)k.3@V� �\�@V�;�\�E@V����@V�U��@@W��Y�{@W)Wp��@W2Y���@WG�M��@W@X6���@W%J)�@W�7ݑ'@WlR�:M@V�v3r��@V�����@Vܘ��б@V��`ؾ]@V���9z�@VoVq@VJΗ�,5@VQ�8��@VKM�0!I@V?w[X�@V��T{@U�e��O�@U��G�8�@U�@��@U�}�E��@U��B�w�@U����@Uz!-%@U`Ӿ���@UM:(�+@U#��q0@U,�Jj��@T�l"�|r@T�0Y�U&@TTzgUQ@S극�g@S�hbk&�@RX�9�6�@N)��_�@Ab<(��@3�eם�@5W(��@5�O��%�@:$���ݽ@:�U���@<�gKe�@@̜�X�@>Q
�0�@B(fo�@?j��h��@@7r�(�@B��%q�@Eܺ�I �@H���F-@J)�DaK@KP����+@L �m6� @J��Z��@J����m@M�1��w�@JON�T�5@L&x(�@P��e@O��";�@M�0���@LH���q@Kꗕ�'@O
�;Ō�@P\T��@P�͝��^@Q=�p�v@Q6�'r,�@Q��2��@Q���]_@Q�S���@R2�J��@S�eoL��@R׶����@Q�I��!@Q�L�:3@Qn{Ql��@Q$�&)@Q4��eX@Q��~�W@Q.�d��@QC�|��@Q��np	@QJw`F�@Q�M���@Q��BGl>@Q�o�W@Q�ɖ=�}@Q��GZ�@Qm�[�'�@P߭E}�,@N����wp@H��3��}@C�"�t��@>?&'�(@@��瑭@A�sx�YH@MKSYo,@I��̘JE@C��ߦ��@Cw�ө@D~�=�@CJ��&co@B���4��@=r����o@B����@Gvn���@G�#���@E���@C�R�à�@D��c#h�@Cs�C�X-@;�vz��@=&3k���@?���dy @?k�	�@Bd�Av�@H_�~(�@J��O�@H+���@D��_ped@<��ɝ�@;m@:.�@<87�@9{ϒ�	@4��m�%@2$@ظ�@2w��oG@-�2��@, }���@,�$
�$}@/��Pi�@14j�
�@3+$au��@7�XJKk@=��pt70@BEj�?@E�d��ˏ@EVt�@�@HR-����@G?�v��S@C�ט��@C���W�@B�` �@C�8G�T�@@�ݩ�1�@A�;���@B4�C25H@CF2;}��@C�7�cϑ@CfL���E@B`Bj~@B�C��@C���V<�@FRE;u80@I�H�r��@L�����@K����r�@MH��k�[@O����"P@P����Do@QU���@Q�E�ׇ@Q'�y���@Qj^��@R�Ά�@S���N��@S
�����@R1���1@R?�u��@S�W6j�X@U��Z��@Vg^$/1@V�_�s�<@V��0j?e@W<h�lY@WwD���@W���c+4@W�]�@W�wu�k@W�2���@W�	c~L@W�E���K@W��z�l @W����_@W���e@W�~k��@W�{Y�B @W�3�YX@W�0$(2�@Ws�5��@Wfu�">U@W]���,�@WY���=@Wc�=z��@WW4���@W%�!�@W�?P��@V�����@V�;/>$@V���b��@V�_��F�@V��7&e�@VRR��U�@V?��Z�@V)��El@U�{xf-@U�G)��@U�MmC�\@U]ps�s@Ul�\�@T���bk=@TH�5G@SO�LB�	@Q�R�!�@G{�Z@@=? �H��@8�I�	@9�� K@<pw���@A����3@@@��i�@�@F6J�|�@?h���}�@@���7@@�k��p�@Ak ���@C�S�w��@Fr�R @H{v�,o�@I��4�/@K�#F��T@L�6=�k@I�ABG|�@I��tv�@K�(��j�@HL%��O@L���i�@K6��.��@K���@N��Ӵ�/@OQi;�s�@L<o2�@MIX7ߪ�@N�~k{��@O�2츬�@P�ѥ�?@QG�_�@Qβ��+@Ru w�Ѓ@R׈�ʑL@S%D����@S��LշY@T��ޑy@Te>\!�@T'��O�@S��*7�@S1�ͨU@R�㑦P�@S"fF�@SQG�ڳ@S����i@RҎ9�c�@R�Q���#@S���@S(%��f1@R�����@R�
����@R��i��@RiG7\�@Q�ǔ�a�@Q��Wd�@O��tB�9@N�/�Q��@N0Dģ�@M��'��@K�G��v$@O�e�:�4@No��]K@L>�\%��@J�`jh��@L����y�@K�i�@K���j�@J
�� �{@Hk��3S@G���5�t@GH�0!�@I@����E@J��o��h@LG��D�?@E�d!8S@C-��0F�@@��2�D�@D\���@@�
�ӎ�@A�ۘC4@F=ʪ �@F"���@EJ�\q�%@CJ�E�@@&��(4@9���8�@6w�C/'@@9Xzil+-@9�!b%�@9P�r��@7�8��I@4򍂎��@5�7C�@5m�\?@6^|ڞxh@8P����@;$ίޣ�@8����ع@80e���@<���-@B�
U�	@C>�p��@DF�2�-{@A�&x(�0@A��y/�@CJ� �@D��f��m@Eޕ�@@E&�\�#@FA��E@Edt^~�@HO�z��@E�ÿ~�@E�/�O S@E��G��@FMx�~<@@G	&1�t�@I���@I�K`)��@J��-�h@Mh�:�_�@L�*��@L���tG�@O��,N�@Pv�����@P�aw��5@PW���k@Qk��{�p@R.����@R�w vT@S�����@S<��v@S2i����@Tf���y@T�LA�o�@VVHS�T@V�c�_�@W �����@WQ`���@W��4�(�@W���N�@W�PWA@W�����@W��(d��@W�4���@W�3���@X3�r��@X�m+��@X{<gAK@XڥߛH@W�f��(�@W�����@WѾC[��@WϭON��@W�3��A@W�%|��@WØ�|a�@W��EH3@W��Mk@W�fw��0@W�,�y~H@W��'6�x@Wh���@WUL�˵�@W,�s�a@WX���@V�����@Vݝ��@V��}LM@V}�+hS\@Vk�Q�M@V^S~=e@U�5n]$?@U�(9p=@T��֊��@T<퉸�@S���ɣ@R���Fk@M��֊�@D�C�e��@8�Y��A�@=�/9��@B�sߓh@D�wXy��@D���@D���=�@@��?��@@�a���S@Bj�l�@DE2�]��@Eؐ�L`U@Gw�v�@H�
n�@J#5Gw3�@J܈�1��@K	�ܶ��@J�so��\@G&vY�m@I�C0�h@I,�qTI@K�U�F4�@MS8�L{@Mcr��w@N?�me7�@O��p�P�@P.�`�@OI��X0�@O٭^��@NW��1MU@O��3_@P{rl�x�@Q��c4M�@R8��|@R�i�5v�@S�8��e@T$�CtL@T�G��@U8��w�@U6U��@T�v3�u�@T�HZ�r)@T����@T�3��O@T��D�?@Tp����@TTuD+N�@T41_�Y�@TS4]ҹ�@Teh����@T�*b;o@S�B���@SxEs10;@S*�1G�@R��V��@R."L�G�@Q�-h}s@P�O,��@O��Z[��@M�o�ҩG@Klŀp��@Q��ȓh@QE�'�~/@Q�G���@P����@N��z[o�@O뛣蕈@P-�,ڦ�@PA�(|4�@N�!i|)�@K��Y��@K�x�Be@J9	B�}@M��#�u�@L�B˼@I�\Z @I|O4�p@G�:���@F}��[��@G��F�@F��z@F���ս@F�	Y�]�@E�1�$y�@C�5�G,@B_�R� &@B-D�`�@@���P��@@�N�t�@A [a��@A�����@@�tM��@="��p�@<�(�*�@@vd]BBC@A�iݏ�@A���J�@D&�#4�7@D��ԏ�@D�ګx�i@D�j���@Dx#��}@E�3~T��@D^����@Fz�@\�@G�����@KK�k��@FpHHZ;@B�%ߪ-@H;Z��ط@M����@M�����@J�-�FY�@I�YxC-@J:�#_e�@M�[�t��@L��dd@K Mg<@J�遙�@I;a��Ey@JE�	��#@Nu,�/s@OPt��/D@M�WY|@N�g(T%@P�h-�@P��X��@P*��V^c@P<��_��@QN!O��@Rti,��W@R�"�NiA@R��(�3A@S0����@T�r��0�@U����&@V�I�@V�����0@W���7@W��RH�@WQPX��3@Wsn�Q�@W��^@W�����@WԐҼG/@W�B�/=y@W��x�%@W���lx@X��5y�@X Y.��e@X��Q;@X��ޞ�@W���H=@W��Z?@W鈝^~M@W��Vl@W�}�=dQ@W��p@W�@��@W��oq9@W�z��:�@W��R �@W�;8am�@W�
���@W������@WxO��-�@Wl#Hj�@WR���@W@܊mw@W.�#)@W�w��d@V�uH_@V��q׽H@VH���H�@U�5*�i�@UQ����@TbM�
T�@R�;��E@QB&�풁@L�]�@Je�v�	�@B���v�@C��;e�(@F����[@GS�J@D@)P�h@CVC`x��@C3M��@C��K�@Ea���@F؛ @HP�a��@I��=?o@KG{W�b�@K���W/�@L�f�yj<@J^eΖ,@H��j�@J+��^��@M�$}�(@O�Gp��@N����@O��k*S�@P�d$��@P�5n`��@P��x7S@Pr\�'.@P]#�˖@P�M��v�@MRiK�u@Nϓʷģ@P��{��@Q�g�1J�@Q�^4��@Q����@R��-��@@T��jh@T�ڣ��@U)�0ʧ
@UuE�=@U�QN7��@U�g��9@U����z�@U��X�^=@U�2�\@U�#�x��@Uuށ�W@UO@`�y@U>�7 �i@U-�#��g@T�L
LM�@T�9��@Tc"h��E@T�aKL�@SpJZ�Ќ@R�3挙�@Q�"Ex@Q/�H6��@P��&�j@O���R�@P扟"��@O�_�Ėg@Raܑh�x@R�>����@R�P�@Q9�n�]S@QZ*���@Q���@P��NfI@Q��K(@P�e��>�@P�`��(�@PH$H�@OmH�@N�6���@Mx���@L ��>5@I��?BV @I��ռd@J ,o��/@I��9��c@IK(P�L�@H��<C�@H#_�m!�@F �T���@E}?+F�@D����r�@DF$3�M@Do�	/=�@E�V�$@EhoBW�@D�*�My�@DA��k@C���:@E*�4@G�spS@GN�Qt�X@H��I�@I�(Y�}�@J����@I!�G�p@G�a��[@G�K#7��@JbΔ[>�@N@⍡�@Nf��#�'@L A%ڬ@@H|#)T��@Gto�)O@M��c;�@O:(hѵ@Lθ�50@M9�&�@N�:���@L5Q�q�@Ok��8�{@P�;�*?�@O�`�l'�@L8շ�@Jৗ��I@L�*��=@M$���@P�<�0��@O�&��\@O{
�+�@N�)�l��@P)2h��@Q�D�!�@Q�hRY%�@P�
�÷T@Qp��$Ӆ@Q��x�?�@Q�6L-�@R�(5f�@T�֫C�p@UQHB]D�@U������@V" ]�4@V9���F4@UbI���@U�25��@VR"j~U�@V��`��@W=�&��@W}$�i@W��#8F�@W�#Ej��@W�hd|*�@X^B�ܭ@X߈�Z�@X`�(��@X
�9�H@X+�
�@W����U@W���8@W�_�7��@W����+@W��b��@W�z�*7L@W��e��@W��z��K@W�W�j+@W���؀@W�!���@W��<�G�@W}��(�@Wj��l@Wb���@WQX /��@WR��i�@W)��;�@V��1fR+@V���[�@V�7İx}@V3D���@U����%�@TM��0�@Q��؄�@N���_�@N�-����@M�x�L]@J*0+/@M�u�8Tw@M�F����@H����E�@EvFӲ�@FJ��b�}@GH
;X/T@G����@Igq���%@J��=�"C@K!=�_�@K%oCTD@L�\��@M3s{�e�@N��	-#�@O9���&�@M��xS�@O4%��=@O���@P��\1-@P�Z:J�$@P���@P�Nv��-@Q3d�Q�+@Qۖ���z@Q�� ��@Q[^j5�@PH7?Aϟ@O��N��=@O����k@P� ;�@Q���@Q~��@Qs)�*�@R�镮�@S���@T��r�	@UNp�˽@U�}�?;@V	q^Y��@V8C���@V!�J?"|@V8[����@VJ$U��c@VQ����@V?b
x��@V&S<@U�v�{�@U��n�;@U��-%Xu@U)��}6�@T���2��@T�Ɖ�P�@T�Z;�@SRe^��@R4����g@Q�}��O_@Pݠ�+�@P�7*��!@O�$�/�@T	xtF�@P|3t7�@P��^7�%@R3�����@R��v#\@RQ0����@QǠj"\0@Q`���u<@Q<��uvs@Q/�n}'@Q���J�@P}-�@Pw�@$a@O		���@N�����@N#9EU��@Ml�띋e@M+��E�@M)�S�@L��I��@K̮���@K��Ѐ`@J�\��1(@It���p@H*B���@H:Q/�e@H?}1z�@Hk�M��@H��z��X@I�u4v�E@I�;5��q@H����N�@H{�g�o4@I�fD,�G@K4<���@K�ü2v�@L�Hl�9@K���!�@J�r�O[@Jc:fa;@J��3g@J�`{u��@Kś���@L�9�73@O)N�ꀘ@OW�U��@N#\Z���@N|J�@O.J8@Qa���v1@P�͞xq�@Q��@N��%��x@M6R��ε@M���g�@O����@O4��F}@N֭|��@M�aL��@OK�
O%�@OӰ��t�@Q��ֳ7@P�7���@NY�^��+@N�`\��@O
ʷn@Q>W��R@R{K@P�_βt�@Q�h�+@Pz�.4@QF��b=�@S�Z@TK��_?@T�d���@UF��8��@Up�j��<@U�m�73�@U2��J�@R���1@T�^H�@U�c��@V��S��k@W+9���@Wz��K�@W�,��@W�MSt;U@W���-t@X;���c@X3e�}u@Xٽ�F�@W��Y�NX@W����7@W�˵�*�@W�n��C�@W�J��܋@W]��8��@WVk���@W���_��@Wx�i`b�@WDa�0�@W5��B-@W0�p�[�@W#�Ռ��@W/h��@WB�&V�@W2�4��@W-�u��@W4�,���@Wċ;�s@V�M��y�@V�v�2i�@V�sө�U@V 󵘸I@Tn�7��@Rj�L��k@R����%@Q��Y��^@O�zbr�@N�"��@Q 5N>V�@R��#�@Pϥ�w�@J�`Ĕn3@I���&�@J_	%�@JQ�YJ<}@K��4q@Lt|����@M ���@@J�I� (@J�t�f�@NepI�@PM:a<@P]��B=@PI��K
�@O����2@O�����@O������@OIV���@O6@$ �@P<���~-@P�
FJDi@Q��×]�@R�����@R�EE�j@S#��|��@S,ٮAH�@S#E�Net@R�f�$@R�����@R��;�Bw@R9��t{@Rٿ��3@S�i�ӫ�@T���0}@U+�K0�@U�q*�֠@V!}&��+@VGJQ�/E@V\>7�@Vm����@VeKM"%@V0�Z�i@V�[�q-�@V�,�k� @V����@VYH��2�@V)gG�@U�f�]�@U��|x]�@UYl�� @T�H���@T>ut]s@S�^��S@Sw]��@S���ͤ@QRJ2�@R�Z�ȥ�@T{
�_��@R�^��97@Pj���<@P�\�@P�^Ѳ�@Q#�P��	@Q����P�@P�&
g�@O�X�S@P-5Z�_�@P�Ku	�@P%xz�˭@PQ1+` �@P��*��@P�!JW}@P�+����@PM�)�q�@Oښfb8@O�_�r_@N������@N�Eg*(@M�(�(@L��]�x@MJ��O@M�T�h@K�����D@J��@K�޷��h@La^:X��@L��Q)�@O;Ʀ{�@N�A
�#@K��w��@KvU�y�?@K�%��4�@LV�-S[)@Mna��@M�,��@M@�	֮�@MW~c�Dx@L*����8@MY(��ex@Lᡍ �[@M3��0@M����@�@O{�k��@P^�T��@MT�z@,L@PS��W%�@R\Js@Q����/�@P�bd�@N��c�@@N�4�[K @P��SyE@M|�0Q�@N��r7�@P�R櫫@PT�Zz�M@O�mL�=k@P�P5� X@Ps&�(�@P^���7@O�I��˭@OY���g@M�GXNf�@ON]Ә��@P�K�u��@QjA��;@Q|�@P�����@P��ܴvS@P�[�q<�@SY��-!@T	�z��u@TRe-��(@T�J���@T��:)��@U8�a�9�@S�AѶ��@R�Ꮾq|@R�U67�E@T�^��a@Uà����@V[�?�@V�f��@W[`��@W��k:��@WÍ�=�A@W�#�&��@XH:/A@X�~@Xٟ]�w@X���@W�m�R-@W� �Uρ@WɂV�i@W7p��+@V�����l@VH�`�@U�����i@U
�� �f@U[Ȍ��l@U�+��@VZ^�4@VHtQ@Vy���~�@V���b�@V���`@V��y;j�@V��;@V������@Vuǰ��@VO�MT@U�+m� �@S.�W�S\@Sz��>_�@SKn^�@@Piߕӫ)@O�700R�@Q�P�@RTf(��`@P̄�e٨@O����/@L*���K#@K� p�@L�~ހn�@MjcN�o�@M�6�Ґ{@N�_6h@M�棵@M"�C��@L�pf�״@OHxb?6�@O����@O�%�x�3@O���{g�@O�Qa^�@P_$$*�@O�2�[@O���X�#@P���L�@Pg}�W3@P��=�|@R���@R�X��@R�N�1�o@S�f�^p@Sd��l@R���l��@Sk�w��@R���ӧ�@R�-�0N�@R�}h�8@S�*�܋�@T�9�+�@UX�Ӄ�[@U���� @V
�ߗ�@V6�m&@@Vf�9DQl@V��wfe�@V� ����@V�q ,�%@V�dƯ��@V}pS�B�@V~G�Ȕ(@V���Jq@V���� @V *Gz:�@V"�HR�5@U�P�1�@U����g�@U<�F�xw@T�%��Xd@TH����M@TEWP���@U|L�;@T��=@R6BF�@T�RQɘ�@Q����Fs@Qь���8@Qh���@P��<�\�@P�o\0:@QD�[@�@Om��K��@PQ�fX�@K��I\aC@Hջd���@J
�$�x@PxʇD�@Qzw��@Pd	r��@P-�J�@P����@P�Γk�@P���&@P{[�G��@Pq@P+�@P?�,@N�v��@N5Dr�iD@M�7r`��@M�ߠ5'@Mk��C�@M`=WAc�@M7�����@M���\@O��n@P.�y∙@N3��� @M���O@M�+��0@M�Y�@�@NR�*��@N{&uJ�`@N�0�\@O!E�s�;@N���z�@O�� 1Q@Oͺ����@N���s@OY����@P?lCr�I@P!�<a�g@P�xe�@P�ёk@O������@O�<Y@PM���+@Nⶇ[�@P.�ch�k@P����@Pxc	���@Q����:@Qy�R�×@Q�G��k@P�^�p�@Q�%�q�@Q��!#@Q��z��@Q��D�O@Q�{��!@Q�p;��$@RG�WW[7@R08�k�@QGF�p{@P��S���@Q�yaBa@R����@R��p��@S���*T@Tk�0�n@S�M���@Te��͖@TB�A��@T3���w@Rs�ƉP�@R��:��=@R�<��5@R[9@@T�#�Mmh@Utrdh�@U��
�@Vy�r\��@V�=Ŭ5@WNg��<]@Wm�g�e @W���x�@W�6�+8 @W�R���(@W�1��@W�.1f @W���XZ�@Wz�?���@WC{�Q\@V�e����@Vp�{��@U��Ƒ�Y@T¬r.��@S�*,��@S����@T e��c�@Tq�7��/@UA��31@U��q6�!@U�ѩ	#@V#4}ur%@VB"Zg?�@VT0���3@V8���%�@U�l��d@T8�`�W@TS��R�+@T�:�NM@S��=A�+@R��{A
�@Q�t�*�@PHX�g��@N~�|�f�@N��+�@M�-_D�@N��liX-@Oԃm�X�@P6\2�@N��Wc@P_ty�@OӁ^A'@O��i�u@O�ߊO��@O���0�h@O96n�@O��:��@O��ˤg@P1��r��@Pr��@P�
�sZ@P�l2	�@Q�'q/@Q ���]@Q6�Z]��@Q��phS@R1O2/��@R�9�##�@S9���	@Sq�Zݍ@S�����@S߰���I@Sm����c@RD4���5@R���Q'm@S���=�@T��С�@U/5|z�@U����[�@V �Z�l@VW�&�,@@V��M���@V��t�'@Vٯ?'W�@W����}@V�����@VӾ# o�@V���"э@V��&(
E@V�Q�XX�@V_m�)[@V@��<�@V1Ӯ-"�@V�!��+@Uз���@Ux<�C��@UV�7�@U%W��?@T�L�w�Q@S��ˎ�@S�zW���@UV!ơ@S�;�6��@R���M8k@R��b��!@R6�EEn�@QG[K��@O������@M�W��@O^x�9� @P1�t��@P
�(ު#@I�TNh�<@I-n�vy�@K��ޗ]W@L�r~���@P�G|P�@O���@P��s�@P��x��@P籎��T@PɎT5��@O*��sP�@PM�=���@P7(��z�@P���@Oi�N��@N���g@O8��!A@O��1s@Oͅr��@O$��� @P��8^�@P�.�u@O颬ӝ@O��{@N���C@N��zz�@O��pA�@Pe��@P�̿��@Qc��,-@Q-�#��$@P�LA,�@PC�j�A@P7u/$��@Pel�[W�@P{}F-�@PD���7@P��P�=@P?�� �@P@WT��~@P�3%�d@P$�< �c@Pۗn�@Pzy/�{�@P��:��@Pj�-�E�@P�ϲ�Y@P�O$jD�@QGV�@Qh����@Q�cWN��@Q[)���@Q5�YQ@Q%�᪱�@Q���9@Q�/�[mm@P����
�@P�/�
��@O�0��@N���� H@O�=\F @Q	���A8@RB���@R��]��@S����@S25����@S@0�X[@S�}h@S&�J��@S	��Y��@Q{��� !@R�;0Ѐ@R��R�A(@S*��\(@@TJ9[�ڤ@T�-5a-S@Ui�z���@U䇺�]S@VbQ���h@V�x�%��@V�a���@W&�
x}@W;Ir�zD@W^���0@W\䎼�`@W<-@|Y@W��ɕ�@V��\�]@V(<�C�X@U�5<�B@T��i�@SXJcu�@S���W@T0i�5�@S�����@R(u�|��@S����U@T49�E]@T��%�@UX�	�w@U���gs@U�N���@UF�TH�@UE�LM��@T���}��@S�s�hY@S�\����@T}hbL�H@TIP*7=7@R�����@P����@PuQlop@N�܇�=X@N![���@O���@NnG����@OJ.��@PM����y@PB��k�@PA#�M�=@O.�2�ʇ@P_Uٙz�@P����@P/��o�z@P�H��@O(G4�?�@O�w���@P���
�@P�tmN��@Q"هYu�@Q/��(T�@Q0iܴ�8@Q@����@Q�0��@R&x��L_@R�`6/�@R��a�i@RZ%�<y@R�݅{��@Tt	���o@R� ��C@SW��5�?@S��S��@TmW�y@U5]J� M@U�w+�!@@V*����@VXIl��i@Vk���T@V�Ϻ�+�@V�㾂d�@V��|ù<@V�m��D@V��WM�t@V�眲)�@V�� �Ի@V���S��@V����q@VlM�
��@Va�BHP@V0����l@V#�D��@U��,3�@Uɔc���@U�{#|7o@U�1|�}@U1�'�O@T���-�-@T� ��7�@Uw=-�i@S�!�dZ�@T-r�-_1@S�/!�g@R�f�,�@SR�ɜ��@S]��!�@P��"�b�@P���N�1@P��@l��@P<���_�@M�����X@I�v,�y�@LvԤ���@N0�&��@NA���@�@Ma��ǰt@O�(���@L�v�s@P��Ȱ�@Q��=�@Ph�fe&�@P��)P@Qϲ�@P�效WP@P�ι�OH@P���K˔@P�P4��@P��+}�@P��Ƿ��@Pe�j��!@Q=�2(0@P��8[3l@P/"�n�@P}4$P@O�n��@O����@P:soN '@P�)�_@QBŗ:y�@Q-���m�@P��7��@P��,ɻ@Q,-�\�@Q:+~��@Q5NR��@Q)ZY_-@Qo�&�w@Q���'ü@Q��ו�@Q_��1@Qo?U�n@PŘ���@P�����@P�<�5�;@P�-�ؚ�@Pc4�i�@Pyt��`�@Pbe�NpP@P��S@Q��}�@Py^Q%��@P+~��H@P([��e9@PE�М�<@PT�z!@O�bx��@OsQ~4@N�(�h@M�ǌV8@NTN!�@P.���@Pe@�d�@P|�R�@P��q�@P���8�X@Q�֫@Q�+�E��@QQ�^8�@P�M�]N@Q^d���O@Qˎ�Å@QuaVsW�@Ry��k�@R�p^��@S#�P���@SJ�P���@S����u@S�	��҄@T�Z2�@U�� j#�@V/����g@V���(?�@V��2o�\@V�F��I�@V�*��.@V�a#C��@Vr��G�H@U��gw��@U=�
V�@T\��[{@S�zl��,@T�,�'o@S�Iߚ�@S���ja�@S��'a�@QJ�-��@S�b�K@Sw;(�E@TV�>��@Tk;nLx@T ���!x@S��i�{�@S:#���	@S�84A[@R��SN
�@Ss}Ȣv@SCso
@R{#��@Q�>��O@O�Z����@OsS��@O����]@N�.�	�u@M��
���@N�����@M�l�5�@MrU\���@N�o��y@OӟD@P���@P�Yx�@P1*e'�U@PSG�|�A@O�8L�@N����E@N�{�U@Ox*�G�@Pp)��@P�WU�g@P�Z0:t@Q �܁4@P��[i��@Q6ągi�@Q�p�A3@R4V�X�@Rv�u �@RS2�B�@Q�-(S6*@RfV:��@S�,`$�y@S�����@T! Æ�@Tyy�z�o@U�,��@U�If�S�@V���@@V5��kk�@U6R񍱼@T�W�I@S-��'=@T��|�m@V��X7@V�-����@V��37%_@V���O{�@V��N׷C@Vy�E}�@Vru�Im@Va�o���@V=Cji��@V�fi@V��@U��L��@U������@U�%�@U�*�$��@U��6���@U4���@T�'�[@T�uN0��@TR_���Y@UNk�D�@T˗���@S��t��(@S����|�@T9���u@S��Uf�L@S7�P` @RfU0xw@P�� ��c@K���z�G@I|��$�@Op���@Pg�d�]@O����@Nӥ,��@Nj-���_@O����:�@P"�a,�@M��<���@Q(�p�+@QB�B���@Q��iE�@P�k��4�@P�I[�vO@P�q�-@P�i@��@Qh��8m@Q!�sP@Q�5�=@QjR��9�@QZ�)��h@P��-_��@P����@PY��,�@Pu�㣓@P��LjU�@Pc��v_@Pb)t�G�@P�Yk@Q����@P�����@Qj\�@Q)�H�&�@QN�e7�7@QD�)9I@Q'W�a¼@Q��Ruh@R_�F\M@Q���ި@Q�̛w�@Q.!g�@Q���޷@P��a�9@P}>$ԋp@P!�m@�@O�(��y)@O�Žo;�@P.�`�x�@O���fGe@O�k�)�@P�Xm��@O�X��ڀ@OX�
�{�@Na�$�IK@Mv�ՠ�3@L?�;�f�@L�n��_@M4��3;=@Na��~��@QO�tRio@Q�"��[ @QdS\��@Qf�y8��@Q�u�s@QR�=�@QO�7p@P���8��@P���)�@Q�����@RV���Y@RC0M��@R7��V[G@Q��%�[s@R8���=@R��4��@S#]N�w�@Sb�r���@S��mh��@T'u�s{@T�~�s�@T� ���@Ucōl��@U�0 #��@UΞ�~[�@U���Y�%@U�R��@U\b���@Tbicx@S��ش@Sw�;��@S��o�@S�e�
y�@SqKqF��@T5N��7@S[t @R�)/��@S�H�/@R���=@Sf�[@R��ˆ�@R4��$�@R"_"�M@Q}��˚�@SgiKAP�@S����h�@S���0��@TB�jZ�@R0�
��@P��"9@M�BF�*�@M�nЌ�@M0=Q���@K����j�@H��K��@K�%��h@Mś2��@P,(�� @PI�h-��@P5��z�@P*a����@Pc���t�@P0�>Տ+@O�L�[�@O�<��#�@N�����P@OT}�Ie�@P]PWK@P�\�Ebg@Q�V6��@Q�3�8�+@Q�����@Q��ڱ�8@R�-r��@R�����@R��}�$4@Q�
��}u@R[����@R�D�%��@R�5Խ߸@S�L�	(@TQ�ry[@T��0�P@U^��Vٓ@U�:o&4�@Uھ@���@S����s�@Mb�;	9@K�f�O�@L�^G��@Q�mK�{@TĭS��@@U���✀@VB���@VRA�jPE@Va�8.@@V;CP�lm@Vv�=�@U���"U@U��V@�G@UY�G�@U?y�n��@UeN4ٓ@U��(�s@U�A�PF�@U��B+�@U�n��@UL��d�|@U��b=�P@U��ƹ��@U��4{C@U��Kq@U��=��\@U>����q@Te���UC@S9�2i��@Rv�(��	@R��թ�@RZ)��G�@Qb{I��[@P�qv
��@N�'�sq@L[Eh�؛@N�'܅_+@Pi<����@P}4�;[@P�@\�R@Q&z�C}@P�fʷ�q@PD��[@Pu~C�&P@P��'S )@P�{��@Q&����@Q>	�Ӎ$@Q-�y�
.@QMψX͋@QD�E�n5@QEQ.��K@QU����E@Qt+R_G@Q8V��\@P,K�s�@P����@P ��f4�@Q;��T@QV��eU@Q5�x�P�@QF�	���@Q���sT@P����{@P�ʹ5� @P��8W�@Qw2�B@P��v��@Q<T֥@Q�:��T�@Q�Ɵ�C�@Q������@Q�)+{@Q�F-p��@Ql����@QZ����@Q ���w@P϶��Н@P��D�6@Ph�Wm��@P%|d�'@P�ɥ��@ObdƸϰ@N��=;$@NIs��M5@M�h�W�%@MRLuƌ@L$T��K@MZw1C��@N!h�'L�@O��v�E4@P|7P��@P#�_�@QX͸�c@Q�I4R�@P}�?��@Q	0�=�@Q�5o5�@Q��o�p�@P����@PPF���@PUQ��@P�/A�Q@Q{E��@Q����@RS��A!@R�v6@RJ�wO��@Q�b�`y!@Q�5D� @R(���@�@Q���3l@Q�)��
�@Q�����@R���|�@S�+��x@S� E�
�@T'���q@Tzʍә@T[�V�K@TF����}@S��,��@R?����@R^z���@S=:�@RP�{��@R���@R���\a@Rw���W�@RH�É@R����t�@R�M�2@R�Y6"��@R;�;��@Q��z=�o@RW0���@R�+�`��@R�PQ><�@S���܀�@S�
)���@R�0	 [@P��v���@N�^�~Ho@M�ۃ�S@N*-�p�@@Mm���"�@N%�5⣕@O*~�p��@O��>�^�@O�iR��@PL�X��@P���e�@P�'\-s%@P�9�@P��N̺w@P�}��@Pl`�4pc@PSSoHY@P��i{3j@P��"p�[@P��*{@Q���؈@Q�(�-a@Q����*p@R9�����@R&���k@R�1u�@Rp�'~�Q@Rↈ�m@R��[<Ĝ@R�lMIwK@R�C���@RSKg@S>\��#@T?�w@T��1��@Ur^/?�S@UN��ӫ�@S��e@OYN)���@J�H��@K i->�p@Kk��K�@L<N�i7�@Q��s��@T���9��@Uu4@ �@U�5�V��@V7��?�t@V:*�\Կ@U����rC@U3b�y@S��
d��@S�Ui��5@S�x�w�@S^	A�J�@Sƒ�N8@T̳��H%@UԪFmd@V'�y�@Vm��*�@V\':�q@VTʔ��@V5�y=[�@V��l���@ViZK�p�@V ��B@U��^$��@T��Ѩ�,@S� S�v�@R��囌!@S`�͑@R�*�΋@Q]�&Ω@Qˤ
�@O�ɘ�G�@O8m�� @P�&�%��@Q=�;g�@QE+Ȥ&�@P����;@P�%�4@Ps��W�@PZE��G@P�[4E�@QBYD��@Q����@QS%�)�@Qs�G�?9@Q���/�@Q`/���@Q�����3@Q���"�@Q�i���w@R6 f�V�@R;q}��@Qy��/^�@P��zg,@Q'N��@Q_��@QQ9�y�(@Q���La@QK���@P����'|@P���o@P��,�=�@P䪒�}7@P�K�N�@Q����@Q�eݹ�@Q���	r�@R�dŬ@RM��5�@R8�#fe@Qӏ^,B�@Q��{�{@Q�V�go@Qw�)�C@Qq@��d{@Q1A3S|@P�NVÃ�@P��4@P�tV�@O��%��@N��`&��@N�
L�3@L�ϗ�p�@N����}@Q%��ü'@Q9��%B@P*�rb�q@PI��d@PE���@P��V��}@R�;NKv@Q89��g@Q�`'@Qz��9�@P��1�\@O�9�T�@OqA�uI5@Pk��\n�@PJ�@�v�@Pq��o�@P{��]�M@QY�+,Y�@Q�?��@Q��d�@Q�AD�!@QD���@QMR��@P���LK�@Q�XE��@R	;�/��@R���"i�@RڦP�dK@SkN|�=3@SM|$P��@R�ݏ�J@S;��<Y@S�Uf�0�@Rz}���@Qu�ƪ��@Qzˁ�5@QH�iw^=@QCe[؛A@Q/K��0@Ql��ȫ(@Qrh0&�@Q$l�@P'���2�@PA����E@P9��~i�@P����@R7)�\@Q�`73@Q��H	�@Q10���@P�{�(�@O���Lc@N7�,7�@@M}p��@Lt]E�\@Jp�s��@I�!��6p@L��(���@P�p�ik@Pˮˇ�C@P�xu�X@Q��?h@QEE��i@QA����@Qb�[��@Qv�?�wI@Qv!sT@Q���&�@Q���B�@Q��7�&o@R%��sv�@R<�����@Q�B��~@Qo�v��@Q��Yf�G@QD��@Q�7'�ƿ@Q�m�w�@Q}(� )K@Q�zF
�@R �G� @Q�ě3�@RY��z�@R�O���(@R=�N^�s@R*�5{��@S�6�P?@T�~3���@UC�����@S%~Jo��@O�I��l@L�X@AEU@Jv��@KxHu��}@K���B��@G�R4�@IR1H(m5@O���-D@Qr�]ml�@S�ި^�@Ux��X g@V�I��@V����@U��k��3@TC�`��@T�P��NV@T�$x%��@T�c�M�@Tdm�Cq@U7{F(�@Vh��Ysm@V݁m3��@W ����A@W[7c�<@W0c��9@V���H�@WbM�1��@W*[G]�p@V�as��@Vx����@V]����@U��
��E@S�Wg��@R�Gk�1@RΌ5���@SY�C��u@RY��o�@R��K�@R
+��0@R�ł�@RO6Z�@RY���%@R/��@R?e�M��@Rh|����@R��'�^@R�o���G@Rs5���)@Q�}���@Rc�E�@RWY"�58@R�1E��@R�s���@R������@R���Xk{@R�f����@Rp ���@RxI f*@R��9��X@R������@Q�Ak��@Q�ʸyQ@QX+��-@Q$��\S�@Q����]@Q?:�$�@Qa���B�@Q�J
�F�@Q~���ie@P���30@Q4/� �@Q�6���C@RR0����@R�m���@R�2�M�[@R�a�>W@R%�D��@Q�瑳�@P�E�P1@P��:�2@P���'�@P��^�T�@P��9ɾ�@P~��@P6�X�@P1.	N�@O�o����@N�t���@M�!dR	@P!Sq��@Q��8�1@Q9^a�4@P3_�j�(@O��1�@N�^��:�@P��	NV@Q��@Q'Ry��@P���@O���〱@P\9}}�@P7�$�8@O���:�)@Phd��@O�e$��@P�1�@P C��W@O]����@P�#�@QT�:��@Q:h���@QL�k��@QXb�I��@Q�h$��@R?ӫ��y@RM?�E@Q��]��@R;�ƙ@R��#[��@Rʫ�T�<@S;EB��p@Sy˶�
�@S!��'�@Q��I�	@P�.JA`@P����@Q0�t��@Q�<�x��@Rt0a�H�@R\�`o�@R\z�c�@R 盧��@Q�����@P�8����@PfOX4=�@P-�X\�U@P�ʋ��@Q�p]@QU�\1خ@O�C)��@N�[[�Au@N:왧��@M�\υ	�@M�GP@��@O!�XXal@PL��(p�@P�K��v/@P��V�5@Qd�H�lJ@Pᙢ�N�@Q�H��@QfH�t@Q)� �2@Q�rcXE]@Q�<�%V�@QAm���@QQk3��@Q�Cs�{L@Qooߣ&+@Q����@R���]��@R�N-&�@R,�� ��@RK�z�'�@RN�ݏC@Q���w��@P¥[��@Q�}�NE@QkNRղ�@Q)��.�@R
�� �k@R���$ә@S*C/�K@S%�l&:�@S!���.@S���T��@T�T��\@UCg�Hn�@T�L�.�@R���e�@O��@���@K}FC�@I����W@I��9ƶ�@I�8�/��@H*�H՜�@Fݍ3�c@F�f��ؘ@F��K&z=@F�И�P�@N�p0n�@@Qt��h�@SB �x@Tփ$!�@V��@V}k�@V�I��[/@V�a�&@V܊�{�I@W��M@WRS�T�@Wrf�X Y@W�6��@W���ir5@W����T@Wur���@W�#����@W�z��+@W��M�@W^J�R��@W*���߻@VؽZ"�I@Vz�xs�@U��M��@U��j��@T2ړ�[@S��kI�@S��;��@S-��/�@S��}��?@S[��H.�@S��w�ٌ@T3�Nnl@T�5��0�@T��R^�@T۟�@T�D{@Tb�GYl[@TrP?��@T��g���@T[_"�u�@Thٝ��@T7J<��@SԦL��@S���;�E@SC�i��@S���@Sr\s�=@S$!���g@Ry�N@R�����@R̦5��<@RtL-TJ�@RRS[��@R����@R�!(�@R�5$`�@R'��\$@R�q��@Q�*��=@RR e_u@Rc�43{@S�hp��@Sp��e�@R뒱.G�@R�EH�T;@R���y�_@R7�OIE�@Q��p�Y�@R�C�7@R,eF�W@R'۸z�9@Q�v�p/\@Q!��Q@Pӭ��T{@PƧ ���@P�f�[E�@PR�۠��@O��%��P@O���.��@Q|����@RW}m&�k@Q��oJ�g@Q
-��]@Q����@QY�v��@Q�x�[��@Q�K��(u@Q~
h
^q@Q$�ޟ�@Q$�s�{)@Q�ٛ+$~@Q�w���U@Q�7��!5@Q��/�_�@Q���@R�/�U@Q�(�cq@RZm�@RK�tK�@Q�e�@Qdxۉ@R4ə���@R�۝�*@R��P�!@S$7��}-@S!��m�#@Suq��%w@S姴�'@T����@TA_0�j@T��0�PM@T�t��_�@T/�ǚ�1@S9܂��@R|���@Rr!u��@R��|��A@R���̋@Rv��$�@Rj��+q�@R�aJ@R.G�w��@RPlʬ8�@R�>qn�@R�0E�D@Rڣ��@S���!�@R;���Ni@Q���O��@Q�����@P��>�CS@P����@Q�:�}�@Q��:�=�@Q��	�\�@R	���@Q��	���@QޞI��@Q�@c�@Rw�{��@R������@R��)�Dm@R���+@R����@Q��<�S@Q%�Nd�@Qv�%�K@R+�&�Ջ@Q�&����@Q�3��p�@P�p5n@�@QW� ��A@Q��g�4�@Q�h��lu@QC�g-E@Q��A�@Q[�īw�@Q��o�@RsFͥ@R���c�P@S%��S��@S"��0@SؙB��@TMX�t�V@Taө6��@T��o)xe@U8��t�8@T6�����@Q`A#AO@P��r��@Jc홗��@G�Ր�5@H��3H�@H��˔x@I]FIu�@ISp� m @IY�B��@G��2��k@E��$ %@E��9>Y�@G�~sqp@KƆ���0@M����@P`�k�@S3�h�=@Uv�t��x@V�mf���@V��Κ�?@WK9���@W~
���@W��.q�C@W�U���@W�`o���@W睃M�u@W�̲�@@X4�"�@X	�}9�@W�ɽ2�@Wܮ�u��@W��Gj�@W�����@W�XH@Wi���@WBv�N@W����#@V�q���@Vz�C� @VOaxa^�@VK���s1@VS�7¡�@V�U�=�@V�R�2}@V�n"�k@V�O�է�@V�E��c�@V�a݂3@V���|�=@V�Z>Z�0@V];ѿx@V'Vv>@I@U��ٚ�@T����@@TL�oۿS@R�5M"@SH�JT@R�၂Ո@R��'%@R���B�@S�3M�i@S9�3��@T_Y3�o@S�k)o��@S�Yl�@Sp�U�@Sk�g�5@SP�l��F@S4ơ�@S�(e�@S���\��@S^�d@S#<?���@R����A�@R�&�wQ@R�@��@Ru�\Vte@R!P���@R<�;�@R���Q�@R�Z���@S ;���Q@R�����@R�(�<��@R��!@RQ �H��@RD�~��+@RF����a@RNq���@Rߎѽ�_@R�)'�"@S�@���@S?��4�@R�O��dA@Rn�z[J�@RK�Tr��@R�XX�@R;���Y@R�v�r{)@R�=�/G@R�G����@S1�J%|@Sx4�"�S@S���@S�>>���@S� 2��@S��7���@S�EA`�T@S��e+�@S��x¥@S�cp �@S�]`@Q�@Sֱ���x@S� �BU1@S���{s@S�Gc��@S5`B�P@SK��
�@S���Z'�@Th&���k@TrI�#��@Tg`ٽ��@T��U;�@T���?(_@T��L=�@T�H�V��@T������@T<��H�.@TZ7d��@T�W?�@S�?uTB�@S���: �@S���K�@Sz��(z*@S����G@S��U�̔@SmzF�oS@SE�^�a@S2ӱ�M@S2�j��@S7M�D!@S1*og�@S=�F�@SD��V�@R�gV���@R�;��V@R��z:�@R�u;X @R���m�d@S^��C-a@SO|[�V@SC�*P�@S9�+,2@S;$���@SW��޽@Ri�ϔ@Q󀲃1�@Rms���o@R�=���p@R�����@ROH�^�@QT��jDs@Q�8���@Q�!�(�%@Q��J�Q@Q�pe�;W@Q��*��A@Q��%�AI@RY}��jP@R�Սp��@St:H���@S��l��@TEE�P~�@TȜ�qkQ@T�o2�@T��{�(�@T���o��@T�V��@T�%f�S	@RUp*���@O.]+�w@K�����@HW�]L�@H�S�a�@Iߞ��d%@J�9��o�@K���O³@L��%��\@L��0tz�@J|��y9�@F�F���@D�db�̥@EHz�^+@J�c�Y@N�S
��@O�3�@Pg0�%��@S����@U$� O�@VɞvR@V���d�@Wo��a@WY�TA�@Wty��&�@W�Ȗ��1@W���!@W��<@a'@W�� �@Wه�[@�@Wۿf���@W�&��5T@W�ߝR�@W��䡷�@W��ݻ�@W�h�&�I@W�E���@W\B��֠@W(Lÿ�3@W0�ľ6l@WKM���@W_1���@Wg�-^�@Wt�+���@W{ێH�@W{�M]�X@Wl{<�@WFa�b}�@W-r��с@W#l��e�@W$�ԙ��@W���@W����d@V�P�>vw@VCO��X@Un f�K@TN��O�@SL�D�S@S�V6	�@S��qy@Ss����@Sd�F�I@S�z��1�@TJi��@T��v�Cc@Ur��/@UD�ۇx�@U=?;��G@U!�R'�q@U/+R�m�@T��] @Td�Tn1@TT�˿�@TK����X@T3���@S���/PU@T�6��@S�0�y��@S��u�=-@Sj^S�@Sp��Ƚ�@S_Z�ə@SoC.@S�fX@SM>���@SL�3	��@S�T>.��@S��S&w�@S��ed@S�M/�@T.�9b.�@T��?� @T�禿��@T����@TRaV�@T�SpOx@S�X�Ω@S��zk~�@S�X��q�@T6��kR�@T"BJs�0@Td^�o@T#`�/�@TIp�PZ@TV.����@TP;�u�@T?<�k�@T/��Nz@T3�/@S�
�f#�@S�9�'@Sқ���@S���ڌ@S�fs��Q@S��ۮ@S�Ƅ�`�@S�q�,�@S�^ ��#@S�m� �@T�����@T'!�ĹA@Ti��g5@T,7ڌ�@T$�Mo�@T*� k�@T(5�@�l@T/�3�3@T5�م�@T2h���o@TG�W�5@S���q�@S�݊ O@S�O���9@Si���b@SI D��@S:t��X�@SZ�]��@R�g�@R���@Rߞ�'��@R�j=*=@R�?��4@Ru %�>@R{�KR��@R�6\x�@R� 5��@R�
��`@S2(L*�v@S6�w���@S�x���@R���K��@RHy�}�@RA�0���@R���F�@R<�|��[@RiI�p�{@R#�u	�@R���L�@R�k��M@R��ȗ�$@R�I�c�!@R����=@R�m��E@R��z'+'@R͛.�i�@R��q�d@R��Z|@R�v��k@S4  �@S��0��@TdՂ5.b@T�V��z�@T��q��@T� ��׬@T�j��X�@T�����z@T����i�@T}���I�@T�.���@R���h_@L�z��1]@F���|5@F�<
h�W@G��Q�vT@H�0gG@J"]�"��@Kv� ��@LS�]2�@LY^�3(@L@"�s�@Lthu�$@J�e[��@G��iϛ+@E�g�楰@GgV����@I�kZ'�@K7�&5@N!Z�'��@PQIY��@Rn��ф@S��<�a@U ���@VF�XG�@V���c�@W�*�RM@W[%\al�@W����;@W��F.5@W|7,���@W��S)J�@W��B�%@W���p��@W�}dt�@Wʷe8�@W���U�p@W�/u�c@V�!�i%�@V#?��c@V!q��@V2��e�y@VSj7W@V���=�s@W'��S;;@Wy��
�@W����6�@W�ܓ,�@W�C�Z@W�@jW�@W�n]IS�@W�U���@W��X0��@W|erK@WV�g�`�@W-[��E@V�����@V���/@V8s�?�@Uh�}7&@T�Z.+�g@T4�p�:�@TCʢ��@T��B>�@T{V�I@U���L�%@VE��Y@V=q�9�h@V5�y,��@V(�*]��@V"�`��m@V	i�1H@U�F!��@U�*;y�@U@�Fu@U���@T�}^��@T�4Qq@T�ZЬ�@T�iڲ��@T�N�@T�	d��@T�	(Y�@Tf�3w;@T*¬^�@T?X{�@T�C��@@U�p�3�@U���@U$"�O^A@UD"��C@U\�L&h�@Uw��U�@U�yG\�@U��9�@U�m��%@U�g�r�@U���h�h@Uh����@U}{����@U��|��x@Uo����c@Uk|�WЄ@U*��y��@U��$�@U/Oh @T��ar�@T��sw@TM�K��@T*[��V/@T]U�@S��0���@S�t��`^@S�R^y�@S�Jo�{�@S���A,@S�Qg�H�@Sۉ>(�3@S�/�B��@Sٻ�ӝ-@S���>_�@T���X@T���)@T��"R@T��B��@T7Ly	@T����@T#y��Qm@T ��/��@T�C�sG@T	B�z-@S�1��k@S�!��1@S���5B	@S��ue�B@S~a4��@Sf �G�@SBL���@S!��c@S�Ď�@R��MI@R�p��:�@R��)A��@R��ͯ.A@R���j(�@R�}9u7�@R����M�@R·�>Ȏ@S4�J���@SM��-�>@Sj��ˀ�@S1ٔɞ!@S.(Z��@SJ7�(�R@R͎_GY�@S6 �Ŋ@Suv�k@R���ؿ@R�5|�!k@R��
�It@R�
�֤3@Rθ��@R�1H+�@Q��2W�4@R���9@@R(��ױN@Q�J	�:�@QC��	�@P��a�o@P�>F�@Q�U�u@R4]���@S	 ���@Sf���tP@Sz�nV��@R��]�ct@QH7�M��@PM��L�
@P��h@O}�&�7s@M��2�c�@I����$@F�q��g�@Ga�:��p@Hg��g�@H��l�j�@I�����@J��A/@Jm��ҕ@I�e�cm@Hò�O�-@G�a�A�@G4�yJfH@FlO#1@E�
�մ8@D����@B��?�>�@C䑊���@JD$��k�@K�[�ОC@L(����@M�F�u�@Qf��@S���7@TQ��+@UA6�J��@U�crd��@V��2��h@WF���@@WYK���}@V�Q�|�@W(<en��@WH̠��H@WE��y@W�4u9�@V�'%Y@U�����X@T�p�o@T�7�`��@Sl�*ku�@S����@TVq�Yu@T{�RPɖ@UK��:�q@U��&'1@Vsi�^x@V�9YG��@V��@W����@W@Z�K�+@Wj5ɋ�@W}�+f�@W�b.���@Wzպ��@W`�^�@WNjT	�@W5��Jׇ@W!ء!��@Wi.��U@V�}��#�@V�we�{@V�����O@V��֣��@V�M�h�[@V����V�@V��|f��@V�S��s%@WᎽ��@V�U�!@V�N�4.�@VU�(��@V%�[�#@U�ۣ��U@U��/i�@U�����h@U[˙���@U
�@T���U	@Tez�HM@T>pK�zd@TJ�(���@Tk7�Q�@T�S�e�@Ub\0c�@U�ү���@U���7@U��&g��@U��~�@Uo�ޢM@Ug�\��_@Ue�8��@Ua�/���@U`<��އ@Uh��r��@U�H��'@U�欎�)@U�Ya�r@U��*$��@U�*�z��@Uw�jK�@U]h0t/4@UE�@I'�@U,�Ѿ�<@U�����@TڲK[�g@T��$��_@Tp؜'�@TG2���=@T"]]#7@S��.���@S��]�#@S⍄dv@S�_�/�@S�U��@S����t�@S��P�@S�?d��@Sɟ5;1@S��=�@S����+@S�ciue@Tș��"@T��Tv:@S��Y0��@S����@Sϙjb)�@S�q�׹�@S��A� @S�Y��N�@S��� 9@Sm�_(,@SUW�$�@SI���N�@S=7rZ�@S,�Sٴ@S!}��7@S��b@R�r¤�<@R��\5�@Rާ®y�@R�Đ)@R��;@iX@R�N�Pt@R�	�yI@R�?I�l�@R���ً�@R�����@R�K�8��@R�@�C�d@R�����@R�z��@Rȷ�:N[@R�{i#��@R�8k��@S$��3��@R�0���@R)$YW�l@RD�Q�H�@RfU�	�@R<w�4�@Q�f�zi�@Q�w�)�@Q��H@Q|CT��@P�Ӭk@P�&����@Q�A�q�@QE��P�m@Q���;�@Q~Î�h@N6���Z@NE���``@P_q]//@QhB���@P��xm�@N _���@L�L�m@I��ʆ��@Fig���-@E��a@F�Sg�~@G����@G,zD��D@G-ߍ�@GQP���@G|�zÀ@G���Ŧ�@G��L���@Go6$�Ӑ@F�?4�%@E��P��@D�S�_+�@C��S%@B�hY�@B*��1�F@A�q9F}�@AD�n^��@AC��Z@C�)��,@HM% ��0@J[gJ��=@L�w+#y@P���x@Q��j�e@R�j	b�@S� Nq@T�-?m�_@T��b�/@U�.�cm@V}2����@Tu9{�wE@U cDNf�@U���L��@V�����@V4-�l@U�*�א�@T�A˃@T��S@�@T$��l�.@T%���S@TF��@T\9�{@SH��j��@S�Yc��1@UT[߽,�@V	��C?;@UێL$E`@V"<�H'@Vl����@V�N��@V���bx@VםUk��@V�&��@V�P*�c�@V/f(��@U䧒<RA@V;�3�@VƯ���@U���|h@U�&��@Uz��Bq@U�n΀�@U���j�@U�g[�d�@V f�U�@VL��`w�@V�� @V�R��;m@V>_F8�@U�Ӄ��@U���M�@U�,i6�P@U����@U�T��T@U�:�q0�@U%�4]x@T�d��@S���xй@Sy�Z�o�@T"�L��@Tn��'@T��a���@T�#֐�@T�P�@�@T����@T�Aq$@T�3��Ԝ@T�!�S@T�zXg @T�.�0�@T�5����@T�*��{@T��G�7@U
rh<�1@U��^�@U(���/�@U*z?;kr@U)W>x@T���;ޗ@T�ܩ��@T�<0�@T��B�@T���קA@Te,�ٶ�@TI�w��5@T.�u�@TB~ )}@S�;�$��@S�n�w@S��μ'@SŸ�Ι;@S��z��@S�.jP�@S�*���@Sk����	@Smr�"e@SqG�9	5@S{U�I@S�,�Y�0@S�o,6��@S�<��[�@S����&�@S�J�:��@S��56]@S��r�N@S}1�p9�@Sr�t�H@Sg0��@S^���:�@SE����D@S&�te@S�AP+@R�S3O�#@R�<�s�f@R��ӯ��@R��@<9�@R�9�Nx @R� �V�1@R��d+�@R�q�SY@R�j�tW9@R��Ar��@R��&>��@R|�{��3@Rv��ã`@Rw޴Z7@Ru��V�/@Rp�Cp�@Re
�dn@RP�	݄@RH�����@RD���%�@R9M�:�@R/ֆȁ@R*��`3@R��s@Q���tyg@Qܵc�]	@Qm�_@Q�j���@QJ@#`�@P��%��@PNm�`Lj@PA�K�	@O�w*X�@Phi/�@O�m�:�@P.$~�.s@PS4� �@Q?@�m@Pp?o�]@O��jx�)@N��9�V�@M8L�(@N�vN��O@N@{wKz8@MJ++�8@M{����5@K��*��g@JF����@H�T5?{+@D�C�8@D����3@E0�1@E=v8�&6@E{����@E��y�g@Fz@FQOV���@FEВ�h�@E@X@c�M@C��##@CM>)A@B��+��@Bʝ��j@Ad�(���@B?/�k(�@D��^>��@H"��s�p@J��q�G@M�Dx�	�@L�`��QM@PI=`���@Q~���L�@S�_6�@T!� }�@T������@Tu��=@T:�6}V:@T6���P�@S]H<k��@S�j��ce@S�̵/'@S�Z�o@T�D�H@T6-�$�@TX�sn3@T~����@T���~�H@T��M��@T�Q�M�/@Tï��)U@T���@T�䷁�d@T��G1@U:'E��@U��;K@U0�(�bu@UN�#0qJ@Ue�(��@U�s�$�@U�#,³@U�Q�`@U�o:��@U� -N�@U���4K@U��;@U��ζ1@U���Oݥ@Uy�"_@UrܷoХ@Ui�{H@U^��{"x@Un[��|�@Uc�M��@Ul��g@Uy�(	D@U�It��@U|��?�@U`�=`c�@UNۅ�L�@UB(K$�/@UFI�@UU��/qo@Uo����k@UXr��:�@UO��3ϊ@UL��b�@UE?��c@U �N�ؽ@T�����m@T�j]��@T���r�$@T���<1�@T�7�i��@T�ו̎4@T�;x��J@T�N��|�@T�h��"@T��U2cO@T��⪃@T��Y:�-@T���Ad@T�Y'`�@T����@T���ON�@T�v-6�a@T{ܸ�@Tja[�@T^�
,��@TL��&2%@T;B���@T)du�9@T��ʷ=@Tx�R8@TW�%\@T�I��@S����@S�)T��@S��uB�@Sεq���@S�� ��c@S���u@S�}�3�!@S�˵�D�@S��8��@S�7z�ϫ@S�2�
�U@SyK'��@Sj̎e�@Sf����@Sg����A@SoRF`vA@Sdt>�
/@SU�$ �@SLD�O,@SDۜ+��@S9'��@S+zw���@S���k+@S��Q�@R�G<Y��@R�~1M�@R����@R�u�nx@R��*c@RӣHn�@R�w|�'�@R�,L� �@R��-��@R�6 <T�@R��hR�@R�eo�@R�V��@R��C{@R|��*�y@Rt�J[]@Rm	if�g@ReB�% 7@RT�yM��@RC���8c@R60O8@R+e8U(�@R���u@Q�o�J@Q�c�%�m@Q�-Ҕ@Q���r��@Q��{#j�@Q{���ie@Qd��s��@QK�wU,{@QDw�&��@QM�U�{@Q�UH@P���c8P@P���ˏ�@P��U�p�@P�,���@P<=8���@P*�v9�l@Oê�$-@O��,Wec@N�as.�@Nݒ���@O.Y�U�C@N��v׎M@M�)f�8@N֗`N5@Nw�V�l@M�/��pI@MCo௪@M�R��@N�ˤ�c@MG�|+@M߾:[�@L������@MA>�W]@J5� Z�@Iۼ?��@I�/yf�@G�f����@J����E�@Lxr��̃@K�$��\�@K�]�xcx@L5ζ5wX@M�:h���@M�^����@O�;��@L��S�0�@K��N~d@K�jD��0@M��v}��@PZhćE@R5
^Z��@R���
�@S�᩿�@S#Xd
�@S?%�g�@Ss�T��@S�v���@S������@S�ANWZ=@S��#e�	@T�^�Vk@T)�ϥ@TG-y�@Th�1Zo#@T�*��+@T�K%#�@T��x�:F@T����'�@T���}��@T�;���<@T�U���~@Tˤ��0�@TԸMmD@T��Sh�@T�&N�~@T��j��$@U�1�D-@U@caۇ@U���M@UCP�m@U{��r7@U"7F��^@U$��.��@U$S�ǖU@U%ɭ� �@U��^�@U���Oy@UW�n�=@U�U8�)@U2��9@T��_���@T�����@T鹖�z�@T�Ь�k�@T�>�Q�E@T�*ϝ�@T��N��@T�l�i��@T�e�nF7@T��ڤ��@U*�ܒ@U��~>�@T��(��}@T��6h�@T�9S�Q@T��+Ƀ@T�.^`[@T�,T�Y@T��� K@T�<ؾU�@T�,���T@T����7@T�/8��@T��%�9@T�#��@T������@T�%�@T��voj�@T��i�@T�I��@Ty���q@Tn<�XJ!@Tk%e׉�@Tg\R@�@Th�'�>@Tg�r�r@Te��h�]@T[@k�M@TT�=��@TP����P@TO�ۻ��@TL3)g�@TK@[�S@TJ/�Yc@TEyz��@T<�t�T�@T2�+��@T&��D��@T�`��@T�x��e@T��f1@T:^�/@S��u��@S��s�@S���8PT@S�~F�C�@S�L���@S���f�@S�e�dp�@S�H��C@S�l��Lg@S�/Tv�9@S���}@S����@S��(G�@S��Q��c@S�����m@S��;���@S�$8f@S�LTb�9@StAďE@SjF4h(m@S\��#�@SX���_@SSL�'@SC��g��@S/�X�G@S����@S��,ة@S	��4��@S �N�q�@R�b�.*g@R��#=�=@R��l�@R阭�h@R��Rv6@R̠�gP@R����G#@R���HI�@R�����@R��C��@R�ܓ�{i@RvW;w+l@Rj����@R[8��i�@RM�2���@R9��(R@R �V,��@R��dXK@Q�-}�Hu@Q͈J��@Q��"џ@Q�z~.@Q\�`�LV@Q0�6�@Q6�+A@P�|x�˫@P�\�o��@P����z�@Pv�.՗$@PZ
�U�@P�8a,�@O����XC@O�Twj��@O:��|W[@N�5�\��@N��.e�}@N�+X�@Ni����@N~\�;@N�ΰ@N����0 @O$ZW��@O�V�r��@O���d�@P
�P��@P�L
CE@Pۍ9@P-R�q�@Ph�{��@P�3Mw@P���!@Q��,�1@P�(UM;@PЕ���@P�����@Q6A�&�%@Q��{�w@Q���>=�@R/�r���@R~�Ӷ�!@R�.���o@R�I>9��@S%AX=�Y@SO�H
�@S�d�*��@S����3@Te=g�z@T%����@T74SQ?@THJ��-@TV��ұ@Thtswa@Tx�B���@T�7�M�&@T�G���h@T�W�Z�@T��Ju�m@T�f���U@T����@Tԏ��s@T�ȫ�=�@T�} �Y�@T�'��@T�u�Q�#@T��g�@UKBu�u@U����	@U� ��@U"����y@U+E<`e@U1��a�(@U5H���@U7��" @U7�2k�@U3�)r|Y@U0E��@U/�J�$�@U)��#@U#�@�K/@U���!M@U�RKl�@U'�0�@@U~6��7@Ug��}�@U��M�@U����`@U!�w7M@U"(^z�@U#��R�@U's7E�@U%�S]�@U}�� �@U'��@U|���@U̬k@Us8�~4@U�=/]�@U`tV��@U�K�	�@U �*���@T�r�� t@T�$ �D�@T�m�˸�@T�n!SN<@T�\����@T��z�@T�b��w
@T���vڦ@Tџ��d�@TϦP<^(@Tπn�
�@T�˛Z(�@T�*O��@T�>")u5@Tќ��0�@TґċL@T�V|n��@T�x��t@T���sLA@T�xt? @T��l�n@T�ݴ�c@T����T9@T�3�@�@T�Bv�@T��9@T��l�@T�	�v@T���%�[@T�Q�v��@T�F��ǁ@T�4�� @T�0�(}=@Tn��y�@Tz�  Q�@Tw��Hd@Tu�B��)@Tn�`Y�@Tg�:��q@TcV���l@TZ#�O@TQ�i�/@TI��yW@T?�p��@T7�}O�@T7���|[@T6��؀�@T1jV}��@T.�����@T,X��>�@T+��X��@T%�{��<@T�JUY/@T�g,Խ@T�)�=U@T}"�|(@T�	�,�@Td��@S�'����@S�:+�@S�����@Sҙ㭣@S�I>���@S������@S�mY�yS@S���@S�R�E�@S����f�@Sy͕�pj@Sl�pO)[@SaYC֮m@SX�!��@SOJ�^B@SA�P@S8���-@S.W�
��@S!�?/�@S����?@S����=@R��['�3@R�떑�C@R��;�@R�݀�m@R�h�6:�@R�y�B��@R��>�@R��dM�@Ru�r�@Ri���@R`�DVV @RZ�s?�S@RU,y�3�@RQ�f���@RJ��m�m@RD� �@R@��T�@R;צ �@R=_���G@R;>��k�@R?Ҋ���@RG_	܄@RNo)�o�@RWی��U@RfUݧ�@Rt���W�@R��6O@R�m�;v@R�V��ɩ@R��&I �@R�$s�E�@R�ΰ\|@S���@S�K�|+@S.��@SGhD�s�@SV�t\��@SdbN�Xq@So]��@S|c<�+�@S��TC�@@S��%l@S���k
@S�ӡAD�@S�43�4@TxvY��@T����K9@T����W@T��OaH@T�i�!�@T���ƒ}@T�Y�H�@T����@T�5'��@T�	���@T���%1y@T�B�#=@T�8%�g!@T��M 7@T����ۜ@U�d��@U('��c@U��A�I@U#�f�@U)Qlibb@U.�}S�m@U4�V���@U:Ǿ9+@UAl�xse@UB��GB	@UJA�(��@UN��e@UR�<3@UVM�▘@UZWϬQ�@UU�f�i@U[x錧@UX�{�a�@UX}2��I@UU�,�@UT!ՖG@USL���@UR@�&-@UN%
��Y@UO�#�^@UJd��@UJ�]��s@UG�9�@UB� &<g@UA�_=�L@U=<��@@U>IG0��@U=����@U8�㢔�@U5����@U60v@�@U3BjD�@U2���P@U1�-��@U.�Y@U,���2M@U)�
)!@U$L
ry(@U!�g�z�@UI��;@U��b�5@Uń�@U
�5�;@U+�`@U ��r�@T�`��,@T��^��@U ]��X@T����-@T���'�@T��\�@T�J(g�@T���N�U@T�+5�W@T�n�� @T����@T�����o@T�p��Մ@T��Dcy5@T�&^�ƅ@T�^ֲ�@T����V@T�'V@�@T�rX�5@T�b�Z�Q@T��ɩX@T��.��@T�?�C�@T�o�V^@T�1��@T��/��@T�hfC�@T��E���@Tؑ��TC@T��Y�@T�o9���@T��#2�O@T�&:�8@T�mw�a@TƎ�C�@T�i|_�;@T��j�@T�sq4�3@T��b��@T��(�1@T���_+{@T�nP�4@T���%�@T�D�M<�@T����*@T�
��8�@T��׮	�@T�l��@T��4��s@T�\��E@T����@T���k�S@T��	�@T�*
��@T��#ǗE@Tz��`-@Tsw� �<@Tp� ��@TjB]6@Też�r�@T`*�b=@TY\ʖT�@TTμ�S�@TL,�#�@TG3R��@TCz�_��@TB���?�@T<�a|��@T9N��0@T7/�+~#@T1PG?D@T(Q��h]@T ���z@T��v��@T�5ō�@Tc���@TIS�
�@T��D/�@Te��@S�ü�ϴ@S���@S��n�8|@S�逊i@S��B�`�@S�MZ�~�@S�J@�@S��j[�-@S���@S�9�A�l@S�=nz\�@S�c&���@S��-@S���(@T��q@T�a��@T��D��@T�3��C@T�@T��!I@T$�H�U�@T.�)�@T1���F@T8��]�@TAXG/,@TEh��A@TJ�&�E+@TK��S�@TO�~��@TP�� �@TQ��C�G@T[%,y�@T^^� �@Ta�٢(�@Tle�A�u@TrT�(�@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy@T�H�ߡy