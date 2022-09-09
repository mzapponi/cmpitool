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
add_offset                   NCO       `netCDF Operators version 4.9.1 (Homepage = http://nco.sf.net, Code = http://github.com/nco/nco)    history      qFri Sep  9 15:27:24 2022: ncpdq -a lat,lon clt_MODIS_surface_MAM.nc mam
Fri Sep 09 14:28:03 2022: cdo timmean clt_MODIS_surface_MAM.nc mam
Fri Sep 02 14:51:40 2022: cdo splitseas Modis_Cloud_Mask_Fraction_ymonmean_cmor.nc Modis_Cloud_Mask_Fraction_
Fri Sep 02 14:37:47 2022: cdo mulc,100 -chname,Mean,clt Modis_Cloud_Mask_Fraction_ymonmean_r.nc Modis_Cloud_Mask_Fraction_ymonmean_cmor.nc
Fri Sep 02 14:24:28 2022: cdo remapbil,r180x91 Modis_Cloud_Mask_Fraction_ymonmean.nc Modis_Cloud_Mask_Fraction_ymonmean_r.nc
Fri Sep 02 14:21:08 2022: cdo ymonmean Modis_Cloud_Mask_Fraction_daily.nc Modis_Cloud_Mask_Fraction_ymonmean.nc       CDO       @Climate Data Operators version 1.9.9 (https://mpimet.mpg.de/cdo)         time                standard_name         time   bounds        	time_bnds      units         days since 2002-7-4 00:00:00   calendar      proleptic_gregorian    axis      T          ʀ   	time_bnds                            ʈ   lon                standard_name         	longitude      	long_name         	longitude      units         degrees_east   axis      X        � �   lat                standard_name         latitude   	long_name         latitude   units         degrees_north      axis      Y        � Ǩ   clt                       units         none   
_FillValue        ��8        missing_value         ��8        cell_methods      
time: mean     title         Cloud_Mask_Fraction: Mean       �� ʘ        @       @      @      @       @$      @(      @,      @0      @2      @4      @6      @8      @:      @<      @>      @@      @A      @B      @C      @D      @E      @F      @G      @H      @I      @J      @K      @L      @M      @N      @O      @P      @P�     @Q      @Q�     @R      @R�     @S      @S�     @T      @T�     @U      @U�     @V      @V�     @W      @W�     @X      @X�     @Y      @Y�     @Z      @Z�     @[      @[�     @\      @\�     @]      @]�     @^      @^�     @_      @_�     @`      @`@     @`�     @`�     @a      @a@     @a�     @a�     @b      @b@     @b�     @b�     @c      @c@     @c�     @c�     @d      @d@     @d�     @d�     @e      @e@     @e�     @e�     @f      @f@     @f�     @f�     @g      @g@     @g�     @g�     @h      @h@     @h�     @h�     @i      @i@     @i�     @i�     @j      @j@     @j�     @j�     @k      @k@     @k�     @k�     @l      @l@     @l�     @l�     @m      @m@     @m�     @m�     @n      @n@     @n�     @n�     @o      @o@     @o�     @o�     @p      @p      @p@     @p`     @p�     @p�     @p�     @p�     @q      @q      @q@     @q`     @q�     @q�     @q�     @q�     @r      @r      @r@     @r`     @r�     @r�     @r�     @r�     @s      @s      @s@     @s`     @s�     @s�     @s�     @s�     @t      @t      @t@     @t`     @t�     @t�     @t�     @t�     @u      @u      @u@     @u`     @u�     @u�     @u�     @u�     @v      @v      @v@     @v`     �V�     �V      �U�     �U      �T�     �T      �S�     �S      �R�     �R      �Q�     �Q      �P�     �P      �O      �N      �M      �L      �K      �J      �I      �H      �G      �F      �E      �D      �C      �B      �A      �@      �>      �<      �:      �8      �6      �4      �2      �0      �,      �(      �$      �       �      �      �               @       @      @      @       @$      @(      @,      @0      @2      @4      @6      @8      @:      @<      @>      @@      @A      @B      @C      @D      @E      @F      @G      @H      @I      @J      @K      @L      @M      @N      @O      @P      @P�     @Q      @Q�     @R      @R�     @S      @S�     @T      @T�     @U      @U�     @V      @V�     @�H     @n      @�g     @'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@'�Z�|�@"���=�;@"@8b���@!���|2~@!��n��@!$E���@ �)���S@�X��d�@ �l]T&@!ȌHZ�@ �ڲu�@ �CQٌ@ ����GU@��G�T4@��eW�@ؐ!�ty@7�{��Q@����"@�~y��@��1��@�F�1e�@bXxf@.6�+�@T���@.��j&*@�}J9�@ft:^�]@ I���wA@ �X���@ ���Q=@ �l��@ �m��3F@!2
,�@!h&��@" ��Г@!��6�N%@!�U��@"�HV�@"��_�@"�Î(u@"�����@"�V�1�Q@"��z�@"����G@"�h���@"sHz��@"�W�@#Kq\�eA@#ݖ��W@#���v}@#67RL@#lOs��@#x��Mv@#Sh&0�@"���1��@"�W��h�@"7�zB��@"UOȫ��@"T�ӊ�f@"1T�ڌ�@"P���k@"&}l֚N@""��5��@"/�J�	@#�&wH@"�/�w�F@#ʱލ��@#�V+[��@#Ƿz�"@$�;����@$���:��@%��)O�@%V@��jD@%�O����@&�^ɦ�b@'c?�kIl@'��P�#@(_�P�J@(��(ٲ@)�/`Ȑ@)�?�Ƥ�@)w��$U�@)�N�m�@*�br��@*i�ToW�@*k8��@+�F^8�<@+f��;q�@-k�'�@-6I�`RO@.�iz�5@/^h�K��@0�1m�@0��3B�:@1!�}C?@1���s7�@2�I52�@@2�0���@3�j�HP�@3��GZw@5'
�K@4������@6R����@7!�o�@7B`%R@7�=㵀o@7g3�{X>@6�&�9̒@6%�e��@5֬R���@5t-��M@4��EvY�@5$����
@5*S�ҽ�@5��l@5�h��d�@6%�����@5�:�~6Z@6g���@5���N�@5���$w�@5t�?��@5�{��@5�-F�@5�1��@5�̲��@6<�J���@5�X���@6[\���t@6}р]��@6t��ua\@6J�Q�{@6R���@6S�$�@5��j��@5��N��@5d� �@5�>���@5:'ȯ@57���4�@5y�hF@4j��{i�@4� �sy�@4T�R�%@3D��Gg�@3>� D�@2�t�*�@2�`���=@1����)@1���^)@16�b��/@1<�U�H@0�&���@0�q��t�@0JoR
�T@0=�T29@/��k��@/���,�@.9�b9�b@-K���k}@,�XU�b�@+�4a�-A@+�"Pr�:@*�1;�"X@*����E�@*3�;�?�@(�o�1@(2ѦW�@&���N ^@&{�Cۯ@%w��Y��@$����R@%2j��~�@$��|o�z@%f���->@$��(�!�@$�U@��@$);Vy
@#�|��2�@#!��ڷ�@#'J���S@"�/�9_�@"u{a�@!ɑq�-@ Յ��/@ 1�Dw@�~]���@�BH)��@���@�?�f�@��p*�@�C�(��@6`q3CB@�����@Y��ˁ�@�+B�*�@�@���@wX�_��@�A��r@��Ɛ�@ ���@#ԯA��d@%sK;(@(֠'[M@*xѼ�`�@,M����H@-�ڋ&�@0DIN3��@0���B*@1��M<+�@2i�,]�@2�s��\w@3{gɑ	P@4�V�:+@4\�����@4��o��@5!�����@5`v�w��@5K!3B@5S��f@4�F�@9@4�|�$j@4�ڛ�|@4o.�Pi@4�!��@3�3��b_@34ѷ�@2�Trf�@2��8*�@2�fl��@1{���~@0���]@0+v���@/�-���@.F%]�ye@,Ϸ�[@+�I77��@)��SiM+@(�=	=�@'�u�@%�g��/�@%V �N@$����5N@#ѳ�G@#Q3`�@#'L|S@#��g+��@$ED���@#�x(�F@$`$$��@$v�ad~@%�֣@& n�b��@&�ܤ�)
@'Q���.�@(=��>�@(��U�H @)_�_�z@)����L@*k��e�@+&9ͅ\�@+�8)�@,����@.�f��Nx@1d1kh�k@22G�4n�@2��T�@3�N���T@2����F@3Vq]�}@4¾��s�@5E�H�@8�#�1G@:f�A	@9��J�g@:�Z��@;���\��@<67XC@=TBh@>tұ���@>�����v@@mH'�l�@B�lޣ�)@BK���*�@BA��}@A�2[&e�@A�����z@B�:]@B,��p@A��.�@A�ω��K@B.�h`�@Bk1�w@B��ݹ��@B�W�6>�@C*P���@B�1%B�g@B�I?��@B�?5C4\@B����e@C g>�m@B� �t@B~�|�f�@B'o�&�@AŬ�V�@A�B,}�e@Ac��hh@Azn�H@@��쓙@@��\��@@tg��z7@?�k��'�@?�y�R�	@?j�kH@?;�~�@?U�DS��@?\+H�D@>�/顾#@>5���@=�at;X�@=�a���@=h����@=*9C|ܪ@<t�Y�@;�4/�{&@;1�,�b@;<�	�@;��&�5@<��#���@=掎��@>Ҿ!L �@>�8���_@=tN=�2z@<�8\�Z-@;�̞R./@;Q2%���@:�-�m��@9��as/@8������@8�,�
@7�Ϟ^?�@7�:�_�@6�Ə�;�@5�~�q�@5R�����@4��!q{�@3���.@2�!�Qs@1�5C�@@0���>@0
�`D{s@/7dN���@.�*�@,�t0�O@+Ĳ���@)�Ed� $@(��i`�@&��r4~(@%���#@#���
q3@#B�k ��@)�h���v@'E��Z��@%s����@#��A�Z�@#C�p0�~@!��<ie@�	�?4F@P����@ ��Z�@ A����@ � ���U@!d�ف�Y@!ڝ��m(@"�
�Qo�@#-B���@#��I�)@$;Pp��@& �̨�]@'�2<ʗ�@,!��Vc@1x�5��@4Ϟ��8�@7�h�45H@;���U�@=��H��\@?ص�]
�@AM�T�;[@B���I}�@C�V�#@E f��G�@F%,X��@G/C8� Y@G����%@H:❢�@H�Zq�@H��"s�8@HD$&��@H�����@G��X��I@G��&��l@Gnn.}�@G1��0R@F�G Gv@FP�e�h@Ey �OA�@D�[�f@C�*D�87@B�S��c6@A��i�@q@@�_�X��@?g�IE��@<�[,3@:�˭ �|@8��$7~X@7O�s]@4�kF_6@2ŘI��i@1L�x#@0~�e�@.��O��@,6�#1pC@*S�CY�@)9s"���@'�WE�'�@&��%�M�@%}�-7j@%G��'��@$�̫ܶ3@$TRZ9i@$��`p@#f���@#\��@#��5RD?@$ZW2|��@%y�j#X@&�D��ز@(�(�>x�@*?E�x:@.w$����@1���@�@2A}�@52d�-H@7���-9#@7�4�{�$@;e�Cĉ@CJ�=E�@F���d@IXq�)#�@K�\	ogU@N��W��@P��,��i@Q���p�@Q�	�H�[@Q���^��@P�H��G�@P\�k]o@P, (�0�@O���Nd@L���߳X@I즮-��@K�H��4@H2W��B@DXr ��@Cȹ�y�@D/X&2g�@D`�A���@Dw�z-�@D�����@D�Wl��$@D�S�L�@D��*�iJ@Dçx���@D���{�@D�؟�q@D��q}ӎ@DM�}1�p@D23�_��@Du
��?l@D�����7@D��JՖ@D�mo�� @EJ9>�å@E�Sy��@Fc�����@F��p�I#@G.��5+@GNJ�@F��J�@F�s�=�@E�PG�@D��Ο!@C��쟻�@B9�@@��'��@@js<`�@?B0Ϧ�@>��K^�@=�$XQ�@=q¹X9�@<��æS@<](��v@<F�nm�@;_����@;+��L�@;c6j�Y@<1�\j)@;��F4@<�ӻ �@?l.w(��@@�(�?�@Eh��f�@@�v��@?����u�@?��8�6@?b�{�j@@$&���@@]��zu@?��[�pJ@?r���@>{�hZ@=�1	�F@=�'���(@=���ˍ�@<�,K�oH@<p��J �@<��a/��@<�T#��@:�gO��@9�{��T@8��hʮ�@7��Af,E@6_km-�N@5���}��@5�]���@4*��:^�@2�i��@1.�Uf^d@0
���m8@.}u���@,�֟�@3�Yl"��@2A���@/c�B���@+��0up�@)K����@'��n�@%վ���F@$^�v��@#�V�wܤ@#��j��@#����"@$u*��t@$ſ�h@%�Yt�q�@(w5��@+$����R@0V�\bԔ@3���~@6��E��h@:ƤI��@?��+ZP�@BOl����@DV�'� @FIL�@H���(��@J�:�@L���׆@N�[�
H<@O곂?�@P�C���@QC\fb�(@Q�/���@R7�e�PM@R��i��@R��>�Z@S����@R�Pn�e3@R���R�@R���.�`@R��F΋@Q�j�&�@Qv�58�@P���� @Pn�"ܫm@O�͟cD�@N�F"���@Ml]>�@L`-� T�@K6a!��@I�<�-�@H�^��@F�տ�@E�Ӭ��G@C�5]�_@AUa�b�&@>ˡ4��@;��r�$�@8��4*�@5����@3���w@13�o�ש@.��#�U@*�V?܋L@(��h)m@'~u��@$�]rɖt@#�?H��@#N�����@"�����$@!���g�5@!��%q�o@"S��b@"�{��:*@#�7�+�@%�3s�ز@)l�@�@,L���!H@0:ޓ��f@2#�̜@5ʕ��At@="�K��@HW~8���@O�٣���@R#�YH� @T/��V]f@T���,�@T�t��V�@U	*���@U��@U3����V@U3[�d�@UA��Q�@UP=׆��@T�	'���@T��LPp@UP�X��6@U����Dg@U�&�`k@T�>�X��@T����8@US���@T�mV��@S�����@M�E��@F��8B��@E�+Ŕ�@DG�!�0@DJ�ڙ*@Diϑ��@DI_�
�@C��(fr@C>����@B��,J�@BL�M�@B!4�'�@A�>(w��@BC�W��@Boݯ5:i@Bgu|�x@BŁ .HB@CM���Z@C�7ɗ��@D}��2ڠ@E>��)	@Eޡ,���@Fz��`�@G�p�@G4|�@G,/g���@F����V@E�&��c@DB�lRo@C^�V�&h@B3����n@A�3���@@+L���@>85� n�@= ���@<.��t��@;�2�Ϝ�@<@��TP�@<��[@=z��Z(@=cN�ޓ @>����@>���á@Aqws�A�@G�7;���@N6��v�,@Q�sN�g�@T����Y�@T��3�fc@RO�H��@P:���R�@N#�S�:@L�2��J@LT��+<.@O����o�@O�G��_�@F�~rP�@AB]O��@@MO1��@@w6��N@?�Ԛx@>�Go�eq@>eн(��@>��j�;[@?���kik@?�T���l@>�i2Rv@>�OIJ�x@>��v�_@=�G�lG�@<W��t��@:�6���@9~�u^=@8=�zGM~@6��s��@5���p|@4�s%~i@6� ����@7!8"\�@0�7WH�@*�ϛ��@)��PN�@0��q諩@6WF��q@3j��/�@7���@;R�rS @<uR^�8@:��5�Z�@@ g���@BHgܴ �@D�.�o��@G��&^(@Ktݷd3�@L;+�p@Oѡ����@O�{�7�#@P��j��@P"k�c�U@Q� ��&@Q�:�	�@Rq}�>^@Rt3�� �@R}\���@R'o@�@@RO��nJG@Q�il'��@Q��#�@Q����+�@Q����`�@Q}��<!F@Qc�q�ѷ@Q��_1@Q�ZE��@RO�%9,@Rp{�w��@R�\q'�@R������@SO�7b�@S�L>r<@T7�d��@S�8��7@S�N��@Sb�5�@Sf�!5�6@R��u@R����T@Rο7��@Q~n*���@P��jw @O?�e�e6@M+B*G�@M���ϐ@L+�0�@@IP���h@F��7��@D� M���@C�e�|�b@@�Z1s@;�d�`MJ@=�K��.�@4�_��c@0ԛ�5��@/�`���@*��\��@&���Iz
@"_�� n�@#8$�b�{@$��DN@$����k@%<��/�@&�X[V��@+�6)ϬZ@3H5~�@4]]�@8=��B@:���Y�:@D�M�ߔ�@S��k���@U0\�WH2@Ut`Lr�@U�����~@V:��/@V6J���M@Vee����@V��9��@Vg��d�@V����î@V?زZ�	@U�Ij2��@VP��v��@V�"Ŧ�@V�dՋ#�@Vwi0��@V����@TG����@P��>Q@@T����@V�/^rdz@Vd���M*@TY��5��@S�ͳo�@O)�ˆ�x@IkR�\�@Bv��M��@Bo�o���@G+�p��@C��H�@@B���@A{g_�9�@>I��<z@<�Ƭ]�@=;I�V� @AG���@C���@A3J,	U9@C�����@B�-���n@?�[��b�@E��<|�@E�=��{�@J|;�� @H_�sF�.@F���h�8@G��7�N@K���w�@H���a�@G��n=�@D��	T�@C�\^`@D���J@D��K��@Bx��>@C7�C�@DLz�Ά@Cn�.P�@C�`�ֲ@Fm#@H\}�8��@P��-C��@Sj�O���@R�xs��@P���@Sj,���@SmǓool@T́e���@R�~#n�"@Q�p �5@U�V8�2&@U��&-@TA�ηU@PJoD�]@F�	�I��@E-��9&`@D�Cc�?@I����A�@U�1�;_�@V!�T�kb@U���&�@S�0)eE&@RO����0@O�8���p@J��:���@F4�/@@FQL��q@Fm��6�X@B��1�r@Ai����@A�j�ML@@2��ނ@Bu^��@@��_m�@?�%�"�@8�b�(+@@6����a@6��*�7�@5O�d׸�@.�����@++�M�e�@*"�6@+���P��@,aM2��@0�h�fL�@3 {�&�@7Ie@��@:.'ׯF�@=y�C�^@@�m�}��@B@�.�5@D�3�d�%@F����<@HC!�O��@I���lE@LXB݊��@N���Yd@P.S���@P�udr @Qi^��@Q�.ȟ<�@QhP9���@P�'�+�@P�i0 w@O���T��@NE�@K���Q�@H��c�~@E%F�j��@BX���@?�صo�@<��G���@;��s��@<�b<P[�@=˻��@>�E����@@E<_`_@AJ���
@C;I �@Ev�(@H%�?8U@Kg�h��:@NI�MA�@P���C#@Qx<MYX@R1���(R@R�V�\�@R�N)�r@Rh���ˮ@Q�냴TO@Q�\� �@P��Z*
@@P�B��B�@Oi<U��@M�8�Q/@Ld��l��@K}R���@JA<	&wx@H�����@F�R�Dzd@D��
^@C�$2g8�@A�UUC@>vd2H�R@9�fo��@5n|�K@1LiN��@.zJ�(-�@)��	&Ԭ@$���ro�@!�L�'@ �4.�զ@��b`�@ ��st@Kq���@��,��@�w%60H@$�Ȳ��l@(��?�@0�5n�1@9��i��@Ia�Ϣ
@Q�UK	#@R�H�~�@U���e�@U.����:@U"�d��@T�!����@U;��%C@T���Ӹ@T���$d�@T�^�މ@T�@���@T��b�`@UÀO�)@T�)��"@T�|Q�V@T&h\�V0@T).Q��O@Ua����@Q�I��@K�g 2x@H��H^��@J�AD��@K�G.QEn@IH�ɀo�@H�N^�@E���+=@EHH<Z@D���jj@CF�qh@CB"�T<@A�Pc[��@AӣOr�@B�]��m�@Bl\�/�Z@B�AUy@B�Ʊ��d@D%"�e�@F73���@Gb�u��K@G��魱@G�g�-x@G�s'�z�@G��HR�@F��\��#@F���ӁV@F�u� Oh@F�.�o��@FvK���@F4ѩ�	�@F���!�@E��)F6@D�Q-�N@D:gvt��@C�\����@C��k�^@F�c��@H�y��!�@I7��͔@K�,���@P��4��@Q�N}��@T�VS�p@S�[qnY�@S*�l5�^@T��LHE�@U�cP*,@U0�Z��@U{փ��\@U�&����@U��x�@U��a�0@U�ˊ:j@Sk�X:�@Me�����@L���d.@Q|q� @T��O��@T�g�	t@S����7@P�	 m��@G𪎹�v@D
�
Xm@Bֶ��NM@Bj�W5Y#@A�s��*�@A[��H��@A��"#@B�L-oT@A�˽r�N@@��BM@?�Yn��(@<��d�@:�sp @:�4�YY@6Fu�1�@3�{�J��@1	��<�@)�u��]@)#�O;@*3iJ1x@-eC�\.@0O7�ҝz@3G|T���@7�ђ�@;;����@=�'�S:@A
d*�8r@B�A��p�@D�� H^�@F+-���@GT���@G�<P�@G�$I<��@HvҺ6m@HДȔ�@I֐�)�@K\{���@LN[��@@L�ź��`@L\�ؒ�T@KiBˀRB@I�-|q@GS��"��@D
���J@?b�>�xc@7����@1ы��_�@-Α���@-`�¾k@/�(��@0�,�"Ir@1|X���@1K���@06%�KR'@0Q�wI@0&D*G��@1��Ii�4@5�
��e�@;8�r8�@A���z�@D�&?��@HwJ�:�2@KN�c�Q@M�!H�`�@P$���t�@P�O���@PA���QT@O�@�hP@O}CӖ�@N�m���@L��d=�@K:N��P@Je^��ch@JAT����@J
*_
��@I��XX��@I�Ɠ�@IOCڎ�@H�S(Y|�@H$=�hS�@FYW���@C1�5$v@?�hͪ�@;�Fp�2@7���Ȏ@4�c�sh@0�+F��@*����E@%P@~�:�@"�n�A��@ �i(��E@{�4@��m���@n�yH,@Ж@��p@!�Ԥ3��@'��$��@0�Pk�i@@>s���@R6� �p$@R�Į�@S"*��7@S�D*Ԛ@S�#�ꈭ@S�����@S��w�f@S_}���@S����@S��Ƞ�@S���v�@Tf����@T��z��@Tw�iX*�@T������@T�C�p��@T�)�>@T�v��9*@Tŏ���>@T�G�7��@T��f�>@T��wfH�@U1���a@Tj��W"@R�X慞�@Q<�4@;@N!��=��@LO�}��\@Ia΋�(�@Fv�`�@D
w@��@CΞP]�j@Deq��d@DY���]@C��r֦N@D)��d@D���@E:��sσ@E�� ��@F]�\��@G�S�&@F��-\�)@F�6����@H�}c�2@H��4���@Ha�Tq�)@GYE�c8P@HB��i��@Jc��*��@H#\�}{@G�g��),@HjW��@G��V	A@G��!<:@H>#|�
�@H�l�OV@HQ�	�l@HS\��g@H;igD�~@H����#�@K����~@J����@I�Fu��6@K��F�s�@N��@O�@PkV�n�@Ro �[@U٫�a�@T��ǆ@T�m���@T�T��^@T�L	�@T��w���@TO�H@S�9i� @S�0��@Su��n@S�.k�>�@S'�����@R���@Rʡ��P@R�M昘�@R��=�3\@Q\�pZ�@@PU���z@L��#e[�@J(.Sn��@Ij�9⺤@Gw<A6#�@A���VB�@@{WD|Lb@>��|F@9���R߮@5���7C@3�φ..@1I{�mmQ@.Ƌ�5|@+��JH��@-Q.�f�@*��^P�@(����l@)h�����@,5�?t�@0 ac�@2%���z�@3��0�e�@3�Ѽ�%�@3��Bq@3���5�g@4��" �W@5O�Y"}�@5�\��1@3q�o8�@2mЂ� _@2FVD[��@3]��n.@4\F�b)@76�Nvɜ@:�)ᡖ@;�gO��@<�]���@=�����@=�^�WOb@;���j2@6@jȂ��@/��m@�G@(I@b��@(Ϡ%?K@0ͧ����@5�P\R6@5ޓg��@8f��@:���y-@9���^2@8O����@5����@1S��4�@/�1����@0���/�v@2?�F5T�@5����8�@:x�[��d@@R�S%��@C���@FD7�*��@H���B[�@I"��2:u@H�t�M��@G���i��@F7��.�@D�R��҆@Cy�����@C#�f�	@C
9��@CpL���@CC��uO@CV=�r@C�f�V7�@C�*W�@C���Jt�@CbE.�fc@BƁ���@A�s1���@> U��l�@:S5B��H@6���=�"@0Kx�@+clCG��@&<���@"M�?6z@ �̳�~@��3�q@�8�
t@KO�p�G@C&��@ F@裝"@"��\d�@$�ߖe��@)U��,�@1]�[��@>m?�N
@K�`~ e�@REp݊�0@S^/֚2@T(d�N�@T���lgD@Tz��^��@T{
C[)�@Tm�pg�@T���N�@T�N#4�@TЇYd�(@T�`ŎL�@T�=f�]@T��
=�g@U��D�@U>��U�b@U\Q�, @U~�����@U�
�q��@U���I4@U�i�s@Uщ�̯�@U�%�f�@U�Q�4@Uˠ����@U���e�@U¯��@�@U��^�Lb@U�>M�^3@T �5��@TS�V�@S�384@Th��nTc@SSsy�t�@Q�M%��@Ro/ܒ@P����k@R+t���@Q�A�jL(@R'J�@Q���K��@S��� q�@S��� �@Tn/�^.@TƪB��@T�Z<,G@Q�L c��@Lc�^�@G���	�@IO�MA]�@I�e��@H�˾+�@H���d@H��k3Ȝ@Jt���q�@Mn;���@O?;�W0@I�n��r@M`؆��@L>]�O"@KM�@K�"M�@J&�4X�@G�	����@GB�UD��@G�_#��@K2m��d@R���M@S��@�t@S�����@S��5�F@S���@S�忼�<@S��p՗�@S�c��0T@S��T4�1@Sc�K4�@Sy�^�}r@Sq���@S�ä9@@S�{U��R@S�x�u�N@S�,�N�@S�Ȳ<x@T���p@U2�A|9�@TI�A;@Svm쁡@Rz��W
@J��d]@C�����@A;��@>4���6,@8�u���@4z��#YV@2	ê*@0bf
�B@C�Ն�@<��[(2@8�0���@7?⇨��@7]���[5@6���?��@8���ڟ@8g+�r@8!N9^�@9X��G�@:)��n�@:��9���@;Q��4�(@<�B�q�@:���f�@9e8����@8���t�@6�ی��@54~ ���@4����@2��kw˻@12'�*4@/�����@,�4���@-g�F�g@.���rq_@041Uٽd@.�o��S�@*��k8@(-Һm��@.0q��@@2�d�H�@4���e��@5�ϱ���@GCg�N�@H1��R�\@Aqٛ�@>A��j#�@9^9���@5�R-��@3=n�4@22�97@1�d��E0@1vy4��@2t;���@3��}��@5�[�@@9R��$��@9��j�4�@9B/>ն@7�1dÉ�@6����|�@6��}&��@5ø�@4��R���@3���p��@2��^��Z@2�\�@1�T�V2@1�]}�@1��50<�@2V�BΙ}@3b�e2��@4���x�d@4<Z+苦@1��ӯ�@0h���S@*��1��@%�%��@#��0�@"�AK7�9@"$'iǿ�@#
İ�;�@% ����@&�A�ȜD@)kxGT�@+�u-I�@.gCӤ�@/�Vcz�@/>�`�@@1pA$@7h/��i�@9��#�T@:��)��+@?�/\z�@N`9�nY�@UQ;�.u	@Uݦ�/G�@Vn�C!�@U���& z@U�<��@U߾��xv@U�,��@U�����V@U��5��@U�����6@U��0�uE@U�Yi	�R@U�	�%�@U��K�b@V�_�ך@V8��W@Vfy�v@V�}���@V��o��e@W�Xo*�@W��U�@W%�_g�r@W+S� u@W -6�6@W!!��@W�c*�@V�[k��@V�/����@Vs���@V]H��1 @Vz�7.aj@V�s{�1�@V����@Vi�[h��@V2�2�@VӧA~@U��mY@U����u@U؝�8W�@U|�ǩw�@UA�+�<@T������@T�,��l@S�/T�(@R�.7d,�@Q�6a��@R��Ah@T��P3R�@T�M��f�@T�&���@U6�D�ٽ@V!����@VMx=�@Vr3��@VmJ宼@V\~p��:@U-rN���@S~ں$`@P<tb�ͦ@LI�?��@P��5��j@I��9ps�@H*���@J��3̙�@SD4�(ƚ@S�y]�٨@S�F&j{@S����@S��l@S�"؋@S��6=�V@S�����@S�$e|$�@S�Ȝ�K�@S�O;T�@T)�[��@Tf��-[�@T�����@T�r�a@T��ǙJ@T�;~�e
@Uw���@UQd�4�@UT�Z��@Uy�ܚG�@UY�c;�@Th��nx�@Sf�Жԃ@O繮�8@FF:mnv@EiE�m�@A��P���@B�{��׫@B���!��@R�����@R#�x.��@Q��-Ԑ@P�T+��u@O�Ǥ+�@ON]�0@PQ����3@M�<�{��@L�GO6v�@PZ���@R+�!��@Q.e���@R` A�,@Sd�}C2@S4��+&	@Qd�n��2@O��u6V@Gn�S�~@I��Z�j~@J��c{�@E�[/ng�@@7�o��@;2آ�@7��)�1 @6O�C�@3��@1���@/M8V�o@,��g���@+��/r�@-�/j?Vh@0��#h4X@2`��3ov@5UBVG�@@`�U�'@NF��=�@PU��~}W@K���ru�@IO�<�6@A�bBd�@=��q� 2@;��*��@:��А��@9���@7
�ٸ	@50�9�6@3�E@0�@3_5i��@3��u�@38�S�T�@2�����@2��
T�N@3"�!GC�@2�*y��N@2�Oix�!@3�=��S�@5Z9s�/�@6:�Db	�@6���%�@6���%S@6��9 0g@69mG*-�@5A��1V@4y���@3<��"*@2�	,��*@1����'H@0B }0wT@-���|��@,�"�s@,�u�f��@0h���V}@3=����@6F�=�n@9���h@;/w7�@=���D @?Et��1�@@������@C\~ªG�@H���1��@QH�Ğ� @Ră�D
�@S��T��@U}V��(@V2�2F@Vl}�o�r@V�]n;�x@V��K͎@V����@VѦD��@V���!$@V���P[,@V�2$9�_@V�a�%��@VČ�v	�@Vځ�9�~@W �O�@W) �K@@WM��Hr@WXq(���@Wo0٦�@Wv��>�@W�N�(�@W��3@W��G�Q[@W�*f�\�@W�;ݿ]�@Wꆏ�$�@W�G��@X	XQ~Ċ@X��@X'X���@X%��|�@WԺ�g�@W��+�@W��][8@W��Rf@Wݩ���N@W���6��@W�kHjS�@W��˾ �@W�\#v]@W�@Rͮp@Wl�����@Wp���w�@Wl���b�@WC�8�1�@W$�#qB�@W=P�k�@WR�@��b@W.y`p��@W�Ty<@W(G���@WA���
�@WG���@WvVo���@W��yZ�@W�>���@W��3S �@W����@W�s�H@U�n:Ō@T�N��@Rhs�$l@Lo����@O~ˠ�@I]\B���@G�����@P�&(�j�@S^���d@Sm�+r'@S���0� @S�l�Z�	@Sn�̟(�@S`�.�(@Sge{�[Q@S�Ou.P�@S�>��^@T66�PӴ@Tw=?�@Ť��.�@U~db�@U[p����@U�#���@U�T}=`@U��[:�8@V=�r���@V��X-�?@V�Q;ت*@V��wÞY@V��@V�,�^@V���9�@V$�C�ߞ@Un_�@TE�@XK�@S5�aL�@S2���ߖ@S ��kz@WwuE@W7�ɼ�@WM��L��@W'q�kx�@V���*�@V�+�@U�l�3o3@UđKIT@V-G�rn�@Vq�
;�@V�P;(@V�iG3@V��jG��@V�m�Cc�@W[�,���@W��lp�@WV��a�`@VB�70�@V�$B-@V��o�@U���2�@S�@_�"k@OȔ���@Iz���_@G�.Ƽ@B�:��w@?�eadC@;���l�E@;�&��e@=���Mp@B��.�X@Ek#��Ow@FC���@HW^�(r]@J�|ڈ>�@P��"V��@SW�G��@TL�ynP�@T�?GOkO@S�XO��@O��K�+�@LF\�s@F�	�{�@C{�t'*g@@Yz��@?�ɑR�@?��F>S@?�硟ɘ@?>ց��K@@KC�w��@@�$uV7�@>Q-��@?+����@AVY��@@�2 j-�@A55aw-@B�$gp�@E`�/m%@E����q@E��8��@F�gJ��@C�\A�"�@B
�Zvs@B?A�u@C�?
|d@B���Z�@A�h@�@?P�ޮeK@<�����@;FQ�icu@:�27��@;�����@A�G�35@Hyk�@P��ڥ�@P������@R� _w��@R,�o-�@S����@Ts-���p@TƄ����@U�q��A@U��8��@VP����@V��G��@V�}/�ė@V���bW@W�����@WB%P(Y�@WNuaG�@V�a~�U�@V�qc���@W$CW�@W n��@V��y��@W_t'�	0@W�`��{�@W�厰�(@W�\AX@W��E�c@W����@W�.Ҡ)�@W��Ȗ��@W�q~NT@X/��@X0'*�j�@Xߊ��@X1i<�#@X:�/p�h@XK�Yg@Xlf,@7@X�z��Y�@X��'F<o@X��DY@X�-��o@X7��R�0@XO�����@Xmsw1��@Xs��b��@X7�ZR��@X^o��@X���~�q@Xp6�}�@XEa�bX@X ��k�@X?�}P�,@XPt���@Xs5�B5h@Xe�7�@X[�2Ҥ�@Xp����@XN�QU�@X2�˽>�@XO��!$9@XH�L�k@X%s�/z�@X2��@X4M�&��@XQ��V��@XgZH�M@Xq���{�@XmR.�@X<t��E@XGe��@W�-����@W���@S@���+0@Nh2��@T��(���@UK�K|k@T�W���@THU.R7x@S��y��@TaJ;6�@T��(W@T#4��E�@Tl�#+%�@U9����@U6>M"\@U:=�'��@Uw���u@U�MɏR{@Va�,�@V*:ǌ��@VW hq+'@V��!{x�@V�e���E@W
#���i@V�^F��@V���
x@WB���k@W��%��[@WaU��ka@W@�E�S�@WC��C�X@W��_�ȑ@WO�u��u@WY�Ɇ�K@Wi�娇@W9H��ih@X>��3@X(���& @X)�f�A@X8�"U�@X,/
��@X�c��}@W�/���@W�P���@W��R��@X��a�i@XI.��X@X1`A:o�@X:��@X@�J��]@XD� 2��@XU�2�[@XVƆ�vw@X1����@X1�j��@XT�k��@X\,{Nj3@X>�m�r�@W�@��*�@WF#NM �@V�E��'�@T��t�@Q'MG�g@NJ!ެE@P{v��m@Sv�=@TYv�G@T`w�Z�@T�A�v�@T��!�@UN�S�
@U_���\)@U7<��5@UR�ɚ?�@UA��=�r@UuKP�1@Un����h@U{v&�a@U)R49[@T���)8�@S�"�-�@SU�;�;�@RO�.ڮ@Rp�id��@Q� ��H3@Q'�Z��\@P�����@M�}t��@L�a"@O79�2��@R��`�@S��ic,@P7�/Z�@Q?�t�@Tb����@U�ӵ|�@U�J��@T��N@T���@Rʎ��ui@T��&s%k@R�&���[@P���)@Qq����@O�����5@P[A����@Q�� p+5@Rx���U�@R��.�@Sќ*�<@T��:c;@TZ���*w@Tyl!��@T��xf� @Uj��U#@U��b���@U��)ְ@VLA��ȟ@V�j���,@WK���@ @W��?��@W¤LU��@W�O����@W��b�]@Xzn=�@X=2l�7@Xb_KK{T@XI'�Z@X/�D�(4@X�M�Jl@W�����@W�'>�\@X���@X��
�4@X)D�k�@XE�ٺ�@XV6�h��@Xe��o@XZ��|,�@Xau�9�@X\��m�@Xdi�@XnR�n��@X|~��e@X�p����@X�*%��@X�1/�6�@X��"�@X�q��H�@X��Vֈ@X�4�ױ1@X{��3~�@Xwb ��9@Xs�뗹�@Xo���@Xs�S|@Xs�@.8�@Xv���[<@Xn�Ν�M@Xj�f=co@Xi��#ȋ@X^]/�P�@XT�M
�s@XS�}�ա@XX�֧3�@XM�е�@XP���Cg@XKW���@XE���]�@XBp�,�-@XJ��]n$@XL��#H@XH*�hK@XEK�̛@XK�.�ѽ@XNF� �@XO��N8�@XK��ο�@XD��Q0�@X@y���@X;*/x�@X+gf��C@WE���j@Tut�3m@PZ�����@Q�rO�3@S�R�t@S��X�@S��F�#�@S�B�9��@S��ǖx@T��J�K@T{6~���@T���0��@UE�e�� @U����=@U���,C@U�n� ��@VE�Z��@Vu�}�i�@V�#Uȡ�@V�y�C�@W.dSu�@W$Vv��s@Wa�o8�]@Wo�H��d@W�>;�@W��� �O@X!{�%�@W��$�+@X~��h@W���<�@W�8���@XH���@X.���<�@XG��hf}@Xm�%o�@Xf9!+@X^��k�@X_�Q+�@XR$7��@XJ�"e*{@XH4$�%@X<�r�M@X16w,�@X-�Zxk@X4��g'@X@����@XBCp�@XF��C��@XK�Lo`@X:���e@X.W4Ã�@X "|��@X�m]�@X0�4��}@X3��l�k@X@����@X?4<#�@XF��{�@XEo@��@@XTe�l�@XE^��@4@X0���u@X�"�k@W���t5x@W��1�C�@W��ެM@W�KƄ%�@W�� ʢ$@WU�O@WK ���/@Wd��g��@Ws�.΂�@WCJ�3�E@W������@Wq��q��@Whq����@WW�����@W@��#GX@W2�|:8M@W9�-_�@V�b���@VTW�T��@V�rq@@U|7w��@U$	Oc��@U]�m�s}@Uҥ~o�@V�X8�i@V�<#��@W	��v�@W<����@W:�- �e@W,�Dv��@W�١��3@X�`g�_@X-��3i�@X-�$�@X"�f�c%@X|�yX�@W�,�� h@W���TՔ@Wv���@We��@W��6a�I@WΘX�y@W����]@Xbs�e@XU0�@W�%_��s@W�O
��@W�C��a@W�+@WmG���#@WK$��3@W/�0��@W=)$���@W��vo�@W۽ ��m@X��P"X@XQ`�Q@Xj��Et�@Xk�r��@X��`V�@X�%��0@X��9�Q�@Xw>�`E�@Xhj&�@Xb���"�@X_A9�ш@Xc��/a`@XO@E@XL����@XH>�P�@XVN�,@Xd�P�dK@Xme#��(@Xv�և�@Xr!�.�@Xm�-��@Xq�SY�@Xx�J�J�@X'�u�s@X�.�\�3@X|�>Dk�@X�I�@X|ܳ%��@XvW-Q/@Xwɉ�@Xp��D��@Xg��lA@X_��5'@XS�ш�S@XJ�y�s @XCL����@XE����@X?��%�@@X;Ѵ>�@X3b��M@X6��9�@X3�d��o@X)��( �@X�4�.�@X���[�@X���5@X
5�ș@Xq3�Р@W�UR�A@W����|'@W㨹Ƈ	@XCi@X���@XD���o@X ���@W���y�@W�ph�@W���8{@W�u��s@W�~�T@X����S@X�")@X	��J�+@X�~�/@V��c��@T(�P7@R����ku@Q�"?<T@Sv9 l��@T�/ezR�@Tx�_���@Ts	���@T�PsK@UJ�\�>@Uy�9"�3@U�f�|M@U������@VD~&��H@V����E@V��p'M@W-��@WDJ����@WhW���@W���c��@W�1���@W���	�@W����@X��@X�[W�@X,�X��5@XIp3� C@XDs�դ�@XD甮;)@X[h�,��@XaI�Ռ@XfMG.@@XN1��t�@XK�/N�=@X@���	K@XH��@XD-�K��@X;{T˔�@X4~g��+@X.�L�t@X&v)��d@X$)�Eo�@X"w�V9�@X!G� �5@X�M>0@X�&�P8@Xnw��@W�����@W�ɶ���@W�G[@W��x�X@W�E{,/@W�C��\�@W��7CM�@W�O��Y�@W� h=?'@X��d;�@X���'@XF��@X*�{}z�@X0z�v��@XA�)��@XC�xT@XJ>�L��@XL��@XZw�J x@X\#R�Qt@XV'9?8@X[�=��@XN� ��@XU)�[@Xap�E5@X^��q&�@X^K�y�=@XM�Fw�{@X=C;SL@X6�:�`@X\���$�@XMmY��@XM3�@X ��%`k@W��~�@W���Q2@Xj>��@X2$Z���@X1!�>�@X/"�!r�@X9�q��@XO�lQ�@XOE���@XOo4؃�@XI�%9��@X9���wX@X.�b`�x@X0�eS{@X5�0�@X:|���X@X:���@X0^���@X%m��@X��w@X��a��@X���@X�\�(@X;8k��@X���@X/� �H@X-�b��h@X#&Ҙ� @X#��*��@X.���@X{U��@X[�`@X�hC@X(�ݚ�4@X.�U@X=���@XJ�����@XQ��	I@XN��gz@X<|����@X��G @XG��b�@X
B��7�@X
�@���@X�-�x1@X�Q���@XI~-9p@W��Vh@W�]�i�@Xկ��@X
-D^�<@X��){�@X#A���@X-���Bu@X97?n��@X=��{5@XO���&(@Xb��G�@XbL��@XcK�=@Xd�x8+�@Xc���r�@X^��j��@XYuO�5@XQ��G�@XC��GO@X9{��e@X'�~�TY@X&�"��@Xښ�Х@X��m@X��Ir�@Xdж�O@X���%@XA�
��@W�<��Q@W�5�'��@W���z�@W�Co��t@W�,���5@W���@WÜ'�DG@W�a�n,`@W��p���@W�r�$�=@W��_�E�@W�̓���@W��Z� X@W��|9��@W�۔�JX@W���#@W��b�%@W�0�"�@W���U@W�o��@W�a1��@W�8��F@W��դnY@W���y�@W��M��@W����=�@V���䢣@V�0���@WEu�kM@W9tl�@V��t�8@Vb�0�o@V�c;ox@VK�@W
e�01@V����@VݏN��K@W/�VE@WUk���@Wkrh$X@W�ڃ��p@W�\��Ɠ@Wͬ���@W��d>u@XG��H@XM,�z�@X,���t@X�ߣ�@X"����@X�q�5@@X6-�"v�@XF�&�o@XH��M��@XK��6��@XTfX�Ix@XT;:Ke@X6���zk@X5\s�-�@X'���+@X!���#@X�D��@XeH���@XK��@X�R�lE@W�����@W��
eQ@X�mH=g@X@;�C�@W���xp@W����@W�o���@W׎2s�@W��J4@W�5���@W�u>��'@W�^��A�@W����@W���6�D@W��.�P@W�%�hߌ@W�/�xE@Wп-]+@W�C�W�@W̉�[��@W���A� @W���N;@W��:0O@W�e$b��@W�
+�A�@X�3���@X�qV�A@XgR�h1@X;D.$�@X.ux@X���@X Mވ�@X�"�,@X#{-:�m@X%��q�@Xi�R� @XR/�~�@X;�<��)@X#�L\8@X�SZ@X��@X��I�@X��h��@X	�\G��@Xt����@XwKV��@X�%^��@Xj��>�@X�7H��@X����@X09f��@X _�K@W�`~]O@W�ْOn]@W�jM�t@W�s����@W����k@W�MŸ�@W���M�@W��̘qh@W���O��@W��&#C�@W�'�%@W��XvkC@W�M�U@W������@W�_�:�E@W�}�h;3@W�m����@W�*(WN�@X�ٵ}�@X秀�@W��ql}@W��~A�\@X(�%�tm@X�O˗@X-���@X��c��@X	����@W��@=w�@W�<�%�7@W�s�u�@W��^��@Ww�(�,@W�E<�@W�@�Oy@W����q{@W�ˁy*@W�_��@W�`�2�t@W�>����@W�"��g@W�9���@W���/�@W�PG8�@W�F���E@WԖ��|@X x�3#@X%�轃T@X7j΀8 @X>&�x�g@X:Q
��@X1uq��@X$�h�h�@X'�kO@X�s:��@X��P�@W���W�@W��&lB@W�?�n`@W����[@W��l�"%@W�d����@W�m�ii�@W�C��$�@W�9��6�@W���� @W�c�P��@W��A�z�@Wc��E��@Wy���/�@W�<�W�@W���G�@Wq���M@We�d<@WFoШg	@WFQ��$�@WN���@WT� N��@Wh��n(�@Wv���S}@Wt��}�@Wkv��ʰ@Wd�$o��@WYq�;@Whl�44�@WL��g�@W��uJ�@WJ�<�k@V�ƌ�D@W�Z�b0@W&�'�\@Wp^��|@W�7G�E@W��J�N)@W���c�@W��oc%@W�TNBڗ@W�c���S@W��.��@W���Lÿ@X	(�J�%@X��`�,@X�f3�@X"�߉@Xm4m�@X��$V�@X&���$a@X#:!��@X+�]Q�@Xu����@X}�k#s�@Xz�"��@XY�|�(�@X7;w0k@X'�ڦ4@X5�^g��@X84	�@X?)Z�)D@X?��<%�@XA#��ϴ@X5ߺFW�@X �&�%@X��e�L@X����@X	uo 9{@W���]�@W�9�!E�@W�w� ��@W��p��@W�[��@W�čr�@W��SȪt@W��O�@@W�8��`@W�U:��@W�Y��ܝ@W�úe��@W���fH3@W�?�P@W�Xx� @Ws��j�@Wfū+h�@WVVj*�s@Wf�I�M�@Wx�M��P@W���s��@W�.6�W�@W��s��@WqT�M�@Wh���P@W{�P���@Wx�c��'@W��KT��@W��^�j�@W��$dc�@W�_J���@W��4��@W���E�<@W��/
ս@W����;@W������@W�L�uK@W�����-@W͌��@W�l}ze�@W����V�@W���@W����qY@W��x��_@W�}���@W�kGfD=@W��e�]@W����Qw@W�^�s�-@W��\%�t@W��K��=@W�W��@@W��#U�@W����m@W��.S3@W�s�ǧ@W��Fj��@W~Fv�ES@Wm��Ma1@W^��s�@W7���@W�ݯ@W��^�@W2+w\@WW�@Wu�Zu@W65ĵ�@W8>ܿ
k@WϢݷ�@W����@V�� b�?@W`�.�@Wj�t��@W���%@W��#���@W��}�M@W��'E@Wt���m8@W�P�@W���@Wؘ�Yl�@W�����@W���?4y@W�����\@WWB�|(@W,^<*��@W4z2��@W*g�^�p@W<���i�@W7���m@W'����@W%�M�@WQ�F�@W#���y@W3�?|�@W3:*h?@W=�
`��@W(RD�[�@W;��O�@WL�EV1@WQ�.�t�@W�U�@W�ͮ�B#@W���m@W�q����@W�{����@W� �;d@W�Ή��@W�L�n@W�DhŨa@W�𝥪�@W�n��@W�K[��@W�#�%�Q@W���f�@W���u@W��#�e	@W�!!��@Ws��eTe@Wd�l�lH@WS.��u�@WG#5�7@W;"����@WIDM}@WE��h0@W0�Xl[@W;~�¯�@W0��pŨ@W�e5a8@V��Q}��@V��H�a@WF�8� @W�V�@W(z�r-@W�#��@W�?<@W�T�'@V���3x�@W�׿�@WPQ>�@W�ם_@V�<d	��@Vַ�|�c@V��&��=@V�?!�-@V�v_L��@Vƹќ��@V�;�(@W	�JU �@WC�L}��@Wy�A<�5@W�Ӕ8��@W�zԒ�@W�m�Lx@W��I��P@X`�O�@X2���|�@X:�t�Ӑ@XC��'$@XH���u�@XQ��a@@XPU���@X=p�'�@X+�Q�@@XM�	G@Xbz{��@XRcVo��@X7LZEY@X-�"��@X#�<T�@X��ϓ�@XCu�b�@W��?+�i@X�W��@W��3?��@W�V�eD�@W�7a�T@W��h;l�@Wς`��@W�@N�@W�F��?@W�&���}@W�6&�A�@W�$V�@W�^ �@W�cV��@W����@W��Av��@W��j�e@W���t��@W� ��%@W��w2�@W��n��h@W~zN��5@WY�>Z��@WI�(�x�@W"�n�r`@V�k��۩@V�M�F @W��?0@W7F/���@WF~�9Qw@WA/��ݭ@WD���`@WH�J[9c@W.���@W(�w*�@W,�A��X@WB�E��@W5ea.6@W8z��J@WK�@��@W0�+��@W����@W"
��@W ��!@W)�D�u�@W���)�	@W�@�"@W�
���@W�����#@WX����@W*�\�o+@W8�R�@WS�귧@WM�|��@W8r�#�@W�g���@W6*w��@Wf����@WWBR�%�@W5>��\;@WIK	(_u@W���@Wtp֜��@W3w�-��@W*t.�@W��L,�@W�c���@V�vV�@V������@V�<#���@V��`b9@V�)d2�@V�AO"�@V���E@V����S@Vqq^���@VZR*���@VU�6|ck@V\1�E�@WB�V&�]@W\�Psc@W8-Vn�)@WP~���@W9x��8@Vف6*�@V�bN��@WV��i@WӜ&9�)@W��JO�@W<�D�}@W�f���@W=�Cwp@V�n�+@V���U@W-��{AD@W*�7��e@V��Ӛ@VՍ���%@V��.���@V�B�(�@V�#Eͽ(@V�S�7k+@V�9�p'[@V��i;l@V���@V�[I�J@W���Q@W�t�u@W�Zw�@@W;F�9*q@WWj��)5@W`y:E@W���!'K@W�;�@XQ��@W�d�� x@W��'��}@WbQj�s�@WjB��s@W~�Ԅ�C@W�rZ�<@W���aB�@W��#}�@WuZ�%�<@W^��A�@WPf�~M@W>0�M��@W4q����@W <l1@W�)��@W;�0@�@V�B���-@V��^��#@V��7r�@Wg�Y�@WlG#�@V�� N5@Vܜ��?�@V�{8@V�O?��{@V���D�#@V���$�@V�܇u@V�g�o�@V���4�@VԸ�n�@V�v�%nD@V�F�~��@V��.a@V���l@k@U�	t��@U�w��*#@U��7�}@U������@V	h@Vb�k48�@Vyr�a
p@V�0[�U@V�4�!Q�@W\\0'@WB���4@Wfe7���@W���9��@W�\�Z�w@WԻ�/g�@W��V�@X�p"�@X ޱE(�@W��]#�@W���a�@W�6̦�@XA�] s@X/w���@X�2��m@X�
bI@X�S��@X��Ĝ@W�# ���@W�a�@��@W�e@��A@W�s1�HM@W�����@W��%ٳ�@W���NP�@W|�y��c@W}]��@WzS�x@W{t���@Wz���I�@Wc�c��@W[2��T@Wm�3F;@Wu~Z�&�@Wk���@W_�17�@WWhc<�5@WN���@WU�M�r�@W�T��X�@W� 6͊�@Wu� �&[@WK�f�
�@WF���@W6����@V�-!J��@Vñ���@V��/c�@V�J]8��@V��%�@W&����@W��0@V�&�t�@W(�?��@Wso�e@W�� @V�m'�T @V�<\�Fp@W �9­�@Wd�m-@W;��u@V���]CA@VҜI8��@V�?2��t@V�"x�!@Vv�S%�@V�3R�MH@W]��@W��%��@WO-�},�@W_���@V���i�@V�F��(�@V�����@V��e�C@V���d7@V|,@���@V��5!��@V���mp4@V��O��@@V�����@V�5�t��@W@�b?M@Wu��jK@WT$�)�@W3��\M@W��@V��'�@@V����u@V�5��:�@V���b�@V�/M0@V��I�M�@Vh����+@Vl�2#3X@V.6�t�@U��f�@Vk{j��@V&�Ȑ�@V��Z��@Wc����@V��?�@V�4,zo�@Wk�@ �@V����@V�
��!m@V�4�m�}@Wgu�k�@Wh�Hq5�@W.|^^��@W@�Zh@V����@V��kD�t@Vq�.1�@V�����C@W P��@WKq��׻@V�l ��@V��'b��@V��
�|]@V_��ϰ@V;���@V�	2eW�@V��"J�@V�w�G£@V�F,�$�@V���t=@V�ɯ>ͫ@V����[@V���hx@W(��%�@W]�na`@W��Z��{@W���;a�@W}¯�A�@Wgk@l�/@WJ4^�1�@W�U�A@W�E�WG@Wa����@W�d\��@W���ռ@WF�<�@WI�4�[�@W#�c���@V�5*t#�@V�.ijd�@WI
[%@WO�h;Jh@WD8�х@W\�
A@V�uǾ�@V�&���@VƂ��M@V���� @V���	4M@V¶y�|@VÔ�?`@V�_�5J�@V������@V�\� ��@V�E)���@V������@V��7��@V��6� @V�y�Q@V�a8)�@V�I�3�@V볈u�@V��
�+S@T���|@R.����@R��ԝ@S��].�@TP��"@T{7Pia}@T��o��@Uj���{7@U��R|S�@V����w@V�T�<@V���)>m@V�BU>�	@W�A��d@WEPf*��@Wd��D�P@W?\���@U*�u&�@VK�]���@WI2?�t@W���r	L@Wɢ� @W���@W�L��%@W�r/���@W�<��@W�w��@W��;��@W��g�c@W~���@Wc�FPI@WV���@Wbl��C@Wa�����@WV���@W��<��|@Wy�t�E@Wq�1z��@W�)?Tp�@W�� ��g@Wm�/U�@W�=�j�@V�04�@W�[��@W!]����@W${j{I@W
w���@V�@bB�@W !95x@WJJ�;@W|���<�@WH�w�@W">���C@W'����@W
j�qt@V��X[@V�qX[�@V��R�@@V��=#Q@V�)�k�@WF�*�}@WHYO�`@V���w�@V��eS@V�]�HOE@V�����@V����qL@V�X�ZC@Vү�m�C@VȢ<�X�@V����#�@Vnk��x@V;(B0w|@V4�c@V&JgJ�M@VPi�S�@V����@WQ�Qjw�@W~X*~�@W>�:B�@W	�.���@V�i�(/�@V�����@VSMD��@Vz�qF�`@V�O�z��@V�O繛@Vz�ڧ�#@VT�qE@VN>�|	�@VL&xAk�@V7U�`R@V\�X�@V� ���@V��ܫ�@V��+��@V�QroL@V�l�v�@V�
<q4@V������@V�\�4�@V��$���@Vk̎���@VX	n�|@V0�IJ�@V ��
�@V`�ʿ�@Vr!j;�@Vu!���@Wo�A�@V�~��@V��Eu��@V�fT�"�@V��R��@V��w�59@V�2':C�@V���k�@V�z<��\@V�z���@V�0]�?@VVo +��@Vpb8C��@V1T�ǀe@U��R���@Vb1q_��@V��ߚkq@V�}ʻ�@V��n}�@Vʳ�u?4@V��)A �@Vte���@V,�|J��@Vy���u�@Vpr�5�@Vc�2�ƀ@V�ҬJ��@V���x�_@V|z7s�@VÄ��4@W?ʝ�_@W"|�!}@W�����@W�Ǌ%x@W�N�|@W�v��1@W �nK%@WV�J�@W)%O�a�@WE�ʬ_O@W6����T@W&GW\�@W-� @V�b����@V��}og�@V��H��P@V�ZGG
�@Vxh�k-@V���?��@W(x+Z�@W
G\D�@Vض7��8@V��ް�@V�T�d�@V���]�@V�h|�Tx@V���=�q@V�����@Vs�]|�@Vb���@�@VOj%���@VOF�%u@VW-���@V\u{Α@Vbj>E@Vl�Y�P@V]�VcT@Vl��l@V����*@V�s�?��@S�D{�d�@Q����@P(�:Y��@Pɺ���E@R�M	a@R�Gq�BQ@SR���@S�n��@T?��E�@T�4��@Ua�Fo �@U�a�z�@U�Ɠ�˫@V6\�@V���M^�@V���$��@V�v����@W��kr�@V��W��}@Vہ �@V��T65@WC�Q_�@W�+F��C@W��3%�%@W�yV-`u@W�����@W��p.��@W���F�@Wk����@WM�`,y@W,�t)z@W[v/�D@V��2̉G@W+/��0@W9�P��@WtVq���@Wv�v�C@Wz����q@WL���t0@WA���@W7�}��@W;d���e@W	�l�@V��`0@WJ��`��@W'�]@V�B���@V��So�@V�v��+@Vت�u@V�x�3m@WZ���7@W�ȼ�@V�{�㎍@V�顟��@VŒ�*D[@V�C�0��@Vs�4��@V�{��q@V�l���@V�ȇW�@V��) @V�H&�@V�����w@V�}n��@V�����=@V��m/��@V���@V�S��´@Vs>V �h@V��`y@U�BQh��@U�"T$� @U�F4=�m@U��βa@V�8?&Z�@W<�m�u@W�&V{@WF�(�A5@WGDZdH�@W(�ʟ�@W�����@V���-@V��=�k�@V`ў���@VJb*�c@V?Ǵ��]@V9.�a�@V,/�fV�@V�eO�K@V&�%�@VJ_��A@VC�~�Ws@Vk�A�d�@V���ɀ�@V���4�@V�c�w{@V�����@V��[]�@V��eT��@V�t��@V�w����@V��� p+@VH
�m4G@V&�-%m@V����@VIx���@V��wp��@V�b^��K@V��Qn�@V�H�S�@V/�J?h�@Vj"��u@VXDX�/@Vb7����@VXט�A�@V9�H��@V'��@V%`{��U@V;�<�v�@U���V�;@V �кb�@V��E�@U����A@U0�G��@U7��`�@U~�3�]4@U��h��@VmLNP��@V�����3@V~%�E�@V��S�,@V=�!�0@Vi���@V6<<2�%@U�c��@V\�ګ��@V��J�@V�1��@V�K��@V�MM�@V�1��(K@V��]ˮ=@V��B���@V�;����@V��U�@V�
�{8@V���Sh@V�z+���@V�e� ,�@V�w�P�@V��8�a'@V���ӕ@V�Y :��@V�2���@V�d�me@VpNz+s�@VT����8@V2ab��c@V���Y@V�5�D3C@V���v$�@V��i�@V����@VUYِ��@V4x��F�@V9����s@V6���x@VG12��,@VA6o�@V�b�h@V�\��-@V&��[�@V%eV�7@V)0�#d@VS�_�]�@V7&]�$0@V;���S�@VD�D��S@VwLt��@Q�g��e@QU����G@PY�S�q@O���b�@PP�\�-�@Qy��V�-@Rt��h�@R�N���A@S0���$@S»�x*�@Ts���J�@TʳOӲ<@U���@U���@U�t�>M@U��#@U� B3@V\��)sQ@V�Sw:2{@V���� @V�6��@V�@�\@W���5!@WU(	ٕ@WW(�y#�@WE(6w̵@W4�fb�@W#U	q
�@W���=@WW�xC�@W\�Q�@V�y���@V�<wPq�@W�
���@W*����/@W>Pf�@Wl��&��@We�v7\@WV�z�@W
G��?@V�P���@W����M@W�kz��@W���@V��kI�@V���|gs@V�:����@V���~A@V�Ifoq@V�!�m�@V��
��@W0����@W� �/�@V��k}�$@V~�1M�$@Vb.��h@Vk����@VW���'�@V�8 �@Vx5��O@VZ�=H@Vg�aڄ@V~r�>��@V�S+��@W�1��@V���E�@V�G��+@Vm��9@V*+x�E�@V47.(��@V^d_�b�@U -y�*�@T�Џ�@U�C��d�@V��&N�P@V�[���@V����l�@V�B#Bn@@V����@W�[��@Wn(
5�@V�
�Bl�@V� ���(@Vdy�@V02#Mˣ@V	XVa�@V��L��@U��� �o@V"�(,@V#��"H�@V.BY��@V[=��	@V�hn�@V��i�!�@V���X.A@V��^ӳ@V�v��L=@V�|.&tM@V�h�x��@V�a8�@V�˿{��@V�h��@V�����H@V]/IU(	@VU.s)�|@V`)L�Iu@Vp����@Vl�e@V=��p�@V*��:	@U�?���@U��l&�@U�D@�3�@Uû6n�@U�9Bh@U����w@U���H�(@U�Sc��@U�0Crd@U��L�@U% q�@T��f��@T�����`@T���;@T����R�@U�Ƈ"�@U&�!�wg@Uy�~hC@VIP�,@VU�ֺ)-@V/�ݬ�X@U����'�@U��H�[�@U�x��@U��2�@U��QqE@V�H�?�@V����X@U��3�	@U�Ns���@U��,tx8@U��M�& @V'ֺ��@VI� \<	@VNF�b�@VU�w�M�@V@oЋ?�@VG,���@V>Y�C@V5ښ�
�@V"����5@V8��Y@VI���@VH��W�@V?�r�=@VB�X��@V3��)�1@VM�**H@Vm)L�	@Ve��*{@Vk���@VfqH�%}@V]扙@V+J]��$@VqX�1d@Vir0E�@V��\��@V���S@VМ��@V��ѡ�@U�)�S@UԴdzI�@U�w��e@U��M��@VnNb�@V����L@V��~2h@U�[oܕ�@U�^O� @Ufj�or$@R�Ǳ6ܛ@Q��aq@Q�G�C@N��w۝@M�_��uX@O�LgʊU@QG0��@Qp��ҥx@R~�`�s3@S���m"@T�B�o�@U7����@Ufi��@Uz�v3�@U�H�2w�@U���f�[@U���
�@V$��T�@V�p'�U@Uﾯ�|@VL/��-@VW�욅@Vs����@V��/.�@V��eU��@V�FS��@V��ڣ�@V�Rw�#�@V�1���@Vᗿ-̘@V��	@�@Vd���J�@VN�d�@V���\�@WkI���@W�����M@V����/Q@V�?rt@@W��x@V�Gk!2�@V��wH�@W.�L�-@W�˖�_@V�V���@V�9�T$�@V��o�;i@V�n7@ɔ@V`���@VO�'�T�@V,��WcE@Vf����4@V�S�@V��u5��@Vq� Yvl@V/��@�@U�3����@U�Dn���@V1��o�u@VU\�O�@VD�"�մ@U�q��@U�@FN}@U�wE,�%@U�',Lm{@V��Dy�@@V��ϱ7@WS� h�@Vۜ��}@Vim	�7u@U����Ȼ@U�X���@V:��=�@VV��nď@V�d
`c@W0K@�@V�����@V��G��#@V�:�Q��@V���֨@V��0_�@V��U�@V�8�3�@Vu���.�@V6\�`�@U�.���@U��"	}@VdSo�p@V-��иE@V37Ήj�@V��넹�@V��~��@VZ�R�-'@V��N`�@V��-�r[@Vy!y�-@V_�L�8d@VvlB��k@V�1��E�@V���m@V~��6�@VW�T�X�@V3C?�@V%�<q%�@V73	s�@V�2,��@V8��S@V<}�Z�@V&(��,�@U��I��@U�
��@U��ٳ'@@Up����Q@U7��`�E@U񱄡�@U�ߗ�@U7��Yɛ@U*����@U���L@U8��>B�@Tf0��^�@Q�Ϡ���@Q��
0@R�K��@Sl<��\@S��f8�@TUq9�5@T�����A@U1��f�@U�<#T��@UO]�
�@U/�)r^�@UF�Z̄@Ud]%� �@U@Ϭk�g@U8�T�@UH�Fhz�@UT��K�x@U<��� @UM�3�Ѱ@UY���!@UX�P���@U`�yk�@U�S��s@U�A�K@U��Y��@U�p�<�q@U�+	>u@U�JoӃ@U�Ԣ��i@U���?�@U�*W'��@U����@U�3�o�@U�c�5��@U�&r|a�@U�����@U����pk@V�\G~�@V!5tw��@VP�+R�@V8X��޹@V+����[@V*]�E�@U��`q@U�Q��b�@UӘ��Ys@U�����@U�t�ĸ�@U�0���!@Uř;TL/@U�e.��]@U��#?�@Uת?�	[@U�V:��@U�λ˭@U�	�yc@U�2�ޗ@U��`��3@T����@T�"�:>O@R
#��;@O����̨@N}<F�Ѩ@Iq��>�@J����@L�:�_I@O�:�ks@Q5�뇯�@R�E<O��@S�Jj�%�@T+���@T9ҝ0�g@TP�w��@ToOh���@T���j@T���*�@T��;��@U�a�!�@U.�oT@UF�H�w@U����@Uz۫9+�@U�"�`��@U�9,�-�@V%<A���@VC�u�@Vr��.-%@ViJ(%/@VL�Y���@U�'��@U��:Q@U�#{�Y@V*%��5E@Vy6���@V��S_<�@V���=��@V�����@V�1���@V�%�uZq@Vq8fݴ�@VN�:�@V�,�v%@V�o��"�@V�v�"�@V�Ϟ k@Vzr ;�@V/�L7�@V0�x��@V$���@U�SR@VA�e@U����@U�t���+@Uy��,��@UFqŉ�@UYl��@Um���4�@U��j:@UuRDA([@U��QS�@Tܭ@��@U��?\Vy@U�a��@V[�[�@Vt,����@V�ڝ``5@W�F2F@V�����Y@V���:@VwL�Ps@Va�X��@V�n����@V�CjQ@V�m63O�@V�"rM��@VY�d��@V>,v��3@Vd�4�	@Vy�D��/@VVRo�Kl@V=�5���@VM�M^�@V?~L�i@Vd�x�@V>uW��]@V}wJ��@V��m%Bw@V���sS@Vb cU��@VE�~ܮ�@V)F�S@U�)W��D@V}'s�<@Vqca�(@V"��O�@V!P�@V�G)O @U� ��@V '}3Y@V�C��@V�{��a@U�5p�s@U�Mt�� @U��nJ�@U��q-�<@U����v9@U�h(@U[cE0��@T�E�T@Ty�5IM@S��U,�@Tq�6�l@TL`p��@T.�2�@T)�ڹ��@T� �}�@T��|�@T�G���@TH���\1@SW�e��O@QU_��Q@P����@OJ^��@P�ù��m@QK���T@Ry3�p�@S�}��X@S��i��0@T�w�@T�7(p�9@T���[�w@T�,��3@T�-K�@T�n؛~�@T���3@T��H@T��l�@T�4o@)@T��Pty@T�эo�@T�$��T@T�Sm�L�@U*[d߄e@U`�ߚ�@Uv(�D��@U���0��@U`~;��@U�n���@U}K�̫I@U�gi��@U�U��ٙ@U��F��(@U�3�g^�@UƣË��@U� �ϯ@U�����@U���A�}@UՂ�iZ	@Uģ:ҧh@U�!5#g@U�S�gb/@U�Q%��(@U���xx�@U��y��@U��F�>�@Uƶ�@U���V�@Up��*	T@U���)��@U�!�|�@U�x��2@U�'!$�@U�$I�0�@U���eh1@U�h?�{]@U��xTk@UTERu�@Uѡ���@TD�����@R�����@RW��ʠ�@N�[`t��@NJh7�W�@L7eD�@H֥�@M�@K/43�%@M��Ei�@P�CH!��@Q�pL��@R�1B���@SK�1��@S6ϟ��@S(,�7��@S-�ɕ�@SI7�K(�@SuڏW\�@S���4��@S��
�k@S�V�p�@T��9T�@T�l�~�@U)�(�a�@U��>A@U�s0K:�@Uœ��ϓ@U���:c@U�Y}�@U�u9譣@U|�@R��@U��NtS@V�ҥ��@VR�êmy@V�?}�@Vz��0��@Vs�RȔ�@Vr�m�^d@U��<@U��=A�@U�I7B�@U���:�@Uڵ �
�@U�\~hY@VM��^@V��ĩ%@V}��_@V&xp�@U�^��@U��+��@Ujp�L@Ur�л��@U;�<�t@@UA+ Z�@U���a@T�ڌ��}@T���LS�@T�4~�%@T�0B��@U��ֻ@U#��#�$@U>A}��t@UB�rY�@UH��R�@U�J���@U��@k�[@V2$�.:�@VX���"k@VO5@V"j1��@U�ZQU�@U������@U����" @U�����@U��u#�@U�H�λ!@U���H�@U�wӔ�@V���@VN��ռ@U����o�@U�S�i��@Uǒ���@UӀ���@U�!{� (@Vq��ku@V6߉:�@V(	�3�@V�~H�@U���֖�@Uɉx�m@U�g�d��@U���ڔ�@U�S�i+T@UҴ��n@U�Q�-~�@U� ��@U��Э��@Uz�eA�@UTlf_w@U|�s	�@U��#F@U�*�I¨@Us+�(O$@ULޜ0�H@U5/o͠(@U�p^k@U
b�C}@T��i#j�@Tt��`@Sx����@Q����܅@O{�e��@R p��Q�@S<���@S�� ��@S2�2�[@S�}YOH�@S��@t@S�:�=�@S�ʞ�,@SQ�^���@R�:�jw@Q�z�Ci=@PR�J�st@L뢃�'@OȹVaj[@Qq$��@Re��T@Sw#u��X@S�[�s�@S��}~�@S��-&{�@T�;;@T,Y��@T.�����@T)n�Xr�@T>_���V@T= ��$U@T~���9@T���Q"d@T����J@T����ܯ@Tɳ$/�q@T�x����@U���W)@U(7l��@UF�!�O@UQE-O�H@Ui;j���@Uw��M@UEa��@Upo��@U���d��@U�7�<�@Uw�m�@Uk�V��@U���'@UzX���@U|4r�	%@U�����@Uu�5��@U^2t%�@U{�C�=@UzAq�{�@Uz�
�`@U�l��,@U�3�Qa#@U��%�Rd@Utl\/��@Uu����@UlZ���@U`���r�@UgjԻ.C@UIް��K@U.h
��@U=#���@U!��)4s@T�n�[i�@T�6G�@S�.�K�@Q�!�;�[@P�|]��@L3��(�@J�ۛsK@J^T�
�@G�syG�@I���0�@Kr��@M�d�k,@P�"$U�X@RH�	>�@S�����@SC��d�@R����@Ri!&)�@R����]@R�c���@SS�tV@S��*0\�@T`��Y�@T�d��P@TT~�_�@T�-L-�x@T��B�0@U�o�z�@U��@U !���O@T�hJ��@T���&��@UX�Ά��@U�<��t@U�H���K@U���8u@U��;c�@U�R̬J�@U��?= @U��*�@U;�8D�@U2&��W@UU��]�@U|��
)�@U��Q�0@U���L@U����v�@U�ͥx{S@U�h,��@UȦ��\�@U�n��@U">{0�3@T|¯���@S�Inו@S���f�#@Th�W%�@TL�� @T!�)��@Tr�
�V�@T{��ߩ�@Ty`钴(@TՎ`HG�@T���z�x@U$I�[@U3��@�z@UJE*U�@U Zd�H@U)�qa [@U
>��I@U��Ԉ�@U�d�@T줽�=@T̚��Օ@T��r[@T�<��Du@T���-ʛ@T�>�W(�@T���.l@T��qӅ�@UR��Y@U7�4� �@UEH�U@UOlg\@U'.'R�@U?"�F�@Ud���`@U|��+��@U�����Y@U��1���@Ujϫf�@Uh�i�P@UW.\���@Uk��l@U��T�pK@U�����@UT6[+@U4���X@U9��:k@U/�o@V�@T�u0d��@TƎAb�@T��8�>1@T��$�@T���@T��A��@T�m�q��@T�E��@T��h�C@T���c�@TK�z���@S�B�b~%@S��F��@Q�!n�@O��B�@NG�s��u@Q���Z7�@R^��J@Rs`�@Rw��K@R�a���<@R�A�q@R�@��;�@R�+&n�h@S��Cs�@R��5n�@R%5M�T�@PtO�F�'@L�K�@Poѷ@OǑr�g@QM�F�+�@RP��H��@R�f${�,@R�I�P5@S�Ed�@SN���o@SyU��qh@S�`cљ@S�p ���@S��o�t@T�D��!@T6��l @Tr����@TN��-
�@Tg>�3G@Td���,s@Tt{�j�@T��g�xM@T�����@T�PF�^�@T�y�7XA@U5~o�"�@UB�����@UB��%@U1��H@UH�!�@UHz�@UC�,$��@U:��h7@UG��@UL�$>T@UI���o�@UA!|�@U!�i߃@T�49[{�@U�"��@U*�x�@Uw�x�@U�2��@U�	��@U#���|�@U��O"@T�Z*�#�@U.�Cs�@T��y.mo@T�ċ���@T��䩂�@T������@T��G��@Tq�DW�@T4ϱ�߅@S�"~�@R�<���@P�=��@N�#e,�o@I:����@H���1%@GGͣ���@H�H�@I}��ǁ@JXߨ	,�@J�"	o@�@P����K{@Q�Տ��@Rx�M�s\@S1��/a@Rj�NHZO@R/��,�@Ri�v��)@R��v�@Si���y@S�>�J�@S�(IQ�@S�p)Z3�@S�ET��;@TAg>��@T9�*`�;@TE��!3c@Ts�� k@Tw9b��7@T�`�A�@T���	��@T���J�@T̜X+�q@T�F�R�@T��~�n@T�V�:8/@T��P`C@U*p�WzU@U5��Q}4@T�=%oy\@T�H��M�@T�x�nba@T�fxd��@T�0��P�@T�X�Se@T�%�n;�@T>�D~�@S�+	��Y@S5��	fx@SE�ىT�@Sj?8@P@R�=�6��@RW&����@R8��+b�@R�ΐ;P@R�BB�O@R�c8:@@SY��6��@S`�4i@SV!��@S(o7z�@S�6��s@S�}؎s@S���V@S���y�!@S�r�@S�/]��@S��X<�@S��Dg�@S� ���C@Sf:G�M_@SxJ@�-9@S��#4�@S���S8@S�tR1I�@S�����_@T=u@T6l@T*9!+'@T?(�l�@Td�w^�@T�`[ZZC@T��U�:�@T��>3_@T��磃�@Tά#��@T� :w�@T���p�@U�%O@T��>��b@T�@T�uQz�@UX�.�E@U蓼K�@T������@T�T��S*@TlN�}!�@T8e|U��@S�]��@S��F#��@S�VM��@S�Jo�l�@T�.��@T�Wd-@S�^��qI@S��P8�@Syi�ѸM@SAR��]`@R�ns#�;@Q�>�8(@P΋BX7�@P.g�R,@N�.����@L֞���@Oy�g�n�@Q��O7�D@QI&L���@Q���O�]@Q��'��@R��jR!@R
86D�m@R5�qҚg@R4��q$�@Q�c�m��@Q}��W?@Q���x�@N�7-�h@Ocł�� @NwY7I@P��|jy�@Qu�%��@R7O��@R@��"�`@Rg���8�@R�,���@R�%�]+�@SA+���@S@�$m�@S��C%xc@S�%��u@S�ۯ�_�@TW�n�A@T
�.|u�@T�m1ס@T��`+H@S����@T'J�7�@T�JƱE@T��_�qA@T��Ax��@TӐ��@T�����@T�](B7�@U�H7�U@U8:	�%@U/*��u@U$p��Bt@U��Ǹ@U���j�@T��e�@T���\@T�ǣ��@T�(�Mm@T�p�H��@T�jv�l@T�����b@T�d)��@T��5n��@Tv�=B�@Tk?�@T��8@TzS�"X�@Tg!�z	�@TF��J,�@T32�M�@T7#B{@S����J@Sܳm���@S�$��'@S����6�@S )�2@Qr.�|�	@L���ֲ@I�Dȁ@FG7��@F�(!�S@F�3���@H��[�@KD|�L��@K��ںm@L\
j�@K⑇�e�@P�\�8}X@Q�2�c �@R��3J�@Q�����@Rބ�_@RQr�Ϧg@RP>N��B@R��[�z�@R�=��+K@R������@S	1;��/@R�6��0@S#W��(@SJ0-T��@Sz�i��@S�C�|@S�`�uk@S�5�׺C@S����F?@T>���@T1]X�zS@T"�����@T��p�)@TT����@T^�]�d@TV{�<u�@T�M��@S�$�ڠ�@S���(5@S��<�@S�i�Ԣm@S�0u�$%@S�:1e@S
Ed/m@R7)�ՎC@QXݷ>��@PO��j�@M��
��@O=��?�i@P��GrW@P�iBF�@P�Uɹ,	@P�Y3j�k@P���5@P�}3�>�@QSfW�
!@Q[{��@Qr�����@Q����`�@Q�y��@Q��ﮠ�@Q�if�>@Q�)7���@Q�gm�@Q�����@Rp���1@R=0�Rc@R[s�m@Rk��L@Rz��u)@R�3 X�Y@S'�I�@S �䫅�@S>�����@Socly�@SPڟ�O@SN����@Su��f�@S����@S�D���@S��o�@Sߥ-�@S�Q��@T$�Ɖ�@T'G����@TP�� �)@Tf��

3@T{h
i:H@T�Ol�Ζ@ThJ�8�@Tv#W���@T|
�UVq@T5����W@S�~:F�@S3�J�}@R_ �oC@R?����@R�(3�d@Q�z+.s�@RmRu�!�@R���1�'@R�����@R�aT�:=@RUx�`@Q��3�8/@P��-<��@OH<�I.�@MEfX��@I�"K�k@G���/r�@G�'��H@H���2�@I䂨�٘@O˶��',@Pu];L��@P�
2�e�@Qe
=�1@Qz�Z-��@Q��"��e@Q��� �S@Q[�cv @Qd�:�@P���3�K@P :8���@P�\�@NE(�N��@P{�XC@P�F�@QF����@Q��Gp)j@Q�\驑�@Q�s�s21@RaO�S�@RXA�b�@R�{�kw@R�U]va@S*Oves@SU���Q@SV��:g\@S{�����@S�R����@S��d��{@S��i��7@S��W[@Tl���@T-z��R3@T?P��@Th�:8�@T���u+�@Ty���4O@T���&�@T�N*��@T��:�@@T���:@T�4�}l @T�<����@Tg���U<@TVZG��g@T^��G3@T�-c
�@S��Ӆ@S��Z���@S�+�"�@S�F`���@S�Ƨ���@S�{d���@Ss��۰#@Sa<O��<@Sl����@Se,�s-@Sk�-�@S%��g�Y@S5���L@S2$��@R�&�ճ@R�́��@Rֹ�Ț�@R�=vH[�@Qҹ	H{@P>��5t�@J��}�M@F��S��@D7Q�pI�@DR�]�_�@Fѫ�O@I��Q){K@JY��<V�@K�\���@K+^�Q0�@I<�cMpM@K�e���@P��H��@P̟�1l�@P��{ �Q@Q.�G��@Q_�c��@Q���s�@Q�~K�y@Q�o�'��@R)� P�@R8ǅ;7@R^ƍ�8@R���gϔ@R{��6]@R��V��,@RԪ�U��@S�}�rE@SP(��n�@ShR���-@S�+�8��@S�)9i�@S}�g�s�@S����M@S�1s��Q@S����Q@S���@S��`8T@R�Ll"3@R�a�p��@R�:�dc@R��fe@R���@R-r_5+@Q��ś��@Py�浢@MVQ�� @IRՓ�Y�@El��OK@E�e����@G|0D��@J�����@N�$����@O�\|F�K@N�[c9,�@O�x�@O��os@O���ᘘ@O�P�F#�@PS�ZG(�@PE4=��9@Ph�!b@Pr1"��S@P��3���@PÈ�wF�@P�I���@P���i@QG�=H�T@QX�Tp��@Qd���r�@Q��@���@Q�h��@Q����)@Rlt�k�@R9�"du@RI�87��@RF��:A�@RT��`�@RZ9��ï@Rh��U@R�=y�E@R�aҐh�@R�����@R�����@S,Ehr@SIi��z@S�q�b�+@S��:r��@S�v`ϫ{@S�_}��@S���^G�@S�F%Йc@S2"2N�i@R�ș�}j@Qƞ�(l�@PZ�\dD@@LF�|�@L�����@L�c(�;@N+�B�UH@O$7���@PM$�!@�@P�އe@P�|��!@P����@L��|�#@J�X��m@HZ��� �@F���/�@E�;��@FZ�Yk�@D�@�a��@F���� @JK�MBD�@Le�Mq�H@OWJ�y�@P[-�^&�@P�0/���@P֎����@Q)���@P�9��>�@P��(+��@P5:��t@Oȝ�u@N�)�-�@OV!��
�@Pf���}�@P�Q�t�&@P�_C��l@P�&�
��@QO&�ÂO@Q��{R.a@Q�(�+�@Q��S��[@RO�4Cu@R��ļ@R� �p[@R�Vx�N�@R�k�3�@Ss�D�@SFJ�˅@SZ�~u�@SN����i@SD����@S?}u�Q�@Stދj��@Sƺ�cT@S����@S݈�-ύ@S�	9�Ȼ@S�g$��@S�Zi�a[@S�~/X_@T����@S�qL:j�@S�0��@S�B���u@S�$R.g@Sqk���@SA��`@S���@S�K��+@R�m�M~�@R�v��@R�pk)�@Rp��'#U@R4w�
�@R8V$�dS@R(�l�@RIky�@Rdz�
S@Q�C��@Qǩ_w	@Q��Oy^@Q�H�@Q�T�A@Q��b�:#@Q�A%�B�@Q��$e�i@Q!v��M�@P㜄��@Lu,"X@H�v5�x@C�Ӥl^�@C�#���@GJ��	>�@J5Q�ւ�@J��@L`@JEB�y@@I<��4�@K�[Yz�@L�ӭ���@L~�Η@P��@>%@P]�N	yI@P�_���o@P�O���Q@Q#6G @Q%�64�@Qk�G�ð@Qu�Y�B�@Q��hβ@Q���'@R����@RPx�Nl@RP�{�S@ReG9�@Reu��sk@R�]���@R���@R�vy���@R������@R��!;��@R�&B|�@Rb	��@R�ӻ{��@R���ܟ0@R��3Ն@QA"n�G�@QnJ����@Q��9W/0@Q�qbۄ@QR��1&D@P��\�+@O���V�@L�%�9U�@FT�RK�E@B;�g��@9�!1��T@=K��!@@�jЧ�@C3���q�@F�+�U@Lt��4u�@MZ_�)Ó@L��1�@M,�C8@L�ՠ��@NT�@Ca@N���{�@N�HMҫ(@N�d�<�@N��[��@Oi'%��@O�:��X@O���)@P	�o��@PQ�_@P:���}�@Pr�c��@P��!(��@P����A@P�y�F+@Q�sئ�@Q*�4�4�@P�fn��@Q����C@Q3F'�4I@QE��U�@Q;�?�Hi@QZOu��@Q��a��@Q����@Q�K��or@Q���Ǯ�@R:^d!�@R�g\�k5@R���ݔ�@R���l3�@R�{j6I@R��:��f@R��Ϧ��@R)Be��@Q�;��!@O�"�8ST@K�Z��@E��r��@EYt��#@FL
�@F���n�@IY\�X:M@I�V<���@JͦQ�/)@K�q�@I�����@E��Ta
�@D�E���@A˱���g@?�&3QK�@?JJ�k@@`�,U�t@A��:+\@Eo1:�E@GI��wd@J�7�~�5@M]O��q@N����2@O}T�'S@P',k[�@P>h�P�i@PkW�ҟ=@Popy�@PT��U@P_a(��K@PZ�&�.@P�XX}\@Pz��J!�@P�}	��@Pҍ�>�H@P��R[�`@Q�s[b�@Q�W�;�@Q��|nv�@R3�i	��@RH�<'@RO�6j,M@R`��m:�@R�ٲ8@RÞ�Ȝ#@R�T�@R�DB�m@SG�ȏ@R��Hɴ@R�DMN �@RͬHɉ@R��Ä�@S=��݅W@SA��M�@S@�:�H@SHa� �@SO(y$	@SE��U@S\�	[*�@SC]�&M@S(���T@R�If_@R�q�c@R�2[(�%@REک��y@RQ�")/@Q��~)�@Q�@Lgc@Q������@QWS:1H�@Q)�t{@Q8� �H�@Q8��z�@QJ$^��@P�Lq�}1@Pč�i5�@P��^ޛ�@P��M$e@P��#��I@P��1@�t@P���VZ@Q��n�@Q��@QOh��V@Q/
HЪD@P驅�;'@P��C�[5@O�I�@K�Q@�r@;*!�0��@B�q֘�T@F�B��O@J*s��q@K��歇�@IIqIp�7@Ia� K@@J� C@L,݄Z�Q@K<[w�U�@O�c��#@P�9���@PU+VvD8@Ph�H��@Pw��2�@P�����@P�E6d�@Q\w3��@Q0��-'�@Q%pq���@QHoM�o�@Q��]g@Qr8�j{B@Qi�w��s@Q|�8�3@Q�RV��@Q����ǲ@Q�Ȓ�@V@QCa���`@QA�l��=@Q3>���@Q&F��z�@Q/�GO�@Q*���@Q.f�+�@P;�ǐ��@P�ܺ�@P��9��@P�)\1˕@P��hw��@P.��7�@M$xd�W�@GTɇ��@C9��_t�@5�V�@2g��S�@5���)�@;�T��E@@��̠e	@B��Q%E�@E��qՔ@J+~	�@J��b�Ja@J���G�@K���T@Kڠ��t#@L�2a��U@M |�u @M�"�@M��X��@N9oʺ��@M�TdwET@N�Ο�/@O��$c��@O� L�7@OJ`4}@OB@}�Y]@O:�5��@O���He0@OѓELk@O��DP��@Or��FӍ@OS����h@O÷�9�@P��/@Pt%5f�@P&-��S�@P� ���@P���y$@P���&��@Q��݅@Q�¬�@Qviy1+@Qç<�@Q�`N�`�@Q�����@Q��7�0@Q��$��@QҺ��	@P�`uM@�@O�<t�t�@L�@�5/�@F�M��H5@B ��G�@@Ձo�6�@A�y4ys�@B��Ҿ�A@E\
���@E:��oc@C�����@B��k��@@�%�tp%@>@54p�@;t��&@<^ϓ<�@;V�PY@8�'���U@<1�� sx@Ag���	@C�prq�@C��V�@I�Ƙ	��@L���~@ML ��@N3|U�]�@O ��]c@O��1Iv@Oʮ�A1�@P"��7�?@Ph��:�@P?'���@P*5XX�Y@P}�Qm�@P��X�TP@P���Ҹ<@Q7��N�`@Q#W�D@Q~�AB-d@Q�ק�_2@Q�:���@R���'�@R>���y@Rb�(��@R��dF @R�[օ�3@R����@R�_N(f@R�?6�f@R���6u�@R�?`�@R����K�@R��񔫵@R�N44G�@R�y����@R�Dh5=�@R�f�c�@R�x\@Ryq�B	@Ru�h�T@R��:��@RY�}���@RCAׄ��@Q��G@Q�d'=A�@Qm'�Z@Q%�8.d@P��:q@P�i�Ļ�@P�ّ�>@Pi����@PT�n�@P%@lh'@PՃ��@O���3�o@O���Q@OH���p@OE��u�@OV�;��=@O���J
@O�%�(�@P���ա@P�)~z}@P��4>�(@P��7m?1@P��<[�t@Qu��@Q>W��~1@Qo'���H@Q'�e'/@N�ф�t�@49̂��@@q�Q�@F���k��@J�_2�_�@JO'�6K@H�S�ϑ@H���J@I��9Fh@KK�RK"@Lh���D@LV.�>�@Pl�Ċ�@O��s���@O��fu�@O�y&|Sx@P-��#@P* �q�@P(�!j@PL�,�h�@P`�^�a�@PK�l�e@P��q�K@P� ���@P�����@P���@�}@P��w���@P��5R�Q@PS�ߵCk@O����@O�]���@O�9/�M@O���lC�@Ok�Jps�@OrA�f�W@O��gj��@O5&��<@P?����@P���L|@P�`ĵ��@P��2�@N)�O�d�@J#$j�	�@D`��6��@:K�����@,8&lC@0��ă@5�47���@;��6/�P@?eyUx@A}i:s�@BҐ�ɫ�@G��`d@I��s?@G�AQ�@H��*��@Ic��0@Jy=����@J��x61�@K+94׽@K}h�%@L/7�/��@Lͻoi��@M`$a
�h@M�w��m@N\�a7�@M�.
.�@M�x':�X@M�bΏf�@NJ��Q�@N1�X���@M�@���-@M�����+@M�̈́��{@MЧb�(�@NBp��@NOي�@(@N�4�m�-@Oz��ð@OD��W��@O\@�JpT@O��+���@P(O�;e@P~����@P������@P����@QoCE@Q���L@P�����)@P��D�B�@Of�g���@L��JW}p@I�����@B-�3~Q7@;~�b]P@<���.��@@�n��@@��C܉@A�:[S@@��	�X�@@]t�z��@?Y�wm�m@<���y��@:D�){@8����@=K2�qQ�@7����,@7C�F8M@9˥f��@?��E4�@A��K<�@Cvj�E@I<ܳh?@LP]x���@L��LM�)@M�c�[�M@N�ɞ̙#@O!f\>@O����@P����\@P&��[@P6�@��y@P_��n�@P�Q��@P����;O@Q[��T|�@Q˲lG�e@Q��uB�@Q�����-@Q����@Q��:|�T@R�D#@R57�6�)@Rha���@R~}^��L@Rx�M�]@R��77�@Rſ�I�@R�H��?@R}4��T@RT74��@Ras�'�C@RJd���@R9�a7��@RP	��z@R4�9^2@Q��V���@Q�K|>�@Q����@Qzf�ꕻ@Qf�;e@Q9&�}�@P�y��1@P����O�@P7 �#�@P^C��y@Oӎ��@Ov�U�@Ogy�
�@N�ɉQX-@N%�B��@N#�Qߠ�@M��v�5@MܪWv�@M�S
��@MS�[�@M{<��G@M�ܹ.��@M��$Y�@M��["E@NSR���@N��gD�@Oy�XM� @P*�i��@P��dM(�@P�"��U@QW+!�Б@Q��bM�y@Rj$�>@Rׇ�#_s@RC����@4H���	p@8ܸ��2�@F5��ke�@L1���v�@K@ݷR�@I��e:�@G�ݚ4O�@Hx Pv�E@J(�7��O@K�n��)@O����C@M���y�Y@OL�mu�X@NE*�o @Ne��[l@N�u�<ڵ@N��Gb:Q@N�Őe�@O5"��Mi@O��-�A3@O���t�p@Owe��J�@O2��b  @O�.���@N�i���@N�K��O�@NX�҉�G@M��D戕@M(P�	D�@M·i��@M]w�Z�@Mf���@L��i%�@M$��:�@Nq���K@O+���a�@P",�Y��@P�H�E7@P����z;@O|��Pγ@LYy.K@D��q��@B{
_� �@'����k@+�<3w@0����@6.�Vj�@<���@@P����@Ac���\i@C !�!�@F��	�3@E��9ظ�@E�Y'�V�@F����7@F�u��a@E�踩�A@C�c#S"�@F'|��o@K8�<>�@J��PV�@Lnۄ���@MJW��@M����[u@M�C�@L��=֗�@M!݉f�$@M6ޱ�@M~�	H�@L�Ýu�@L���p5@L�l���@L�tX0s�@L��w���@M��j��@M+�{a�@Ml� �@Md`*���@Mv0��|�@M��,[T@Nn��X��@N�����@OO��(��@Ol���Y@O��N�ߠ@O֟U�@P
J#�(@P�\�%@O���8�@M��0(=i@Jb�o�w�@E��WF�@;���u8�@8��V��@@;HGW�=�@?�%��>�@@QV�m�@@���f@>�j*/ќ@>���r�@=so�CO�@;m�� �@7Z$<=@3���~*@5���@6�u��q@7(S]�l�@:%l���+@@`���i@B_T��
6@EW����x@K��lB��@Lp��PJs@MQ�ngf@N5�0J��@No���A�@O$�����@O���V�@P8Ye��u@Pfb�F,�@PW� �ҭ@P��A�p�@Q~x���@QN���5@Q�_���@Q�f�7.�@Q���b�L@Q�[!��@Q��ՑO�@Q�I�:S�@Q�_��2w@R&�B�"@R)��@��@RO߯@-@R|����@R��9���@R����<�@R���o@Rp*���@R7��n�a@Q�*$��@Q�AV�Ӕ@Q�XX��@QvQ��e�@Q4�(�M@Q&�N5C@Pλ���@P��r���@P_n��u�@PFS��64@O�����@Oa�����@NX?����@M�G�I��@M�d��@Mx{`(�U@L����@L�M	��k@L6cIKD�@LA�X���@K���+@K�\l�|@Ke��i$@K?W%�S@K��U��T@K���O5@L!����@Lc@!3�|@M=����@M|��DS@NS y�$@O\o�,�@PN�]�6�@P���@QY��ck@Qӳ���@R��`G��@Sl7!Jd@S�y4$��@S��A9@4`X�2g@),�L��@A9�!$,@M�!T�|�@L���c�@IT'���O@H����\�@I-�K���@I2 m>+@L)����@Q��ut�@N����[�@LҊ���@M>z�Y@L�B2�@L��	��\@Mt�,�/A@M����Ou@M��N��A@NV|~��@N�lC@Mx����@M8S�~��@L��3��I@L؍�
�@Lb��Ay	@K�9R2[@K�d%�@K^K� �}@K��7��@K��q�p@K���k��@K���1ى@L��$��@M�*�� �@O���8�U@P|���&@P��'��@P���o!�@O�D���=@K���0�X@D����Q@Bt)8�>G@*�	Y��@1���]�@5K�\dP�@:E� e�O@<��(�It@?�?0��@A��ؕ�@D��av�@HW�`�28@H�$gԅm@E�B��_�@E��	p6@E{[9;�H@AG+�Hc@=�8$,�@D�(8�v@L�lAc@KHG�@K��`�h;@K��z�iP@Kq@��P`@KJ�3C@K_V�c��@KO�j��@K��t��@K��hq��@K7��p-E@KRX�֠�@K���'��@K�w����@K�/;X�@K��0�C�@K��v*�k@L ��`@L�����@M:$UV�k@M�q:`H�@N��8@NPP�2�H@NChOEf�@N2���;@NK�)��@N��GU�@O5a����@N�w}S�@M����@K���y�@Hxlx��@C��V0@9gT��q�@:�E��K@=�P�Y�@?��{-��@= ���@;LUJ�q	@:��'E�@9�L�&�@9��d!(@:,�He��@7ӶR�@2c�u�}y@1�:!- �@5{L���'@6��Po6�@<�*3���@@������@C��˿&@G�X�> �@Ib�Z�@Md�"�@M�@��l�@NVS�A�C@NchV�@N�Q��:o@OT�%���@P��5��@P�����@P�VD%@P��]@Q-{/��{@Ql�@QQ����@Q�<�.�@Q���E~�@Q���:�@Q��X��@Q�Q:��d@Q���OR�@QȄ����@Q�K�4�Y@R����@R.��DWL@R!�C���@RF(U��!@R%�b�
@Q�;V
K�@Qj��h�@Q
�9�@Q����@P�8N���@PQz#i=�@P^4.��@O���k@O��l}�E@O1VG�X@N�,�V�@N(�� �@M�ͨoo�@LȁW��@L>A1m1Y@LN��a@Kʹ�C�@K7K�p�{@KL.��(�@J�@o�`@J�)Vj5�@J��d�@J$����@JS'���@JLt.��3@JY�H�"@J>^D;@J�_6T<q@K�מ�@K�w�SA@L�R�X�@M�	�@��@N�\j���@Oӹ�L��@P�ǈ{l@Q��@�@Qїl��@R�=m�m�@S�fv8�@TI�U��@T�YO�'�@S�Y�r�@2V�-��@"��7>�@9�����@P۬3@a@M&>!P�@J{��O�(@H�f��@I����6�@I��.��M@I����B�@L[��{T�@O8=��S1@LN%)fM@I��h��@J�Bо�@K�q�J��@Lp�lp@L��d}S�@L��tT�@L޻,�$k@Lo�"��3@K�G����@K`�,]��@K'��+�s@J��M��+@J �䑞o@I��S�S�@I��}��@I�v�٩�@I��	�@I� �dG�@J $� �@K3׋	��@L{�	� @M����@PCklu�T@P����X�@Q@�.��@Q	V�@O����E@J�i���@G��<�@By���@2{�j�]�@:��0"�5@;�Z\A�Y@<3[�>�@;Ն���@=2���fD@A��"@D�$��i@F�䪤�@H>���}@EhYs�dk@E3��>�0@DA�I��@>�R"q@;���n�@A������@N�4�@Kǈ�7@J=$5Um�@I��Ŵ%�@JP���E@J��R�@J�j'�L�@J�;��@J�&�8d@J�f�:I�@J���L@Jyv�7@J�h�Yd@K��7��@K�&`�5#@L��%d@L�<{�%�@MO�l�&�@M`���@My�yٓ-@M���AT@M�(�O�@M�iIT@N&תd�@M��|Z�@M�r�i@{@N>#Z��@Nm���΍@M��~��1@L�娡�@JB&�\U@F����� @B�&���@;�wI�0{@<Z�'{@>6��C�@=�3ЇK@<	���@9�T$Ƨ8@8!��)ȝ@8,��Q@8��AY@8�a���H@7DM��h!@70L���{@7\�;7@8}�~�l@:O�G�@?�!��@C=0?��@HV�I�@JC ׍s@K]XU�r�@N��̏�@N��L@N�8��0�@O�8f���@O��C�@Nt"k�O�@P [�-eI@Q���@P��?��@P��:@Q��6ݱ@Q(����@Q���K�@QYV����@Qu��A�p@Q��I�	@Q��m#��@Q^-�Y��@Qg�Q�P@Q�Р�C�@Q�4�Q�o@Qt���Q@QmWӢ;@Q��|?�@Q��c��@Q��~�@Q2-+�@P�3/Rز@PH-�
,|@Oy�m`�@N��AW@N�qLE�@NV�� ��@N��O�c@M��J��@MJ1���@L�8u`w@K�V�L�@Kk�bI�@J��J��@J��s�_�@Jj�ǣ�-@I�Z�	@Ij��.m`@I@Q���x@Idx�L�@I9��߆g@I4-@��@H�P ��@I?)�tk5@I��z�د@I�.z���@J,4���,@K^��CQ@K��%@Ls�ld�c@ML�)|@NU0'[��@O��%��@Pjw%e��@P�Vl��@Q�j��'@R��oW@S��b �@T=Ym��@T��p�P@T�.�@S�k���C@9p�و�@'��з�(@2���c5[@P	��`@N��V3-�@Lpi��@I�>����@I��OcK@I*��u@H���G�@H�q��Ph@I��.�@K���a��@O���@M)����@Jt�J�}@KŐA S�@K�QY��@K�Ñ�9�@K�KC��@J̀ޟ�O@JNnP%��@I�-P�@H��
e��@H��]X-\@H �
��<@G�dR@Gr�Mf\�@Gi)��@H�G@H�����@I�B�þ�@K?��.=@L����+@N�q��/@P]�f�e@Q�پ�@Q]T�j@P�M����@M�H���@I!4&[v�@J��&K�@2��N�%F@9Y�`��@>k���PT@>�psǤh@<�M�B�@;��Qw�@: P��@?h��E�Q@C'��KS!@E ]���@I"��� ;@E���*�@E6]�Kcp@C������@@[���@:j�}5�@@���u�@N����3@LkC�>j�@Jt����@Ijr���@H�JX�b)@I�T^�>�@JO�d@JS�	ԯ@Jp����@Ji��m*u@K$�~���@K�`'�4@K�Y���@L�A�6��@L���ϒp@L���/A@L�s3X�5@Mp��(��@Myɪ�Q-@M��/>�@M�	���@N%:�EDd@NO�2�@N½��@M�!W��l@N48��@Nu�L�@M�XY�7@MI�TCU@Kč�-��@J"���DD@GI�t"i@C�C�@@��"�#@<����W�@:�����@<%{ܸ��@>���8�s@;逷HL�@;@ A@;�I�V�m@:9t!{ѐ@: `1P1@9��K�@;8[`�4�@<�օ��@=��%�@>�<�t>�@Bu��o=@H� ���e@J���@L�A�*�@N'p,H=@OH�O߅�@P��˲@P2�O��@P�-�U�0@P�B�s@O���F�E@P����S�@P��}��@P�� �@P��lRJ�@P�oFN�/@Q�)dq@Q^��T�@QR�bKA�@Q8�d���@Q8wr6�d@Q 㬒�@Q���@Qp��h}@Q'�3�@Q#r�I@Q�LC��@Q&��ۑ@Q#�P��@P�@n�s�@P�D^�@@P�:��C�@O�m�mH@N��rK�@M��$Ѝ�@MP���b�@MR$`#@L�5+ؿ�@K�A�X@KO�TW�@J⟛�Q@JƗ��;@J:��PN�@I�����@I)�0^�@H�̋Ӱq@Hjދv�@G���7�@G�v���@G����_@H�/��@Hi7_c�@H��b��@H�V)Y�@H��<���@I2��(�@J.�̛@J��9�^@@KI<Jc>�@LI]!�a�@M7hqm��@N;��y�0@O�*���@Pk(3s��@P��O]@Q���g$/@R�YJ0�@Sz�;,�@TE@�$�@T��~Bm@T�m��i@T�A�/�@S��+s�@>��JB�@4����@8�B�ɿ@MN��4�@O���t@L�٨�j@I��cd=@H�y2�#@I"��v�@G��+�D@H�c���@ILB)n�@K|����@NG�T��@P�����@MHZ�`�@K0�!̻�@J�ө�&�@J��9�oM@JC���]t@Ix���T�@Hw�R��Y@GӻH�:�@G9�0��+@GK���@F���c�@Fw"[.(E@F�)iC{�@G)�2�@G�s���@H�RS��H@I�>k�@K>�O(��@M-'��I#@OOTe@P^�`�Q�@Q/�NU�]@QunϹ@P�Y�^�D@M)"B��@K���D@Bu��s�h@9*;
 �@<}����@@k���?�@@�����@?��:W�@>����@@��d�#�@A�G���Z@B�޶�K@D̸t*��@L5�#@LC����@F��W��Q@EE�
Δ�@C`�mN�@A}Z�K}@C�~��I�@O�k�@N̿���@J�K���@I�8I�k�@IӖ9NAs@I�|�.��@J-�O��=@J���fl�@K$�}��H@K�I�^ё@L�)���@L��i�	@L�\�hT�@L�h�>x@M� �@L� �Y{@M]ڮ.L�@M��Tn@Nt	%�H@NG��Ĳ@N���5�%@N�*Z\]@O�,Z"@O7���[@O��Hk�@NX�m�4]@N[��1��@N�z�Y@M(X���@L%^@J�xD8_�@HB�eN�@E�[�[�@CrJ7�j@At�Bz=@@����@<�CKY�E@>><!y�s@@�I�w@@�ɖ��@>ǂ���@>A=enm@>��.��@?{?�'@@���JI�@A�4yǼ�@A�&#���@Cx�
.S+@G{�n�B@P�&�@O&���@N��Eo7�@P�)/�@P�=�1�4@Q;F��˿@Q�z�!��@Q���s�@Qd���@Q\���o,@QVQ�}�;@P�(]�@Q�z���@Q'�Fuq@Q#l2��W@P���j�@P�Ș��'@QGK�b I@P�����@P���V@P���nq@P��Q��@P���q@P���q��@P�S�s�@P�el�@P����a@P��8��@Pb��Ͷ@P#zp%�@OT*���@M��)�M@L\�P�@L1�Z؛@K^���&d@K����x@J�E�
3@Ju@۽��@J9����@I����<#@IKgȸ4�@H�u����@HoB� ��@G�:��@G��3y��@G��k@G,���w@GUmܭ�@G�e�;�@G�p�ڻ@Hr{�@H:�j�y�@H���bE@I)����@I�!��?3@JM�C��@J��^��@K�q���5@L��^#@Mzᰡ8S@N�I���'@O��R��P@P���o��@QG�o��1@R �kꅳ@S9��@S���`G@Tq���]	@TK��6��@SHJuh�'@R�5ߖd�@PN�$Ʊ�@;]���w@<7�t3�@E4i�ߵG@O���1@P� ���@Mˊ��5h@I���@IȆ\O�W@I��
�E�@I�Vzލ#@H�=�@ILN$�@I����@K�����@Q�� =�@P�)j�P@I��N6	;@I����Q@H�'���Q@H+�����@F�@��C@F,�P�s�@E��p	SI@EGq�+E@D��H�̳@D�����@D���əu@Eq�mN@F5�C��	@GT_+T��@HRjR�@IǧU���@KrY��S@M;`�^Q@Oz�e@P+9E�5@P�!��@QaMJ��3@P�y/�PO@O��?(X@O�%�@@A��)@?o7 �s@A�S�u@BzC%W��@B�py���@Añs4F@A�*����@C�Qh�*�@D������@H_Bs�@H�9�7�@K$���@L�2�7|k@Om�iu�@K���"�k@G�H��۵@B� �?��@A޵9��@H��sNA�@Q�����B@K��8�@J͉����@J�2ĺ?K@J��AA2�@J��g�@KļV�я@L{.�m@L�Bs\�7@L��[Ϗ�@M
BWO�-@MS!�ږ�@M��qb>�@M^�w.[�@M�600�@N�.�{�@N�H3P5@O]����p@O���aŅ@P�C���@P=����@PJ��?K@P����@O����H@O��?�2@O��C��@N��� �C@M��Y�/K@L����@K���3��@J��d�@G����1@E��ӛ�L@D!�p�7�@B��}�E@B��0�)@?�fn5@@j�EF�D@B�w�#��@A�� #@B����@B�}�S%@C�>�ѹ@D�Ɗb�y@E97M�@C�q��d�@G����@L}�9�4[@P��T/�8@P���r|~@P�Y�h��@Qk�fi�@Qݗ)��@R���W�@RI�7'�@RVE�ؗ�@R)E?|x<@Q��D�v @P��%��@Q��6�F@Q�n���@Q�#n��@Q� �K@Q]X��[@PYF��P�@Q)�4H@P�T��-@P��۶��@PZu���B@Pb�Q���@PP~�$A@Pf��R�C@P# D=\@O��B�@PM��&k@O����#@N񠝠6I@N��.um@M��~i� @L�TÐ�]@L�c��c@KUWj�@J��]f$@I�<(�1�@I�O_�5@I]�[Å�@I2H��@H�:�if�@Gƈr ��@GJ�LS�q@F���{l@FC�5�Lk@F�����@F���@Ƿ@F$)<ɬ	@Fy9aLd@F����[@F�?�n�@G3@;���@G�+��}�@H܊��Q@H�л�}@In;��7@J-����0@KEI <��@L4#��@L�U&�z�@N#H�=�@O"�U�8@P=��n@Pl����	@P�c �za@Q��1E�@R����@S�
E?�T@Td�	��@Q���Z|�@Mr� Lk@E�e��@�@@s*u��@C�G
l��@P;�!�@Q�l����@P}��~�@P���*"7@Ol�h��%@M��Cɕ@LhZ-Q��@K9��C@I���Y@It�����@J�K��@I~�Hg@H�tu$��@P?�u��@R $iױ@K�f��@I;�Մ�@G��I?��@Fb���H@E����@D�w��Z�@D���L0@D ��$��@C�Cn��@Dx~��@C�X執�@D�&s$��@E�y� �@F�$�/�@H�<��W@I��L��@K;�v�\@M)�����@Nu����@O�4��w�@P޻uM	z@Q�4hB*�@Q���Ԅ@P���W��@P o=Z�@H��I#�<@B��yEwh@D����(@F,N���@F(J
h�@C���`@C����; @F����@G��չL@I���SSh@I����%�@I;,���@Nb��t6p@NB��l��@M��W��@K-�aV��@H]�5˟@E�5�O�/@F}�ߩ� @O�x��W3@L�aQX�@KU���@K@ڽ��@K��]e��@K{%=Bɽ@Lmg@���@M����O@MEa�<n�@M�_����@M�C)C�7@N>���@Nz0*��@N�w��3@O��K�x@O���R��@O��r���@P(��S��@P�I�P@P�G����@P����@P�|�B�@P��� �@P�,��#@PQ9��:�@P9�&�}@O���l�@N����T@N"C��@L�$ju+@K���U3I@I߮���@HT�tS@F��m�;@E��L@C@E�>�@D8����@A��06��@B����@BC"�0O�@D��|��@GT�)&�@I��|��'@J��l���@K�2≔@H��d͢m@M���E�@QL�(�I4@Q���%L�@RF	���\@Rl+|Uo�@R�Hlb�@R�0m�&8@R�y�Å<@S�g2U@R�S8���@R���g��@R��XN��@Q���ƻw@Rd�z��y@R%gGe��@Q��[D+@Q���,9�@Qr��č@QK���(E@P�P
�T@P�"š�@PVeܩ�@O��lP@P
}c�"�@O�Ӌ�@O}z���@N�zO(��@N^�>��@NV��@M��2L�u@Me�ΏVH@MM�x�i@L��O-�P@L!t�L�@J�O���w@I��6�MH@I0,����@H�x��8@H(�~���@G�r���@G:X>�@F���y�c@FU�)!'�@E��#&1@E�p�>�@E�!p�w�@E"Zvf_�@D��`,y�@DՌ���@Eig�8�@E��E��C@Em�u��@E����1@FJ?����@FÒq�"�@G�[�5`�@I/�F�Д@Ja�ro�+@K$+��a@@Lo�OP�@L�`�U	@M��,@N��Rn0C@N�W�םx@O��77;@Pf�+?�4@Q"�#�u@R*Ү�a/@S&LM!@RP�"r,@I�JbV�e@B��QXe�@J?�`<g#@N%�V�M@Q�e�6	@RY��xo�@QD
1�@P�����@P����@P��_^x�@P�v��@O�T�@�@Mą�k�@L�h(@K[RcW@JAh����@J�[�D,�@G�J��\@Mfq[���@R��,��@Ln��/h@H�c#R\@Gq��h�@E�|���@D�`�6�<@Da�f���@D^1t�@C�&��ą@C�L��@CҴ+y �@C�F9�@@D��HG@E�nݪ�@F m���@G����9�@I�5D8@J�'�-��@LV�y%�(@M�D̿�@Pb�ͳ�@Q F���@R�W�pU@R~xA7Y@Q�����@PG�.%fc@M�~�o�@I~}�TH�@IVƤQ�|@Ht���\C@Id��Ƙ�@G/N�M`)@HJ���]�@I�wW#��@I��G_$@G!��|�U@J���}�3@L���@`@Q���vӳ@O����L@N;<q�@M���ҡ`@JH�v'3�@J��-7|8@F��Գ@L����nk@Le/(e@K��V �@K~|�јx@K����P@L�2D �@L�����O@M�-G�@M�jv��@N�z��e@N��sn�Q@N�~�dp�@N����@OS�� ��@O� (�}�@P&ӯ^O�@PLշ1E�@P�=bz�_@P�5�>1@QI��r�@QA���@Q�7�8��@Qt���-@Q[B���@Q+Ug�0@P횭Vhd@P��ND�@PFӿ�/@O�ԍ�bh@N�^i���@M�fǶ��@LQ!Z��{@K(���I�@J�=қh@I�Y�&�@HJ�Ph]@HB�f[U@GF�n�@FL��x|@Gz~�zi@G"�*DE@HQ^���@K�`.
|�@Pk5N �@Pyi��@O5�Y��i@Q?���:�@R��=�@S/��@S eO16�@Sn��@R�p@��@R�"��}@S�tܔ�@S|�yFz@R��3�@R�~�<@R��O@Ra�n�@Rr�a:]@R�(>�@Q�����<@Qa&!+Ƿ@Q:�Qz+@P�%t8�$@P�����g@PU��Y@P�-�ZP@O�1�X4@ON�k��@N���8A�@NPK�e|@MՄ$��@M���&$7@ME��L>;@L�P��E�@L웽�2�@L��2C@K�WL��@J�5u�Z@I�Cmf�@H�l��s@G�$.�@GJ���@Fř�^�<@Fx��n�@E��ߍ�@E�<���_@E��!(�@Eyr��.�@EbD�Q[@D֬��?@D�,n��w@D@1�C��@C���_�y@C��{^�@DK���?@D���)f�@E����@E��m.�}@F��f�@H"���@I ����a@J-��M@J�s���0@K��?��@L��#�f�@M����5	@MӺ���@N%ߠo��@Ns��t�]@O�m�
�;@P�roc\�@QJ�� Cu@Qأa�T@Oq�<��@H���^@M�w�ac@S�`�(
[@Tvh���#@Sb�2���@R�>�X =@R>���:�@R�!����@R�K��t�@Q�Gy`�@Q%+w���@P݂x���@Nl��.��@O(B��
3@N:J�@L�N�z@�@L��@I[�kYT@Nƛ�^�@S��c�n@Q`g��K�@I�I$(�@H.�ɞ�Q@GQc��@FڮW��@ErOh�[�@D�UZw�@DXB-�@D	Q���@C�V0�@C��u�B�@C��9��@D�'�_G[@E�P��D�@G ���o@H�%<�P@JCȣ�7�@LJ�P��@N=_K�Ո@O��>6g@P�:|�G@Q����3@R�����@R~�&L\@QM�^�U�@P)��1�@Oځ N��@KODk͑@K:q@@L�9$S�s@K��1M,�@I�j��~c@I�#�w�@I��ӔY8@Js>�!:X@L�P�f�@P�x�f]@S��x�@Q� ��|@O�n�h�@Mk�(�kx@J�3SP@I:X�g�;@J]B�m�@J�6��@K>��K�@K�dLĦ�@K��*��;@L�Z��N�@L�A"���@M@K3@M����4S@M�b���l@N��	Q��@N��P�3C@N�ÿH�@Oc]f\��@O��%��@PK��+�@PV,Lc�<@Pw%��&@P��<BH@P�V@Q)�(�n<@Qn�!<!@Q�%��^@Q���`"@Q�(� �@QښX1��@Q������@Q[x�=sA@QM\m#@Q"8�0]�@P�2���*@Ps�h�L@Ov���@M��U�M@L�]���@J��k�K�@J��9S@H�a��$@J�t��k@L��w=�@L�H7�6\@Np#φj(@OҬ:���@P�6�+Dm@Q�
qZ��@R{kd͐�@R/���@Q��7�8H@R�/D��@Sұ��4@S���%�@S{��@S����L@T�A9/@TC�ݽ�S@S�K'л@R�S�+f�@S=�#3,�@R��	COh@RH�٧��@RK婵-@R����@Q�`�g@Q@iũ�@Qv!��@P��3{}d@Ps{0��@P,�?j�@P��|oY@O�Ѹ ��@O���@N�\AoZ�@N��A|�@M_�&?@M����@L�����@L��}w@Lu��x@LA��ݥ�@K�n���@JA]���@IN��1�0@H��5���@G�_e��@F��=���@EmX�ݸ@DeKE�K@Eա�۝P@EY�;��@E+���@E��h0@D��m��@D��t��@D�$���@D��n��@D��ft�a@D�N �/@EAt�u@E�\z�P@E�t�+�@F�֚*<d@G�c�힏@G�ɞ1��@H��
�@I��f}5@J�P��3�@Kш*Y�h@L���c�@MK�W�@M�?�o>5@M� ��#@Nm�A�@N�!���@P7���@PX-��@O�AI#�@LaSs@K�=�4i@TT4r�1@T��&>NA@TtO�ܻ@S���=��@T0���y@S�9�Hg�@T!�Q��@S���}.�@S��[�@R���F+@R.v���/@Qq5J��!@QtV�bEE@Q�.�G�@Q���@Pu(2g�@M���ix@Mo3��Mc@R&��譻@S�+�_@O���/�@J�y7��@HÊ�l�3@GE ��S@Fz�o83@EY�H�c�@Eo�@D����@�@D�S�IN@D����-@D�Tӏ�x@Ez*?�7_@Fn�>�Y�@G�c1<�@Hh����@J����u@K䁘��h@N�W��#@NmĿ�@P
���b�@P���U@R$��@'@Rm��f�6@RQ��Q@Q�DS(@RX�<X�G@O��ȧԠ@P3Mۦ�@PS����@P�@O���	@KA����@K5R����@J��[M@I���Q@L���@RO����@S^j+��@P�C��t@M�DȞq�@K�/��#�@K��8���@L��J
�(@L��@L��!�M@Ll��a�@L+|忝�@L(ʃ�{S@L���/-@Mg<ۏ�@M��h؛�@N�j0#@N�>ߟ�0@N����vS@N¹��q�@OW�\o7�@O���@�w@P`y��@PF���I@PvHer�-@P��*�t�@Q9:.��@Q�$�鴁@Q�>����@Q��7U��@RLt	~':@Rb���@RQ}�a��@R`I"��I@R��=�9@R�b	{@RZ{��WH@R�Y��y�@RI{{M��@R-<^詘@O���T@N�^R�@M�2fb��@Ma��V�@M.t��#)@K���3uw@N�z:w� @P���S@QR�<��u@Rt���ׁ@R$�qE4�@R����IK@SN��y��@T;���@@U����@T��f[��@T�	-Zv7@UJq�6�@U��3��@U�a���@T��/�1@S�m�,]@S��Y�
�@SDO%~��@SmZ�;o@RȐ��y@RH���t�@R)�̬�@Q���\�@QJ�r)�@P�Y���@P��*�+@P�GE�[@PN��g@O�_���@O��C倓@Ox�N#@ND��{�(@M�!�,M@L�!+�}@LZ��jw@K����w�@Kc�,EKa@Kk)!�J�@K�+_;�@J���}�@I��Ę @Iɗ�_�@G�2���@G\��G"�@F�Q���@FfO�ګ@E=V��|@E٣��i�@E���P��@EՋF2t4@E�D���x@E�6��$+@E�F��ɍ@E��0| �@E�x6�h@E�f�T{@E��E�@FwC�W|�@F�U�%�h@G���9�@GQi���@G�����+@HC�2f@H�����@Ia|U|h#@J6ԝgl�@K'��<�@L�]�Q�@L�r��g@M���R�@M�ȑ^^�@N�J�<�@NQ_�J�@Obr��	@P0e%>@O}�>�(�@LY+,�>�@I���>��@Q��Q�L�@Tݞ��H�@Tϻv�}8@U+�U�ӧ@U(� ��+@U8���@T�oaq�@T��!i�@T��tӑ@Ti���x@T)�d�@T];�s@SD�H��@R؝ŽF�@S�ι��@S1-��@R���$.@Q�(���A@Q)�dV�@RZ"b��8@P���ۘ�@R�E�A<�@L��+�@I�*��@H����k@HYV��t@G��o��@G$Wi�+@F��<�c@Fx8���@F�\�bM�@Fy�e݀�@G���8@G������@H���3�#@J,��Y�$@Kpi�o�S@LY�\�P@MCJ�6�@N�M2BY�@P"�싴!@QE܃-��@R<Z+���@SEAR�@S��-=�@S��F9�@UuaM�E@RoG��@Rƞ�>M@R��}>�@RP/o��@Q�4�xw[@P�)��>�@PX��a@P�ʯ�^@M�C� ��@O,���-@Qn�� �@T:��{[X@P����,}@M�����@K'V��@Ku)�k�m@L#�A t@L~�5�t$@Lĺ8n-@L?8���@K+Q�G�%@K�.�Ԗ@K�ꪽ�@LaRJ;�I@L�h�]�5@M;f}Ȭ�@M�j��o8@M�r'�+c@L黸}�@N��-�G@O)S�@O��[�5@P?2�c@P�����@P�dT[@QO���Y@Qv��t=�@Q���?�@Rx��M@R]<���I@R�.���O@R�WXM@SK<�{�@S�WY�E@SJ���[�@S[��l @R�u��@Q)L���P@P�_ZuI�@PnX��,/@P�H'2V�@P�(�e8_@QLE{�v�@Q����@Q�����A@R�}��\@Rk3��@R�)���1@SW�̫R�@T��G@Tq�����@TL��8@U��N�@U�BJ$��@Uj=C�'@UeKU�`u@Ushw�W@T��c�\@U��Z��@TlO���S@S��{(@S���Q@S@$[P�@R���KS@R-L=�87@Q㰦J��@Q�<OTF@QE,��<�@P�_�9�8@P����P�@PV?H���@P'F�1$@O�4}x;�@N��7$��@M�"�gE@M~*D� �@L�fäq�@L�o��@J���Y@J#��Xw@IP�b�P@H�">*�@H�%�^��@H2Q�*m@G���h �@G�N�.@G?ؤR2�@F�0#��@FAҧ��@E����j�@E�WM��@FP"w���@Fr��F�(@FZ�-�L@FV���'�@FH��΢�@FN��F-@F�V���@G����@GWF����@G�����;@H.5ڔ�@H]/��Q+@HK�;�XA@H��Oq��@I/WIHW�@I?I���@I���d��@J;�^9��@J�M��b�@K��5J�@K]ޟ�@K�} ���@L��S��@Mc����@M��9_�y@NCyM��#@OHT��~@PΘ��]@O�!����@M���
�@H2��DL�@Q>t4d;�@V?��Z�@U��GAt�@U�5fB��@V�FS@U�(#k@U������@U�@����@U1�+x�@Ux���@UVŝ1�'@Ul����@U_��1�@U1;�5��@U��7x`@U<�Y�o@Te�,�;�@Tx��O�a@S�\#m4�@R���@Sh�ЛS�@Q}J�%��@R�(���k@M��Cq�@L�c���@L�ѭ�@K�XN�@Kvh6 ̴@J�Lϊ}m@J�\�\~@JJ!{�wa@I�!��$@I�\��%�@I�x6���@Jl[��,@K���̀@LZWL(o_@L�7���h@MI��j(@Mz��{
X@Pi!uY�@P����X @Q���~@R������@S�ɅbiD@T�?���0@V7�;��@VX�o.�}@T��$�@T9�rw�@S�
��x@S�7`}�@S���?=�@R�7�y�@R@#�n@Sf�<m�@Q���S@L*�ph1U@QL��:5@R��D0�@Q"_�	1W@K�_,�1@G�PVm�;@G6s�b��@G�\X,��@H�>]�K+@I�=�}��@I�ʗ7+�@I�C�^3@Juorm|�@J��Z0@K �?d@Ka��3�@K�q�5-@L�;C  �@L������@My�F��@N��/��@N�툘�@N�`�\4 @O�����@PA�)�@P�r�:�H@Q1���@Qs��l?u@Q�*)��z@Q��F�W@RR��8��@R����^P@SP�k�Y�@S�q̩.x@SP
1dQ@U��m@TBb< ��@RV;.��@R)U��<�@R�f�^�E@R0a(�I3@R�d-q`Y@R�:� e@S`m �T�@T'{_'@S��(HK@R�
�N9�@S���7@T)��Qz@TJ���d�@T���CTX@T�V?���@U��щl@V"'B�3�@U�c6@UO2��[@T��U�@T�ӲG��@Tˈ��w]@T�̪�H@TI��Q�@S�v��;�@S�O�s@R�tj{~Q@Q���A�[@Q���E�@Q[�r�23@Q92�$�@P�0J�@P.�*k��@O���~�@N��$i8@N��=�@Mb�E�@LZ��#n�@Kp�K$�@J�	m�x@I����s@I�/���@HG� ��@G�(,���@F�����@F�8�K�@F\P��%@F }��"@Fn�	H��@F�b2p�+@F�(CV@F�w��@F��G�? @F�! ���@Fر�,�(@F���QEs@G&���@G���I[@G�p��z�@G����@G��ߜ@H6"�-�@H8���Na@HX�z�@Ha;a;@H�M�Ł�@I+w�@I6���f?@I�1Ks@J�y�e@Jvy�,��@J���)��@Jw�)�m�@J|�C�@J������@J�{���@K*$CK@KQ֋�Y;@Kg&d�J�@K�y�_Q@M<PB5�O@N��ؾ��@N�ǉ��@L�� 4��@I��5�@Ftǥ+/@Sv��0֛@V�{��2s@V�l���S@VB�Ҥ�@V\��`�@V1w_�]y@V6�y@C@V.���@U�X�b0Q@U��Ed@U�g��a�@U��M�O@V5d���@Vl�+s�P@V8d4Z6u@U��UW@U�ܫK�_@U��i$�@T�Z
�@R���@[�@T8���|@Q̎�B��@P,�fwM7@Pb�Ø�@P��b�@O��K�%@O���;�@Nn�me�@MŃ�p�[@M�t�/@Ld6�*Cs@L53��u@L2=�6�@Le���_0@M<�a1�S@M�>�P��@ND*lx�@N�1Ds�@O�s �zO@P ���^�@R6���@R�H6ҿ/@Sp�t@S�
o�@T���D+\@U��Z8�@V�}�։h@V,��c�@U6l��=@T��Z~;�@T���a�@Tu���x�@T|=� d�@S�&(�@R�����e@T�co�@Q����̉@L��f<��@L~��0x@QG�;���@S��uJ�@Kݛ��I@G���D�S@E��,�T@D�(_"@EZ���d@FCfK�O�@GR�cK�@HN�0�|m@I"�e��@I���_@J�'R|@JF�a�h@J��/Λ@K��-*�3@L��d�pK@MHԲ�W@@NJu�!�@N�s[�@N�u�=H�@O���?7�@P��+ �@P�*4�@Q���B@Qj����@Q�3��;�@R�4}��@R�8�'@S,d�ʿ)@T =o�\@S��:�@U���*js@U�["�I�@SCC-)�@Q����#@R�#3]��@Uf�B;�H@U�=��HU@Tҹ�2m�@S���N�@T! �eK�@Tʚ���@SMfA�dT@R�&��P�@R�����@S��y� @Sx��ׁ#@T��6�@Tfɬg3@TѵN6W�@T��r���@T�ZR�@T� ��Hw@TH�@M�@T3	�PN@T' v�V�@T��w�@S��/���@S)=t�@Ra�F�n�@Q�y���@QU� `��@P���,��@PH�w�2r@O��vV{k@N�����|@Mкfm@Lx��7�@LKQ��ε@K)��"�@JB3�8�@Id�@H5�b��@@G��/:�@G>�_]�C@F �R�a@E�^��;�@E2��@D��/g@D,OH�z�@C���~g@D�>E�@DYjTr~�@EH^�'�@E�ъ�e�@ES҂a��@EG����9@E�̮w��@E�]���I@E�g{��@E���0�@E���|��@F��Ӊ@F#l&Go�@E�E&�%@E�� 	k@E��g��$@E�5���@Fhs�:[@F[���@@FyC�ohc@G�қ�@G�<� ��@G|N,���@G���~�g@G��sH�@G'�A��,@G���pZP@H&��p1�@G� �c@G��f�x@GW[�!8+@Gi�u�@G��gc"i@G�� ��@J�꜕�@J�'	��@Is#U�@J-�LO�(@K^5>�nu@U��>�@W<��@W&U�od�@V��7ҟ-@V�]�@'@V��%�K�@Vrk1��0@U��'�
-@V�{��Z�@VLv�;B�@Ve-���@V{�v�0�@U����@U�_�N�@U�w~�W@Utc��r�@U�sͤe@V$D�j�U@S��ɒ�@R�7j�#&@R��kݍ�@R�u�@ID@RAs2��@Q��L@Q^�bF��@P��H�@P�.��x�@PkŃ�@O�����[@O�=@N�m����@N�Ȕ�;�@N�J�k8�@N�w�zK@O]R����@O�3ȩnw@P$�b�/k@P�����,@Q?iZ�(@Q���Q�@T�w�Ғ@TWp�C��@T��+! �@Ud�%�s}@V	5M�ӻ@Vv���S@V�+�d@V�C�_�@US���b@T����/@T���v��@TxD;� �@T�$M��@T8n���/@S�e��H�@T*_K @S@��F��@La�,�M@J{�@�@N%���qM@S3�q&@R䚤�@H#�� e@ES$:na�@C�� %�@C��j�@DCy��@Ep,�t8@F�ņ�@G��ӵD�@H��(��@I^�:SV�@Jo�=IUe@K�y�n�@K�(a���@L-@�wC�@M7R?�SC@M��nS~�@O�C���@O�F��{�@P^�լ�@P���d�@P��w�S@Q�@_ePz@Q��:��@R;ɋ��#@R�hz˦�@Sg�cmj@TM�e�@T4EX�fc@T�4u)~�@V��n�ؘ@S��_���@Q�����@P�'�e�@T��o�9@U�����@U}jhO<@U��`�@s@T]��=k@S�|+<M�@Rٝh��@R��[jw@Ro���� @R%��LP8@R���TL@S4�5�@S�9��_w@TK�P~�p@T3/T�@T&Ʈ>�@T��(X@S���Mc@S�q"W @S�%�l@S�L�0@S�����@Sjf.�|@R��'ĩ@R"���@Q��c��m@P�Ц��@PD�.#�"@O��^�@N�C�7��@M�y�+�;@L~�wE6�@L6�@�܇@K����n�@J��L@I{�2%��@H�j�yg@G��A�e%@F��m�.�@Fa�~�@E��z{A@D�~��~�@C��Fe��@C�NZ	�@B�B5߆�@Bx˾��x@B��;�ƕ@B������@B߷���i@C,�=���@Br����e@A�V����@A�-�e>�@B6��5 �@A� �7e@A�ur��e@Av�A!@A�%��@A��ك@A��;)��@A�Z�lir@B%��i@AƆ6���@A�n�^ZP@B\��@Bzo;�f@C�[�Q@C<.9��>@B�:sL�@B�l�Z��@CX��@C�f<��C@D?,�#��@D�z��5@D��#/oA@D�I�@D�f{Ma @E�;|*K@E���5@E ���@G��,BW@I�N��*u@Ib��bE@Ly��To�@P�BRҤ@U������@W<ɣ���@WI���@W-�;v-@V�Y���`@V�Y�5@V}����@V0'���@Vm��>�@Vc���]x@V���g�q@V��h�gQ@V;L/4@VcF�)�@V�\�y)5@Uįx{�@S���Y@S8�6��@SW�;ee�@Sf�-�8�@Sy�y��@R�&/�/I@R\�B^\@R]���J@Q�*Oŕ�@Q)*"���@Qջ�f@P��+� @P��N�@P{L�'*�@P}�Pj�@P�.�^$@P�a�r�K@Q��R�@Q��@Q�t�@R(A>��@R�����@SX�d@S�?�6��@U�tF�E�@U��	�ɠ@U��$���@VZ/�J*	@V�Rw2_�@V��>��c@V�Α�#+@U�p-��@T�5�h|\@T¨M�k�@T�OCbh�@TTO��YT@Sը�4��@S߽�V�@SI�;��@RPRC�Z�@P��j)�@M���W@F��1�	@LW�L�@QH�#Y��@QXz�@N��8�@H'OiGh@E+Gդf@E[K��}@F��λ)t@G��ȏ(@@H�߄�-�@I���zc@J?S#h��@J�@/h@K:����@L2�~)@L\pG��@L���=�(@L���U@N�jxX�@O��d�Fl@PRr�)E@P誼�H�@QG�����@Q�n�OV@R��XB1@R���:wi@S!��-�@S{��ǋ@Tdn Af@T��ō-�@S���I@U� %�my@TI�o��@R�#���@P&#u`�{@P��\��m@R��R��@T�����g@U�yFM@UB����I@THo���,@R����@Q�0�_�A@Qc:�}�!@Qc���k�@R&�oO@Rp�j��@R����*�@R�^��t@S*W���@SD��Mw[@S{ͥ�@S�g��ʨ@T�h>�X@T&�$�@T*�ԺPk@T�Hp5@T9���U@Sƨ��}7@Swm\Ә�@S4�-�tu@R���@RXx�L�^@R �/~��@Q����0�@Q?o|J��@P��sJ+@Pk��%��@Pv(I2�@P:I/���@O��>c��@O*��2\�@N�j��@N �9��@Mp�Gf��@L���� �@L8�`��@K��vh�U@K-=�!;@J���1`@J���7��@J���
}@J,2�f�@JoNҾ['@Jrfj,�P@Jr�&�gm@Ja�����@JO��6z�@J7k��^I@Jm�V��@Jb�(Zn�@I��0�-@@Jߌ�D�@IԆ��i+@I�I� �@I�صQ�@I�)��m@I�8�;7@I�M�z�@I�����@I�{ɸ�%@J:f`�u@J�{�'�L@Jy��{X�@Ji�@�I�@JP�uuP@J�,+�@@J܂����@J����(�@K���@K�O)0@Lvyp�M@L����@N:?P�i@N�T���@Oj@E��<@P��ʡ�@Ql2�k@P�_T#�`@Q -MCW�@R�@���W@Tw�7�@VZ�7�g@Wd��Vn|@W_�O`'@VtwE���@V`>�]�@V�|�F�;@U��Z��@U�ڶ �%@VK$�oL�@V�B5�I�@V�� �)c@V|QD<eG@V]���0@V�Y?�/@T^O{�d@S��-��@TE�����@Tg��@S�5����@S�
߫@S�:�!O@T���V�@T'�ұ@T4t���@T>,��B@T#���p=@T%���@T
�}<�@T8�c�h<@TD/j#@T#�*��@TXs��@T�f��-w@T�PQ�@T�����{@U,���@Up�^ <@U�
�x^@U���[�[@U���l�@V2Z�^�]@V�� �Q%@V�չ��<@V�7�uk@V�����@V �h�l@UE�����@Tr�2���@T�8��@Tv;6��@SvT�@R���Y@R��/)l@RH�B@Q�o�lx�@P�q���@O��@2�`@H�cA/�@ṈV�Q@P�<p�}X@L8U`VlE@Jd'�a��@K31I�Qe@F�n��M�@I�����@I���
��@JP�&��@J��L���@KݎH��a@Lk�Y�@L��y�u@M)Ad���@M4�[�5�@Mr��1��@M�c~�$�@M�)���c@N�%���@PEw�� @P�k��@P�iyӔ�@QT�;� @Q�D���A@R`�Y	@R�go��@S=��L�@T �h8?�@T��q-U�@T�g���@U,W���@Sx����@T�����t@Q��5��@P!����@P]��@Q3]c�a�@Q��g ��@S T��@T�gz�g�@S�f��\@R�|i�@Q�z!9@Ql���Cc@Q�zN�;@Q�I	n�p@Q�ԇ5��@R ���u@Rb�E���@R������@S: �@S�b��q�@Tf�`�@TRy����@T~���ɴ@TxE�o�@Tu+I lA@T�@0T��@T������@TM:��c@T$y��=@S�v}zȽ@Sɲ�/��@S�(.Ml�@S�zX?�@S{�_fWI@S*�(��@R࿦�@R�ZR�E@R��_4�D@R�&'��@R����@R>�t�]@Q�~H��f@Q��_�@Q����B�@QG�	�A@Q<��"��@Q0��H@QЬ�q@P�浊� @P���gX�@Q��(�@Q;ı-��@Q�ý��@Q��Fg�@Q��AR�@Q��z��@Q��b�k�@Q�ִ'�{@Q���,=@Q���ӗH@Q�3<�@Q��-��a@Q�h��w@Q�_�	��@Q��$��A@Q|ʎG)�@Q�j�1�@Qj�I��@QN�[{E@Q;�T�9[@Q �h8�@Q$*��I�@P�� �]l@P�p{7�@P��٤o�@P�t���W@P�{�u@P�%�(i@Q-=��@Qz�v��@Q����"@R�0KF��@SU�
-S@TD�\P@Tp"E��@Tmt��=@TEa�mJl@S���,T@S.
gwO@T�-��7@U࢐훀@V�۬:L�@W����@V���ʖc@VN���s@V$�xf�@T��@>7l@U��]�6�@T��L{�Z@U���@U�m]��@U��q��@UёK���@V	o�d,�@S�d����@Th�%�@S�~B���@S�&y�)@T�gv��@TA�_1y/@Txf��0�@T���1�@T��b�@T�gfh	�@U	}a=@U
����@U6��C�@U/OU�@T� �_�@T��_�@U
Ty�6@U-��i�\@U����@U���r��@U�B��C@U�r6�- @U���@U�s�m@U�~��1$@Ur�0��@VqJ��/�@V�A��@WTyF�E�@WT~:Q�@T!�׽�@R����jE@R�/�Z0�@Q�;�jV@RԯG:<@R,

w�@Q�f{��m@QT@�"h@P�o\�-x@P�)�y6�@Q��s@P�J�Y�@P���z^�@PoP�<�@N+t��7@N�RT�z@I�p_u @F�2�_r�@E��`Ue@D���K@HlN='��@I�����@IP5!�@J̵�u{@K?���[k@L$��N�#@L��x/�@M�-ZW_A@N[�I��@N�Km���@Oy�+.5@Op;�.�@P'k4hG@P�i����@Q+���(9@P�$x�@P�{Uӹ�@Q��~1�@R"�ͯS�@Rp]���@R֔�`�@S���~@T <8�ĕ@TpW��@S��6!�.@R<vy�U�@Q��&�@PP��6�l@O�7�Q\�@N|O���[@P�:���'@Q�0&/�@Qr�0�@P;x�m�@Qį���@Q,�)�>�@Q��µ:q@Rg_H�zN@R��&'@RFgJa.H@Q�5�sg@R�>z�@RbVpxKt@Rȅ��C@S4���i�@S��c�@S��rSp�@T����@T?�E��@T]�AYN�@TfM���@Tp�P�(@Tk]"<�@T@D�Ej@T0i@�> @TX�	6�@S�h�.ش@S�y�Rr@S�St�k5@S��p�@S��y\{;@S�{$d�@Sq�z���@S�OMa�@Sv�k�g@S�2��@@SW ��Q@SΪ��4@S D+g.@S�_�H�@S�^X�@S�o\�@R�_?� @R�jm�-@R�E]��G@R�$�!�@R�|���@S���j@SGZ���Q@S�w�@*\@S���Hb�@S�)��m@S�l�c֣@S�i;�d9@T��;p@S�X�2	S@S�	�$q @SޝV�e@S�f��@S�-�P@S�"k�@Sf^���@SOb��V�@S4�T���@SW̱=�@R��f938@R�g�;++@RS��
]@R$}��@Q湉\6@Q�,`��=@Q���>��@Q\���g@QK�P���@Q5�d���@QF�P���@Q��r�@R�@��a@R�r�W}@S8I�)A@Spj�~�=@S����ߴ@T0-|n��@TBi� �f@Rj�r�@SD\�4�*@V#Q�\L@V�G� ��@U}iG�#�@V?�a�/@U��gb5@U"�L��E@S���'/@T�t���@T�y���@U�T�;?�@U(�Ql�@RYx>�1W@R砯}�,@ST|t�[2@SK�@�e8@R�fiUm@R��h�@S|�@ �@S7@mr��@S\�r"��@SJ1�nk=@S/�E?�@S�RY@S|8u�@S=A5w�u@S|ƞ��@Sq���p@Sj/�bs�@S?o�@S|��#R�@TB�/��1@UJ���$@U�F`Fj+@Uؾ��7@V(ߨ�o@V���[@V)�Y��@V8��&X)@VG�h��@SĪ���@T�����4@T�V�q@T�(���@T��)J@S[��`�@P��'�s@NH�G�@M?~
��@NKGY@Nˏ�A2x@M��;��@K��۰�P@Kyծ3$A@KT�o<�@L �3G�@M�z�@NMCw�@M;8��W@GДE  y@F�j�Ga@F���
�|@C3� -@@B�*@v@?�f�A@C5;�@HW����@HQK�nt�@H�0�x�@I-�Sސ@I�=y�@J���a��@K��'�AQ@M%�
��@Na!��� @O�r��?L@P�o�1@Q�-�q�@QH�b+@N��WX�(@PC���i�@N�I.U[�@P�o��
�@QF נc@Q����@Q�;U�@RQ��u�@R��9ڷ�@S�d��@Q�T��6�@Q��:\�I@P�%�{�
@Ox���@N�;���@NX�uȋ@P��\T�@Py�\�l@P?�i��@N�GaI-@O������@Q�a	P�@P��ގ��@Q��*�l5@SnI�]�@R(�	*H@Q�j�!�'@Q̿֍��@Q�>��s�@Rd7О��@R�jF6��@S y7[p�@S5I]���@SC�;Y@SQ���@Sgk��@Slp{b�@Sa��@S�9F��@SSb�h��@S(ȴ}@R�>���@R��)BVM@RzLf�i�@Ry �.l�@Rb�iuWO@R�feO@R�ʮo2�@R�1!i0@Rr+uh`@ReHr�@R���.�O@Rn��"*@R:��u��@RV�а;@Rjh�>'�@RU��U�@RD�L�(�@R.%%�L@R�� �@RgAK�q@R&Y���@Rhޞw�@R�m��@R���@S/��[@Sa�S�@Si}�$A�@Sv���e@S�L�a��@TBm/��@T#�"O��@T&���x@T!xc���@S����.+@S����@S�S�a�@Sϵo;C@S{�V-�@S`����d@S<XX@S�U��@R��z��@R�`�U@RQB�K�@Q�{��S@Q��Ś�@Q���u,@P�W^�)@PlZjU-@P$#�9@OʍVm1�@O[�a���@OS�3� @N�Q\��@OՄ�q@O���ħ@O2 �=�@P�ȈUܬ@R~�� x@R+BG@Rc��\�@U4���@W1\T&͛@U��'�Y�@V�~����@U�O��L@Tף��@T+�7,Q@U<bB��@T�cȿp@S,^4E	�@Q7�A��@Q�
H�@Q��p�@@R)`��)@Q��®�@R
�zɌ@R*���@R_���aO@R��� �@R�輠�@R��%d)@S�&��L@R�_4?@R���Z�@R�.��@Sy룙�@S���@R��du`�@RG����0@R/�3O�l@Rn_����@S��<S�Q@S�t�WY�@Të,�"B@T96�*�@S5��4�@T��Qyw@T|:O @T!&�k�@P�1	��@P�M'%�@O�r��@P�����@O��� �@J�gp�]@I�dˇvC@Gg�kX�p@F����@F�F*A8@FU� I @DK�[׌@B>��n��@A���v�0@B���j��@CWW(=@C�a<x�@E���$8@C"��)}8@C̤REU@@NP!;5�@<�g@=|��G�-@9a��>�@4�M��@5�0y�= @D=�SZɠ@F�fV���@F����0@F�^�`�@GEۃ�YQ@H,`oH��@I^Hc�|�@K| &RS@MW���f@O��AxdI@P�s��@Q����u'@Q�LA�%@M��4A�@K
ӭV�@M�����@N��̗��@O8O1�*@P�*�Q�@P_�8�h@P�\"��@Q�^J2.3@Rih��<�@P�A&��u@P�5売@Q���~�@Q���޸@S��H�(@LĆ�C�@O��X\9@N�t�=C@N�U��˸@Nx��1�@K�NJٸ@Ny���L�@NS.RXd@P�μY��@Qp#J:�@Q>G��
�@Q+i6g	@P�OY��@Q%��@QC��,�@QQJ�Е@Q�S�J�@Q�e30e@Q���U�@Q� 4�Տ@Q�u�s/@Q�!�%1�@R]�!�@Q��e�,@QM�,9�A@Q_ 0I@P��+�7@PΉ>+?@P��X�@P�W��@P�Z2�@P��@-s�@P�Sm�[@Q�o�~�@Q	��A@QG���@P�b��4�@P��w,�@P�%�N @P�!�ޝ@P�Ԧ��P@P���)r�@P���L�@P�ǰf��@P��KPr�@P��mHs�@P�����@Q
��Dj@Q_ٯ�@Q������@Q��i
	�@Q�i�1*@R2^�@R=�ȸ�A@R� ȗ�@Rٰf���@R\�F@Su��@Sk?&@Sh|n_˥@S"&*��L@S��%��@S'�~;@R�a���@R��p8�C@R��Hq�@R�:Q�C�@Rw6��g@R{�2�I@RE�IW5@Q��T�Na@QX	����@P��t���@PTm�h�E@OQ�	��@N`�S� @@M���}�@M%)�Y�@M5�oh�E@L."�68@J��c�t@I"C��b�@J�,��SX@J�x�H��@S8�?�@S� l1@SwA A@T�>���k@S��bRA?@SbA�h�w@T{�)�U@T��u�=@S@�cr&@QUFf��@Q�g�M�@Q��0���@P`�>z�@PI�wn@PA�Cs��@P�)k��a@P0�a��@O��=u@P�1�a�'@Q,TZg�@Q�E���@RL+�'@R���$@R�pvɍz@S71e+�@S� v�Ck@SE�]?G@Sd3Oaɼ@Sk�o�%@S����@S#�:�;�@R"�/�>`@QZ�0)�@QC9;<Y�@Q�#�k�@N�f!���@L�:G}R@M��%�@N�e�~�k@PN�^�(@P���=�@P^gQ6�@G8n�}��@G�i\#�@F����@F8U$K�@B�����@A?�g��9@?�4��I�@@:��A�@>^{��@=_��|@;a� @7雤�6�@4��U�֯@2�|��P@3�����@4��+W"@4�M77:J@4�_�1�@8.'?ת @<�$��h@9L�5O[�@1�C��@D#���N�@D� 5R�N@A���@7���Q�@A<�`(pA@B����@D��x��a@C�Չ@C�.
B�K@DB�'~��@E��ӄ��@G�x]%s@J]ƌ- @Mp?u�؍@O���X��@P�1��@J�L��@F�{H��d@Jl����m@L���O@K�dw1�@K�J:
a�@L�֧��@L�*�gE@Mh����@O�E�&bg@Q<�&�S@N ����/@Pa��@RH�~_c�@Tg�X_s�@Tb �͛@P�� ��@Lt����@M/|��MU@La#Q+@L)�%�'@J�u�0�@@G�/E.�@L)!��!@M�s�Z�A@PQ����@Ow�*Ƌ@O$Ո�@N�ޗ$j�@N�>�e@O�zE�[U@O�D�n! @OVV�[]�@Okw&�-O@O`��'Lx@O����@O�Irh�@O���g��@O�Da��0@O�t0@NzQ]z��@M�ҥ���@Mƒ �/@L�����@L�����@M)s�f��@MbnU�Q�@M��G�&�@M��B�@M��u�Q@N����@N�`ev;{@N�T�o�@N�oT� �@N�NMG�@OM���@O'՚e}@O(�e�@OO�b���@O�\�A��@O��Rh(@O��MI�|@O���ˠ'@P&��!@P0����@P����c@P��:̞�@Q�"��@QL6���@Q��[�9@Q�Hðޣ@R"�Q��@R7�Q��`@Rr�r=��@R�k�i�@R��X�9�@R��`��@R��.5�@R��h/�@R}��x�@Rqo0��@R<w�8�@R�j��@Q�����@Q����s@Q�x\�@P��N/F�@O�"dc+@O��'[�@N#yG{�p@M��~�@K�)�?�@J�Mf���@Ij�T�W@I_��W��@JbT���D@K�����@Jwb�X|�@FÍ���@M\L�Zp�@S��5}u@Pd�[h�6@P��II�@R�MMH@Q=証�@N�e��5@L��7>��@N��Pp�@Pr�0@��@K�E���S@K�����@M�?���@O.TȐS�@O?�^�@N��mR. @NT�`���@M���n�x@NW�3�o@N������@O��*;;@PQ1 ��@Q��H�{@Q�$�M�@R1G�x @R��y�o#@S.UiN�@S�nz2;@Sut{X@SMJ� C�@R�;AH��@R�<-���@Q�Dh\B�@PxJz,I�@PL��@C{S�U� @@��]9�@@��`�Y�@C(��$o@F���O@G�_�@ c@H!Il�`�@G����@>9z�@=��Z�F�@=�i&�@;�D �W�@8��Xb��@5�����@5%��[@8l�v�@4*�� ��@1���#k@/�!x1�T@-�C�ws@)��Dm�E@&̘���@%�R�K:{@&�vR7�%@'Ɛa�@'�V&Qr�@(��b)�@3�a�7�@3oцvB�@A!���l�@7 �.5U@1���_�@6��6�E;@A�K�_�|@DH���fk@A��%�@B)1��@A���#�@@�iO�>y@@J!\,m_@@��*3�Q@B���V��@ER��ү@I���u@L����@KL/.!@@�4@@+�f"�}@E�d Rl@L?�Y9�@J����Bm@IA׭�@H��m�@It�;��@J =���m@KV���l@L�uu�}0@L���+@Q/MRp@S2��~�@T���u@SE�V@�@P��^.5@K:Y���@Kv:���@K0��[ޓ@JܔAh��@I(359x�@G����ݍ@M��<^,@Ly%K@L'@�~U@K�a�qܡ@K��N�u@L1S�S@L(���D�@L,�<S@L^���-@L3��@i�@K��s�F-@KK��>�@K��Ri��@K��~�1I@K�e��@K�����]@J�ۤ��@J��B��@J1R�:s@I�(����@I|�r���@I����C@J;w�J�@J-��v��@J+	&���@JANI ��@J��8'@J�G@�<@Ki>�-"�@K�O��8�@K�
Y�@K��]g@L��̒�#@M换8�@M&�l*.�@Mpn��0@M���1�@M�	k�\S@N8��.g�@N[��<_�@N� gz�-@Odk�XP@P!]���@P4+[5G@P���I�z@PБ�	~�@Q)ܽ�K@Q��;\�
@Q�&��X�@R7��)�@R�v9S��@R�e��@R�E���@Rٌ�L�@R�¥��@R����2@R�3�@R��E&@R��m<m{@RO&�n�@Q���-��@QO!�&@P��_��{@Oa�o5pe@M�_T�@J�����@H����M@G�,2T@FByvi�]@E16k��@D����3@F��e��@HT�'[p@Il�� @I� �̗D@K [�(:H@Q���U�(@R��D��@Mk�����@M�	p#@N[��7�@N�v���K@N���Z1�@N%��O@0@O9=2���@N��\5�@M��-w@K�?Y�@KN} �@NR�Ղp@Ma�[�
[@ML���@M<^���@L�D�d�g@Mpz�#@Mz�h��u@M���摫@N͟u�#@O�ț���@P;ܓ?Ω@P�?���@Q:ե�M@Q�&�\\@R\�D�b�@R����@R���j��@Q��,*t@M��9���@Q*~�X�Y@N�;s�8=@M00d�"�@4���@2�ϫ�@3��D\<4@6��� �@:YL��י@=8TN�(@>zG9�@>V�1a��@41���r�@3��K�@3�> �p@3�Ln8@0���U�@+��9{��@'ܴ�x/@(�����@*h�'��@(m��m�@%x���c@#+�@f�@ p��IL@�*�t�@G����@bXɟ�@�:��;�@�M����@\Nq�	�@&~�8%@F2�
�@Gߠ ��]@2��^3@��hx=@x8K��@��9��@4�U��@BM�Q���@AkDG`��@@>�H���@>��Z�w@==���c@<5�cKVX@=8�v�@@�G�u@D1�{lT@H60(��@@]}UGث@5MU� @8XZ6��@C;Q,�S@K�8B^A-@L�~y�,@J/�G�e@H����"/@H��&V�@@IL����@HF��9p@G�:��p@K^�|�M@PM���@P�g�Xto@R���.˔@Rm'���w@O؆�R_@K���&-+@K��>��@Js��P�@Ip�n�@G����@HX5��s@N���yUC@Jj-'�t�@I]�@I4g�1�g@IN�t��@I�n��A@J%���@IϽ2���@I��2LN�@I�'�bC�@I�by�@I'V���@H�|/Z�@H�_O�@H����8�@H�*���@H]�rݩ\@H�|1@G���j�@G>r�"=�@G_��a�@H�	j��@H^F�JS�@H��)�S@H�t���@I zJsd@I0�?���@IS����@I�l�@I�(y&��@J]j��?P@Jh�J�}E@JçG�5@K�Npr� @K� A�1@L `V��@K��t�V�@K��n� @LJ��-@K�]x��@Lj{�LX�@M���e"�@Nc���+l@O�+c�@P��d	�@P�GzN�@Q:���@Q�F�#��@Q����љ@RX���SW@Rބ����@S7���l�@S�"�k��@Sϓ?��@S�it��@S�3�<@@S�$6��W@S���et6@S�G�+�@S0�l@R���`@Qݟ�+�@P���U@N���C@K�t*d-@H8���ٹ@E�`���@C��L�@B�s7��@A�U�i�@@���e-�@C�a�$b@E����`@H�9m�@Niǐ@@L	"��@JL��X!@L�Q��@J΋���@Iԩ̶@Jw��h"@KR� 0�A@K����&�@K����8s@L9���@K�ж��5@K\�̯�@IZ?����@I��V�(�@L�i�|�@K5&jc@K@t?�@KU�26��@K.c��@Kq�m�u�@K��v�;@L0�%݉�@L����.�@Mg�y�}[@N��c�@N|���-@OC���@O����v�@P[�P�{@P�کnگ@Qa��"/q@N�ul͹@N)7��L@Pp�H��@L	E�)5m@H|��K;@5`O#�@*֬e��@,��˥@1I��w�@3c)�nU@4w�v��@6F_�=��@5+޲�D@.0�-V/�@/	�@,/7ԝ�@*�f0�;<@*:E����@%�0t��@#N��=g�@!�����@ �Ao$��@ RZZ��K@ N�>���@ 3W%��@2Ņ�ZX@�(�ڌ�@�=�&}@�\�Z�@�{L�w@�D��@��L���@6�S^j��@G�Z֗�@=X����]@'�{�"��@������@6ZYL#�@��sd�@՝-˔@��3'�@3������@?�~Q�R�@@f��C�@>�U�T�@=�5��q@;�o~ʴ@=}�-sc�@@�A?;�@Ad�%��@0�{�@0cF�Q0@4�Do��@<E�Fj[@@��	��@H�9}�k�@M�3�)�=@K�w���@J��F*[c@J$�p9p@G\�l)��@F\䂹�@Hvvs�@K �/l]@O�V���@@QK0,%�@R�c����@P�t�T@P^�*�5@NL��U�@L�
?�'@J���ǩ@G֩`:b�@E��ߔ�@L�=,���@J$�
�re@H�Q�]�=@H��X1-S@H��bCQ@H�;�*0@H��2�I�@H=a#K@H0���&�@G��Q���@GyK*��@GI��Bo_@G_)v���@G'�H��@F�x��,C@F��p�wE@F҇L��	@F���ǋ@F�MuIu@F���7b�@F��
u @GSM��S@G��+ ƽ@HLM�Dc@H�l�	�@H�Y^t@�@I��=cY@I:=��~`@IO�+⤟@Itz��@@I����@J#���V�@J��c �=@KB�N�@Kc(��[�@Kt@Ub�G@K�d��i�@K�޷���@K��V��@K�/�GE@J���g�@JE�����@M�ZD��@N��Q%�@O���W@Pk,���@P}�ac�@P��Vڕ]@Q�����;@R9y�o�@R�I,�!�@Sxb_$"4@S��`��@T2��ٗ@Tk�	,��@T�sn�@T��u6��@T���Nz�@TY|��Q�@S�>�FR6@SHlTkjM@R	�^ȅ�@P��m0&@Mlp�G��@I>�q^�@F&~)��@Cߖ��`g@@�݁�@:)m�N�@8Μ\d��@:�\Ls8g@H�w�X�@H�ޭ?@E��>��@MbsU�@L���2;@H4���t@Hr����u@Ht#��]@F�2�,<@F�@��;s@J�7��@I�8r��@I(�.M@K��a�pX@H���1�W@JV^gٞ3@H�7�n<@Ir<���@I���Qsq@I��!U�@I���@J]e)@J-���@I�7��U@I��VHS�@J���~�@J�W�8�I@KF�Nʸ@K�z�0@L7��YT@L�	�ԧ@MrH�[p@M�Di�@N^��?��@OB�^y�@OW��+[@PN%C���@N�{ M�@I�f�_B�@D�{�]�t@;�(ҵQ{@&��T��@(�)��@*�Fmg�@-9�GO��@.���\��@0 ����@/���r��@*j��π@+(K��@*�Ǎ�1�@(�o�B�Y@'�w_VG@%mA��A�@#\=�W��@".�b���@!���JD@#�ƥ6�8@/�}��@D^�S��@&ƍ��@�&;��/@6���� @cm����@�K���@�f>IC�@�֙{H@B$����@@�I0*2'@,�e8���@#T�@=$�@"�A���@#�ܢ`�:@"�듢iT@!s#-{�L@]m`�@�N+s@2�B�<t@BE�3T�n@A�g�"^@@��3��@?t`Ց	@?O?�8�@<xc��ڳ@6�&@A�h@%	ў�Y�@%���R�@-����C@2�	Ђ�,@7%��j|�@; ;��T@F�c���}@N����ظ@M���t�@JT3�ʉ8@DE��[@C#7���6@Ey�I���@H9S���@M�| (��@P�y��G�@Tf�woVe@RX<q�l�@Q�4��7�@P��u^�@P�l+-#-@PQ ��@N$o��@L���a'@L�O��)@KJQL�Ƙ@J���)��@J����}@Jo��	�@Iƌ���@II{Q-�@H�c;mN�@H��y[�@H
��x�@G�[����@G(��t�@F���oc@G(.����@Ff0��ʅ@FuU-|Pk@FSB��@F)}�L4�@FR�]��@FJ��f��@FaR8�W�@GJ/���!@Gqog��`@GΓ�G�@H�l�-�@@I	nrq@Ix}6Kb�@I�A��j�@I�?�x@Iw�H���@I�`;u|@J����@Jl��=��@J�]Y>��@J�6�W�@K4a��@K�`����@K� Co@K�6Y�@L��N�@I5��V6 @J�H�^ �@MFB��@M� U@V�@N!L[%@N�;�e@Pk�9@P�����G@QH��GLo@Q�LS�~/@R�R�U��@SO�Z���@S�jD�@TX�pW�@T{"XD��@T��A���@T�دiP@T����@T@�n�!@S�bh@S�w�@Q�4����@P/��+?@K��?\@F���@B�W�<w@@1����@4Pd�$@6<BI@;\���/�@E��2z�U@I�>�m@H!͎��@A(.q�rU@F��y�d�@M���z�@H�`�"-�@H���¯@G�EEq@@E��$��@C�҅r�h@G��)�#@D����YS@Gm��@I��K��@HE�/�n�@H2�M	@H�����@ID,�V�	@IE~=@H��D)@H�HG�@ITT�ؓy@IL�W�@I%mڡ �@I'�hHA@I�{����@Ip��#@I�� ��_@JcӅd��@J�ʂ��@K}�V�@K���k>$@L25F��@L����Q@MSg@M��_w��@M:~I^��@Lo�g^)@H#��6�}@C`_�iAb@2�׶���@'�QK䓽@*6x��)�@+���qu@, ��-�@-b�K�o@,��iIbO@+�a`�>m@*�NJo$s@+�9��@+5b�E9�@,H:���@)�l���@(�nЪ��@'ntjG|k@%�U�b)@&[NX�x@&��3��@":�����@ �d��L@ ��r�rI@ ��T@�]Z�4@SO��0@
9K�@m�ExZ�@'r4�Ȫ @B���Dݟ@)M�4��@(.��b}�@&ⶭv"{@(���|�@*���6^W@+�'O�@(���N�@%��ΐ��@"AR⺑�@�*]{@?PE�m@BeΌ�@B~��c_�@B��i�ќ@@R��Se�@({���!e@*�5�/P�@ Cų@#qB:.�@)�Rs��S@0��1;@3,㒵��@4�OK	@9��_k	0@D���D,@J|7T<�@I��Qe	/@C��V�0�@D{�I��@F�Um@G���;a�@L'u�@R~��ی@Uˉ��͟@U��f��S@U��=Wf�@U\����'@T@�-�@R�^��@R�(v�pq@Q@����e@Q��Ô�e@O��\�^o@Nk�O$@M�J�	@[@M:u��@L�K<�Rc@L&�w"+@KFe[oc3@JŅ�P��@J	߂��X@J�:��}@IԐp���@H���Ѓ�@Hk{:g5@G�����@G�b5bL�@G.FG���@GDn��D@G_)=ާ@G�O*�@Gz��@�g@G���Ǖ�@G�0PY@H:�"�~{@I�"��@I�]2� @IA���T[@I�0IQ�@I��(u@I�fa@I�Ih3��@J^����@JӢ����@Kڒ�<@J�~��@Ky��@KHb$ʓX@K9��0c$@J��G�g�@I\|�O�@IͿB�f@Kw�t<@L{���@M}Cs�gI@N�[;��@N�R�@O���/%@Pn��%@P���0�@Q�]a�a�@R; ĞC@Râ���/@SVM0���@S����6@T)�]ԍ@T&9��@T�:FU@S�u�O�M@S�"�~�@S]S!�3E@RBc �@QNK�!��@N�c���}@Hq���x{@C4�?�.-@@�Y�0O@< �|�@3����=�@6g��A@@�p�\:w@L^_꾌5@L��@Ic���@E&��l��@AcL2c6,@C�r&!g@F���G@E��oR�@E�+D�l@FY�q	�!@H�de4@�@F�znq��@F�]�d�@GmL��R�@H�F`�� @IR��@IK�ވ�<@Ici��Յ@I*j�� @Hҗ��,U@H�Ha�<@H�z�z]@H��j�@H�R��=@H��e�r@H��E��E@H�g��?	@I̝x�@H��b�O@I,�S� @Iξ�6�@J����@K�U]@K��k�e�@L(���J9@L�x���@L�]rɱ�@Lq�(��@K�`@Hӻ�H6m@C7�,�C@@+�4��@'�S<;��@)��+���@+l�yPy�@+�d�k�S@+�ou٥@+��V� @+m�Q�=@-Rh�y�@,����
G@-�KXT��@1�$�^�7@/Zʸ��}@-X����@-X\��&@+έ8��@)RJ��a@'�cI�
T@'/f�7@&
ǋӔ3@$�*%�@"ɥ�w�/@!��&Ż@�˽}0�@!�xN��@�ԧ̗�@;`ھ���@7�t��9@(Jg)�G�@,;�s=RM@/���zM@1[ء�!@2��oć@2-�؁r@<�u�{-@8�D��R�@.�_�A��@=��~�t@C`���@C̵Z�.�@D���@E�Hʃ��@6�"��K@"����@"z�����@ Rp�aM@$7���-�@(�"(=@,�>o�]@1w ���@4I>霁�@7�O�`!M@B�7Uc/@I���Y�;@L�̷��@Hx9�,A�@H����@J�!���M@KyUӘ�@I%f��@K��[AL@R4A���@U�1I9�@V-��QO@V"��b�@U�V��}|@T��\��;@ST����@R�.���@T����@SԿ�)�@R's����@QF��.r@P�Sp_�@O�3���@O8I}w�@N���uS�@Ni��ݥ@M�,J�@M�x�cD<@L��ӣ@L
��^�@Kp=V��@J��Z��_@J>9zO�@Ju��U�@I�IU��@Ii+�O�@H�R�{�m@I;k�W� @I���f��@Je���@Ju�� �@J�(1YB�@J��@K/pI@K !&i�@KW�;K�@K�|b7b�@L��
�@L�G;�9W@L�*� �K@M�T-�t@L׬k���@L���P�@L"�qq��@L6����@L'��A�@L$BT�w@L�C x�@L���׫#@M=��b�)@M��3��%@N��:�f@O#���S�@O�����@P|���@P��DC!�@Q�%�Re(@R���@Ro���@R�gyI��@S=�|�@SV�,���@S\�hwFW@S;wY�%@S�#���@R�MY10�@RJL�'�h@Q��D�A�@P���i�7@MЫ�@D���a@<JIE�@>��V�X@7��B@7���
I@8;���S@A�Tza�@JV���h@L� t��@Jx�ƍ�@Hy���[@F17;�@F��
��@IFeږP@D�����#@D:��q@FCf���@F��c�O@G
P�e)�@H҄�O;@I���0�u@J#����@J]㧤��@J`B�P8@JX~�h�@JA�\؍@J*�N,�@I�+�7j0@I΋��y_@I���/X@IE�W<��@I.�	�7@H����a@I�4�@I��@IC��M�X@I}�JG&@I��[�@J
E�X@Jf��|J�@KP6sIe@L=.{aq@LN�hh�@L�=�'@L�E�a�@K��s(@Jx2��|@Hep Y�@;n£�A@'_����a@'�����@(�}hX\$@*wŤrA @+U�\��@,�s���@.A�2#@/�~@�|	@.�)�h�}@04��W�@0z(�G�O@1E�1�K@/�\�(m@/U/��@@.�k�3K@-4S{oX@+V�-��7@,�R�>��@*�Z��c�@'�+�,�@'"�,�p=@$RO�Y]@$B��v��@%RZ\�@0���:d@<;�k�L�@&�N���@-`��!P@0i8*>(I@4�p��@6�ENէ+@7w,Ø�%@AR�<v�(@G�_��re@FM1��F<@BЀQ�@9/oj)@2R���@->l��@/ 1�.%@0�bі�Z@$��u?mp@ I䮘�@!�)��X@$�,�T�}@'!jh(�@*�`8՛?@0�9�ڇ@5P�;B�@:g��<@@��S ��@Gf�e'0@L)�i�@M�ӀǠE@O��<3@O�Y�˭�@Q��^y@M��h@G��d�I@KZ�l+�-@R��h�}@U8(>��@Us�f0�@U+pV�pg@T��e4@T��b�e@SΦ��v�@S�#Ixͯ@Tw��6@T�p-�*�@T^�8��@SG��ٯ�@R�Z��78@Q��V��@Qbs2hh�@Q/�d�g@P��8mȕ@P�1����@Pt-`�6@Pzڍ�@PC���oT@O���lYi@N��P�y�@N�N�|D�@N|xK��@M���^l@L����@K���!@K��xX�(@LM�UD|@L��m�@M�d0%@MK�����@M8���d�@M� 0��@M�r�K(�@N$#[��k@N�9>zګ@N���8@N�~7/�#@N�o�*t�@N�E�@N�K��l @Or���@N��мV4@Nq�ɛ��@N�� K�@NdR�3�@M���W�@Np�'@N�m-\>3@O��Y�9@O`Pॆ�@Pm�-M�@P~F	eU@P�3��MO@Q)d��=�@Q�[��Z@R�y��@R]�[�@R�j#
|w@R�����@R�C��@R�<�Ϳ�@R��7�L@R/9� ;z@Q��,̘�@Qb5��@P����@O>���D@E�ȫ4��@8��>�@;&a��g@6����\�@8۾��M@5�lK�Zk@9,�8�@E�e� @LuJM�ڵ@L� �mw@KW\vW�@I�5�1+�@H���'��@J�X�w�P@J����qL@D
�x�{@C��=��@JT��5�@Gs{�� @H��� @Jpݬ+�M@Jfʙ���@K>o���I@Kyb5h@KyD>�k�@K�����@K����P@K����@Kz�y��@K\�\(+S@K:9Q�[ @J�	Ƽ�(@J]ѐ&/Q@J�d�@I��@[9w@J	r�d��@JD�6�D1@J\Mu(�@J:�^�ʧ@J*:@�@J~YG�@KW�ə/]@K�y2��)@L��g7X@MB�$*�@M@#0��K@L�,tA2@J���k7@H���:c@F)���.x@7L���@+�R��@'���4�E@'��#� @)�B��^,@,/��p	@-�H���@/= �|�@0��P�@/����@/���ޛ@0=�0`C�@0��6�w@0`�$�@1*E�h�@1cE٪@0��'R%d@1	~�U�.@0E1�o)�@.��e��@+Y�)��@)��>k
�@+03���@*�~�Q+@4�m'e	@.�AӦ�@+*72s�@-�x�'�@2}Kv�9�@4ۯ����@7��**
�@>���(�@KOY�@A�y�wI;@6�z��q@5��bϋ@3@&n�In@0�X �E�@2�[��@-�w'jե@2�"���@0 R�3q2@*��T:�x@(i�,� �@+��ha@0��N/@4`�͈NC@5�w��)@;݌��[m@EBY;�l@F}�s0��@JV�f�uu@N��̩L@P���NV9@T�U��^K@S�$�w@T�ͽz��@PAQB�;�@K�2-�Gq@Q�1�Ϻ�@T�vw��@U/�3u�@T�^��@T<�ኳ�@T/�5�I1@S�ͼ)a�@Sz�ja\�@R�k�Mf@S,c�n0X@S��멢)@TO�2�T�@Tn���p	@S������@S"�lb#�@R�k�{{4@RH��U@Rr?(�@Q�Ɏ3�#@Q��VO@Q�T�y@Q��~"�@Q��/s�T@Qr]��i@QBX�ƃ�@P��EQ8@P���U�S@P>N��r_@P	�,�@@O��s�](@P?�sv�@P-���@P$RyN�5@P:�f@P���_!@P*D}���@PV�צ��@Po��9�@P���.K@P�L��:@P����@P���E@P��8�{e@P�D��@QH��l@P̭��\�@P��t[#�@Pw	Q�MQ@P5�\tD�@P(����@O�<�@O����@P+�J��`@PI��4k@P��5H�@P�g���@QL�s@Q��Θ�]@R{��S@R(�� �@RJy����@RVd��D�@Rf�J��@RuPQ�0@R^�G��7@R���@Q�,��H@P�?%��@P��S�H@OSBBC@MFqXD�i@:B�mm�@6�#����@2��p
��@6$���D�@7	mo��@7�7��@@�M���i@H��0=5�@MN؎�Y@Lz,it�k@J���=�@IRV$b|�@H����@I��	�D@HpW�`qs@B���~_@Hf���%�@J����'L@J��iˋ�@KK|�O@Kr&Aw-#@K7Ѓ�d�@L�Lq<�@L^��մu@L	�@LV����@L\ne��@L�}�M@L�"xE�@M+4��`@L�	�ȋ=@L���-�@L�"��@K�>䜝�@K���p@K�"�\C@LG�Hw�@L����@K�nx��@K|ꉞk@K�b�g(@L>�QE@L�����@Mr=��@M�׮�'@N<�1C@M��D@�@K� ���@Fe�G;�@G-Z�Y�@Fr��G�@Be���@1��ۼK8@(���{U�@)�ɞC��@*���^�@,�qs��@0g'0��@1�E��@1J��u�@1|{'+��@1��t�e_@2��s��@2�d7$K�@3�is��@5����m@9���C�@9�LR��@5c����@3^��tL�@2Ll�� @2n��E[�@5��U�25@89��E��@3��f��@1���;�@1;4�M�_@1mw�en@2�V�@5+��n@8�鍹�U@?��u�@D'z�	�@@Cr<�@; V��u�@;�Z��@8���d@4�(� �@3H��k�}@4\�>H��@5�	R��@7�V�`�k@5��tϠ@6"��@5�}Q�O�@6���@<�|��@DX_�\�I@Gi�N�@B1	�)�@D���S�@GGZ�l7k@J�M=��@O�m���@T$I�p.p@T�$�@Q2��!�@P��P�b@R��v:Q@S��?�@TW�`��@T��%G�@S���]c�@S#v}��@R� PW��@RSh�_ U@Q�?�e�@Qu����@R�ei:�@R	�@Rt��P��@S�z�-��@T&�c2.@S��G\�(@S9+���+@S2�,@R�$혞�@R�\b�d@R��j�Y@R�A�:@R���C@R���	K@@R�"~�a�@R��c��@R�Ϛ)��@R�����@R���I��@RT4��@RR���a�@R35$/+�@R3bu��A@Rar���@R;���H@R�z.�I@R֣���@Rv#��@R)+��c@R@�h���@RWraR�@R-2¡!@R�i!=@R@ziN��@RZ����@RU낟C=@RD��r@RW_1�)@Q���.8�@Q��@`�@Q��U�0�@QS�/e��@Q$Ҝy@Q���s�@QГ#��@Q9�B�}@QL�Й�@Q�����@R1�#��E@Rh,�f�@Rt�[�@R�1�&�8@RQ��U�@R]�m�L�@R4kz(@Q��e2F�@QvlU�3@P��Ǭ�@P]�Ɓ�@O��q�@O�Vٔ-!@F�KJ��@2�xv.h'@/�ƹ_NA@2M����@5ʖ����@7H�ޣ,u@9������@A�G���@H��<�u@LP���@N��ئ�@L��؈�@K� 9��@J�&���G@H�d�e@G����9@F��~��T@H��*L�+@J:[��ge@M_��]�@M,z|�@Le*���,@K�[�@LJ����0@M?S��@M[O@z�}@Mj7�X@M��r+�@M�O7HT�@N@�!�ϩ@NU��s��@N^�(H@M�Q�1�W@M�6f�_�@M��-�@N�p��@N6p(���@M��v@M{T�\��@M.��h@M"�ĺ��@M�ͬՌl@M�z�@��@M��f��@NAΈ�B�@N���o��@O��-cQ@O�E��8�@Nͱj��_@N#�X�@NO��q��@M.yOZ�s@J����D�@Bf�a�
�@3,�{s�@.���)_?@-����7@.�rz���@6�Pq�G@5�k�W��@4��^��i@4��x`�$@5��<�'@6���Y\@:���5�@>X��mV]@DTr=�8�@F���c@C˯-W��@=���z@�@@y���e@Bf����I@D!���5@DSt��@C��~�@DpP���y@@����;@7��q5I-@6���%/�@5��)E��@; >Ԓ0@><�Q9�q@A���"�@D����@@�_�� @=P�4��`@;i�DX�@6����&�@<0����s@7ByVw�@9���[�`@;�Ǟ��@<��i'�@=n�9厧@:y͈�ԡ@=���r$C@Cd
"g�@I������@Dh4�B@D����~K@E�R�5�@GP%o�@I0r�Z�@Ih3a�3@N��~��@Q�V\@Qwt�+2�@Q�\B�o@Q��zh�@Q�����@SS�S�Od@S6�%���@R�mc��@Q�H�j?�@Q-�hHh�@Qh�K��@P�'����@Pa�Z�@Po�T�#c@O�ތ�rs@Oģ�%@P����](@Q��O���@Qx�M���@Q�t%��@Rc � 0@R�B
��@SLl����@S�a4	�Y@S�1� @S|���kA@S���]�@S�H�T@S�.�Pj�@T̀�=�@T����@T�ak@TAA:�$p@T��.�|@T`#�?@T*� .ҽ@T@!�<�@T��3�A@T��B�@S�Q!~O�@S��((aW@S�0� ��@S�.�Hl@T�7k@T)�?*@S��n�P=@S¯���@S�
�65@S҂��q�@S�L��,K@S�ʟj�@S���@SM�&�C@Sm�~�W@R����s�@R�x�l@R���o��@Rc�e��@RO�ٴZW@RRx���@R>���Ÿ@R��{�F�@R�x.Ly�@S����@S�V�>\@R�ʌ�]�@R��SD@x@R��\�!�@R w.�j@R�b.��@QMZ��^+@P�����@O���@M����@L� @7�"
�֓@0L���ն@2��t��@5"��&��@5����t@7�5t���@<�a���@@��04#@@E]!��Y@I�c�@L�}M��d@LI�p��-@L���+��@K�L�sVM@J���*c�@I����@I�+>9+@IօWV^�@HHj
��@N%;���@O�B�ae�@Nʣ��.@N��J�@M���,�@NkHJ���@Oh /`�@O1?�rR@O^f�)"i@OwY}��=@O��,GO�@OȮ�`��@P�M�Y@O��EN,@O�]��h@O}�u�y�@O�P�g�@O��{t�@O��꘡�@O��(�U3@O9n�b(�@N��ȭ�5@O,��!W�@O .��P@Og#�zp@P����@PN~���]@P����o@P��.�ٜ@P$����A@Ma�h)�@N�)T�7�@N��i��@L�l!��@F)d��3@A줟���@@�\��c>@79�N1�@6/��� �@B�Ӂ���@A�F0��@=����Z@;��P9�X@=��o�@@�T�a�@D��g��@F�_�A	@Gaޜb1�@Gq��ϵ0@Gx�J< �@F��Oo�c@E���V�@E�r�@E��oO�@E?a9i*�@E�u��[@E3�S@E��(D�@?�'�@=��XČ�@=ϩ��=(@A����i]@D�B�Y�@F�%N`�@E��,>}�@@��H�5@<�	��ݕ@;�%*�� @?�j@@�;�иy@@W�d��@D��g�8�@F��z�]I@F�K �Y@DK�S��8@A�*C��@I�U뾣@O	�HI7@M�.A���@JH�s��s@I�na�
@J'԰N�@K���o �@L�~&��@N���^�@N�8z�!�@O�ϵ�,G@P�b��E�@P��G\�@P���8K@O��JK:�@Pػfyn�@Ps�Mg!@PJ=�3Z3@O���=x@O@�4��(@P%��|��@OY�S��@N|w���@N�ֳ.�@MC�"���@O��~K@M�X%h�P@Nyแ/�@P'$@PW���?�@P'����6@P��Bq�@Q�,�p�@S��ZD@T"���Q�@T�y�Y5�@T����@T�|kM�@T˱��@U 2�`@U���d@U�ۓ`}@Ufկ�@U@�Nt�@US�	�@Ua�"�c�@UwAr��-@Ul�k�]�@Uz;�+#@UQ	�*�@U4S��kt@U ��?�@T�xA�}k@U9P�=a�@U �]p��@U�W@U���;q@T�����@TλA���@Tݻd���@T�G郱@T��2bu@T�cT�U�@TA����@T�#��6@S�����@S�fdE�@S�5?�$@S���^�@S��T�2U@Sa���E@S�U�6O@S��N>[@S�,�;i@S����E@S{����y@SKv��Ho@R�^%�L@R��5�@R���ն@QFp��Fq@P��p�Y�@M�\��@E��m9�@Ax�U�{@4cz�*o�@3�[�WM�@9\�IO@=L��E�@?Z���4�@>f_K�J0@?
Ȏ#P@A�k��+@E�ap��@I۾%�H@L�e�A  @L�V��a@M��m,�@MǓ)E�@LD1z@L0�'���@Ky��T|@J�jlY\/@J� �U�H@J\n�Թ�@N�j���@P�:G"�@P�á�#E@Pd�m��@P|�[��@P���%�@QW���@P��T���@P��
L�q@P�+a�z@P��z�/s@Q�ҷ�@Q���@P�[��<�@P�k�ɯ�@P��D�Y@P�q���@P���Ҁw@P����~@P��Q�f!@P|į*�@P����i�@P��2�{|@P�����@P�����@Q,�r�@QM�y �%@Qs[_a�@Q^@2�Y�@Q%p�I�@P��cX��@P���bq@N���ބ�@K����"l@H��4Kg�@G֣��A@C�,~W��@B��y
��@H��T�9�@Hؼ�Y@G�)|�7 @H�%2^m�@I���P�@H��.�?@G��� ;@Ga9�W��@F�1��b�@H���m@H������@HzND1�@G�F@F���	g�@D�m�&@F�;�o@G ���@F�u��@H���+�@Fg�G�v�@C�=���@D�S�&�J@H4-�ّS@J(N��?�@I1k A�@I�˻�O@J�%�)�@Ge�@B,�� @D�(�Gu@F͎�p�@F��YW�@G,k�/��@I	�A툗@I�Q��g�@Mʈ��˳@P6�:��@Qk�� 0@Q���q�@N��� @Kk��7@I�a���@J���l�@L;�9���@L��?B�@M��w�@LU�� �@I{��g�@I/���~P@K�x5�P�@KG���5�@L޴��e�@JV܈��W@K�?�1^�@KƱ�<�@K>�Q��@KaE���[@Mp*SY�@No����@L�պ5Ex@NO��	@M�:�@�@MԣH�a�@LS��@KF��:�@Oo�{�@Q��o@Qwr�w(5@Ql�"&��@P}���Ri@P$`ߜ@SUQC!�@To����@Ub��O]@U$
��)o@Uo�1�}�@U��@��y@U�˳��5@U�ȹ�@U��i��%@Uݬ���@V1���aY@V+k�(@V
��@V'zg�cg@V9X���@VXޙ��@U���vi@U�2�rG@U�nYh�@U��|&�@U����,�@U����7|@U���|˙@U�����@U�v"�@U�����@U�UHv@U��ǈ!{@U����ZS@UW�<��@UY<ID�@T�\ܺ�@T���Y3y@T��m�h@T��7�y�@T�g��M�@T�ٶ~8s@T���&W@Tt��	V-@Tfe��.�@TI����@T ����@S�r�N�>@S-��>}@R�.#؋�@Rb[���@P�I>#��@O���1x@I��J8�@Az�X�:�@@t�E�+�@:rypm��@=)2N�P3@Aq�/e�@Bt�i�@C��?@E�G�%IW@Bξ����@C�7c�	�@F�`���@K�h���@M ��˪�@M�L��|@M�����@O鉘45@O�B��`@O(LP5��@NEs�nN�@M��y�T@L16����@LJ���@KH$��@Q�/HJ�S@R�2��(@R�̦��P@R�7T��@R˲A�c�@R��*h*�@R�뮨J@R�'�WI@Rps�_�}@R�+���@RKc;��@Rq�~�J)@R/i�i7@Rҩ�P@Q�n]�@Q�����@Q�R�p4@Q��k��@Q����@Q��خm\@QK� !�@QZed�@QK<�#@Q�pD�H@Q�D ��@Q�
؀$�@R:i	9�@R0S�q5�@R��i{@Q���pa@P�g�A%�@P^����@L��q��@HQ|JW@Iu=�'x@H`�Z�D�@HCp�4�@I�Im�ڈ@Ix���=@J�����M@K���.M@J��v�7Y@I�g���9@IR���-@J�7"L@I���%	/@H1i3�]�@H˱`_T@J�4�G��@HWϬ�@Gw�n�T�@Hްl��@KR��j��@L�A�
�-@L����1@N"|L�]�@J��sǜ�@I��6�84@L�f�� @O��7ʈE@K��j#�S@N��c%@P&����1@MB[�yu@Iz�eU�@K>�l@I���ku@G��EW��@E���!�@FAܘ�B�@H%�X',�@KP4�z�`@Oo&l��@QW��6s@PJ�a�v@M�J���=@G��{�c�@Eg&��Om@D�&�H@D@fR���@GZ��p\@H��Db��@G�?j2]X@DG7�o��@A���Fl�@I��`�[G@MZ�uJ_@M?GG�@K�tԚ^$@GRz�o7@H�O�&@H�!���@GY�+��@H�A�~�0@K�����@M޷��m@K�)��@J�@W$@K����!�@L���T@K��؉ge@L�r``k%@P��I�}@P��dH��@Q*�^'�q@Qj(���@Q�B^�L@Rm2�S@S~Y�}Ĥ@S�� dl@T�̧0� @T����^9@UN� �{@U]�f/G_@U��c?�@U���m�a@U�g裁�@V
IZYE@Vj�"ə�@V~�
��3@V��xg@V���8o@V�;:�{�@VrȢzH�@V]���e@VT�T��@V?f�~�@V;�	��0@Ve�ð@VX����@V;���X@Vm}Gp@U�����@U���i�@V-�f���@VSL��g@V)�v��@U�����@UӜs�x@U���0�@UV��X_Q@UCŁ��@U\n���0@UJ��i�@UYz��@U@���
k@U��lX@U2<�@T�y�<k�@T��D�@TjH���@S���ц[@SC)ie@R]0�:�@P��hl�@L���5:d@Dя�M8h@G�T�#�@DTi�>�@D��՜��@E�����-@H���7v�@D#�&��@Lp_87TO@K���-$T@Fo�4@G!(��@It�Cxq@L� T$��@NP�X�@Pxo.q*@Ofug��@O���M@P��&�̣@P��\���@P�0�ϊA@Po��5P@P84����@M��q��@L6��:�u@O��Ӿ�@R�z���@Sȳ�@T\�e،�@T�'�4�@T֦���@T��`�7@Tm9&�Yi@TJ=�Y�-@T+Ybb�d@T1L��N{@T�?T�@S�c�D�@S�����4@S���	�@SR�-9@S$�I8Q@@R�57� �@R��Bx?@R|?��@Rg7�"��@RA�}+/@R4-�@R.\	IA@R�K*�%@Ri�z�@R�<�&��@R�HE*�@RЪ^׿�@R�a�A�K@Q�k<j�_@P�kDׅ@L����m�@J�p
\�M@JG,��@K���@K&ە�@J�x�^��@I)q�)�@J��ҭ@Jx�lg��@K �+(-H@J���@I^C҅	m@J]�z���@Mt�@��5@I��Րr�@L���QE�@M��S��@J,�M���@J)V� �<@L��f�-�@N�|���D@N�J�4$@M��0��@O}m�Z �@Q���S@Q�B �$@Q(��T��@P�\�,@P���R��@Ob
�@Lĥ���@K��4]@I9#����@I]�����@G�j�랑@F�;�ؐP@FJ��v.�@G&@ۚ��@J����@M�M�{�@OY��k�@PUD���@P�r%��@NL����y@J�\�9@IVs���@G
q�"�@E`鷘��@Dz���hH@EuFS�r[@D������@C%��@DÒ��bX@G��R��@HYZ��@DͲ��)@D�{���@F�sQ�*@F�dx Y	@F�񚍩X@F���rU�@G�B��k�@H�	&��@J5�RLNX@J0���@Idd��@J���� @L!�����@M,��r�Q@N>~�X��@O])I�tl@P(we=Q@PT9L�Ǭ@Q�Q+]�@Rg����@S+Ѧ#W@R���a&�@S�5zΕ@T�i�x�@U��Z[S@UD��v�@U2%��@U���8@U�)Pb�/@V�oʰ�@VP�Ñ��@Vp#+Z�k@V����@V�N��8@W��/�G@V��rJz�@V��|o�@V�{>�=�@V��$�s@V����Y�@V�B H7K@V�6#�3�@V���@V���f�@VZ�}oE@V7�b�*y@V14#�@VQ���L�@Vhb���@V[���'@V@�+�b�@V-��i5@U�WE*W�@U��$��@U��2�@U��V�m @U�2\��@U�f��5@U���Y�@U���ʥ�@UvGG)�-@Un��J��@UM��q��@T˔)q��@Tl� !��@S����@R�/�+��@QϢ���@Km��k�@GX�5���@I���4u@H�)lo�@L��?�@K8Z�.��@M��S"�@Lh@�P(�@O�-��(�@Q.w#,@J`��uv�@J���W��@K��%�gx@NM��iy�@Or�����@Pj&��%@P�×�@P�;@��D@P�h�4W@QĭH�R@R���	@Q��d���@Q�o@Q/c��@Pg����@N2���j�@Nܴ!�@Pٖ
�
@R�1��rk@S��2qf@T���{@U�NZ@UY͌��@Uy]9l@U�����@U�%�Y@UV��KWK@UJ��D��@U)�p?�@T�T��@T�H��y�@T)=vN�@S��@S�ᙍ�a@S���@Si����@S_qRx@S��@$#@R�6~#�@R��U�Y@S=NvVW@Sw��Ѓ@SQ�Yy�@S\l'm�@S2���K@@R�|����@Q,��@M����3�@K�n���@K�����@L�O��U@MUh?��@N�k���@M�G}[��@J�$���@J+i;���@J9�
�@J
��ؕ�@K��(l�@N�\�6��@I��>�3@K98̃#-@PQ�^P�@P3*�&d@Psmt��_@N�� SO�@M���k@N*�z�@Nu����u@Ol�ðب@Ow�3��@O��:�@P�\���0@Q�Q��E1@RY��#�@Q����~>@P������@ONk����@K����@I��f��@KA�\s�{@I0���g�@I��~�@F�:~p�@G�A)]@GAG4���@I �- @N4|�٣@PO\�@P�b�{D@P����AA@P������@Pk#H~h�@O��Dt�P@M��(��@Je�_��@E�4�|�@B��ԭ8�@B%<{N�@D
�E-��@E����B@D�Ѝ0�@C�Sɋ�@C:��@Dz��� �@FZ��1@F��V��@G��[V��@I�j5�Z�@J���#@K[�Ow4p@JXT�ϐ@H�X�I@J?.��@LeT�k�@O�4�Ct@Q�O-���@PD����f@O�v'g@Od?\m@P98�_��@Q�8)4+@R���D@R�g���,@Q�nZ�@Q�s�0j@SM�T� @S��Ց @T�����q@U���^�@V. �!�@V4`���@Vb���p�@Vk��F{@VI�
���@VZL��T�@V�:{IW�@V����@VרM�@V�Yt��@W$u�/@V�l���@V��1[�@V�jE�@V�S*^rC@V��%�@V]�M @V.���M@VF@��3�@VV7= @VA��Q�@V&f/��p@V/��@~�@V%�$;��@U���V��@U믪�Mu@UַH��@U�~yo}�@U��(�q�@U�<��n\@U����@U�2gX@U���j�O@U�P�`Y@U��Ȍ�l@U;YK'@T�S���@T����@S;+`��@Q�K�-�(@N��:��@M!ӆ0@M�ьo�W@M.�Yȵ}@NՕ�$�@@N34:g�@P:`���@Pū8��@O�h���@P�qJb@N6� �h@L����q@M���L�0@O�a��A�@P3�g�@Pneb;�7@Q*��O�@Qx���7@P�77I��@QD�L�@Q��/hGc@P���b&�@Qj��c1@RK.����@R�q]�@Q}����@P*LU�Ң@O�F���@P���j6�@Q��a:o@Rޅ1��@T+�;)0@T�O`S;@T���-a�@U�����@U��>Ia=@U�k�$�@V���U�@V�p�V��@U�e��ux@U�a}���@Us_DC�+@T󎕜n�@T~Ey@T��c2/@T��SI|@TVK��E@S�����@S���>OU@S�&�/@S���Q;@S���,�-@S��tŤ�@S���"֍@S��d�|@R��g�w+@Q�l��)w@N(��H�@M��f��@N61��m@Pey��Y�@P@����@QUu�2p@P�b��wA@M3��¸@Mt��a@M��ml�@M��[@M�3���@I�J��8@Nk����@QQ�p �@P��%_�C@O���C��@M,կO��@M8m�k@L��.��@Kw�Av�U@L��Q!`�@Mǡ�n�@N�Ja�%@O��I_x@Q
���@Q��q�H�@P��~C;@O��b�@K�Cd�I@J�ˤ�,W@Nn�͓��@M���i,�@L)%r�`�@Lo7,�@N��u��{@In$ڊ��@Gˬ���@G-�=���@H��2P@Id��!8@IC��C5@I�x��8@Jv�ҀR�@KWδq@M�ZBC�@N)M���i@O��@M�Ʈ��@H�,@@G��,#r�@F=�=$�{@F�� ��@C+�ԲIh@C��5�$@E�X6��`@F��s*D`@G3��Ne!@GBCƶc�@FL�\vr�@F�n���4@HBR��&/@IH��h@J�k��@K��,4@II�Ԧ%@H���O@K�Y�w@O,�Lf�@QP�P�4@Q|�G��@P��he�@Q�4�<,@P�ty��@Q�m��?@RJy����@Sx�D�M�@R��R/@Rي�u@S>e��j3@TZV��@T�s�q @U���o+�@V!�3ՙL@V>Wŏd�@V�|Qdx�@V�V��6#@V��C��@V�r�R'@V\����@VN�'OU/@V��'���@V~��4��@V����8@V�&�<�m@V��O��@V�4� 7E@V��<F�@V����@V|����@V`WΥ�@Va�'L�@VHJ����@VH�����@VN�ӀX@V?�6/(@V k��[@V /Vg�@@U��	{�@U��3�y@U��ب-@U�o�@U֊w��q@Uׁ�9+P@Uٌ���@U���L*@U�� s�$@U�J��@U9�c�R@T��n49@T<�(B%@S�Ѵ�m�@S
� �ɇ@Q�E�<�#@P���G�h@O��6Q@O��e�@P�[>=��@QGC㓠�@QF��rK@S�EX@O���B/�@PM�m�@O��{�H0@N�C��21@O�_9��c@P�4[��@Pb�!i�@P���3�@QK.ʄ�@QiS<��m@P�,�1 �@P��X��Q@Q7��O��@P��_x�4@QD߸��@Q���@Q[y��O@RZW��E@R��N�)@Q�	n5@PjL���Y@P�8�x��@Q���k
�@Q�z��[�@Ryq�_�@SYh��@T��;�@Ti�sÍa@T;0+��@T�g��@U���2_ @V�t���@V�ns��@V?n��}q@U��{�L#@U9�x�c@UJHX/S@U)��M2�@U4��@T�~z�P�@T��(�n�@T�S��@T��P�ֈ@T|/+LIW@TF;��ʾ@T0�v���@S�ے�kS@Sb�\�@R�+W2��@Q�_�vT�@Q^P~�}@Q+�˅�@P���k@Po,M,�@Qj��ĳ�@QI��8�@P͹�ȷ@Q�t�'@QJ�z]"@P�h:��@P�T�.�@P{(��@PL�Ǐ�@O����N�@N0CܗHm@Pg<{�\@P���%'@Q��u��_@Mfߧ{a�@KV�Nc)@J���=6�@L���w�7@KFB�=�8@LU��:�q@OMb�f�D@Oi�7*�@O�΍Iv@Nנ�^@LA�!Ť@I	�w�@H�P4��@N����@L��!�q�@Lye��G@NlW�jEa@K�Z`>N�@J��J%�@I[U\�zX@H��D��@H�>���@H�ǫ�J@G�+��^=@G,��<@G�6��׷@JA3ހ;@J���b�@K�O��S�@IC��@H��=�g@H��?�@Ju���:�@I����@I���t@H���j�@Id:&z�1@L��aA2e@J;�zU�X@H�����@HT��ł@He�@�S@H��c8�{@I�p5o��@J���?��@KJ���c@LN�;&_@J eN-E @L�ͭ%QK@M�G��S @P%�R�@Q�އ�k@P;G�5u@P�{�:Z@R�a(O�@Q����4@Q�2��V@R�YN껥@R4�=��I@S�v��@Tte��Ƶ@T�빲O@U��;�@V)�1�@V]sQ�3�@V���I<=@V���?��@V�B�#�I@V�4�I@V����5@V�@��z@V{�V���@V�`���h@Vx3t�U@V�~QL�U@VqD�d�@Vo�@VW6[QmU@VB���X�@VIh�\��@VZ���l�@VWG��a?@V@*��]�@V(%�P9�@V>����@VSp�9��@VV�Rd�@V&_M5�@V�/�Ͻ@V �����@V:GM\@U�|z��@U�L�j|�@U��I�L�@U��>
��@U��-M@U���@P�@U����a	@U`3��-{@UұXND@T�	�6l@T=`pre�@S�(U5�@S��]BI@Rթ#�#@R$��`I@Mg��m�u@P�ޛ��1@R�Ok�b@S�$�;@@R��%�@RX�?���@Pdu��L�@Pǚ��@O�Uc��@O�6N��1@PYF�e��@P[��o�o@P�;��g@QAį�S@Q`����@Q�j�0�@R�'���@P�_���V@Pҿ�e�@P���b@Q�*�7=�@R�����@R8i�y{@R"$bGz@R:
O��1@S�>�z@R~�ҥ��@R+4�w�9@RT]�@Rh�Ǡ^�@R�	��LL@RЅ�~��@R�.Ke@S=DL%�@S�|�x�;@TP�ꬪ0@T���"�@U>X��L!@V���p@VpS�2{�@V=�s���@U�	���@U~hꓭq@Ul!w\ô@UD7p�;[@U`R�`��@U@����@T�:�͉@T��AvA@T�H�?A{@T��'ɗ�@T}\��[@T6�sT@S�mz�I;@ST�J=P@R�I�֔�@R!���}(@QAS����@P-��L�@N#O|i��@Q�m�@�,@Q�,�XQ�@Q�N|Ed?@Q:@	��@Q�_3��@Q�����(@Qم߶��@RF%���*@Q��/@PZ�1\@P����$@P 9��;@R$wR��@Q�)t�@O%��c@N���+�S@N��Q�r+@NXԷ�}�@O�˿��@O��r��}@O�"I� �@O1av���@O�^��4@N8�>��C@NA{N4m@NN���X@N�7��'@N:���E@Mi`�=�@L�5[���@K���)��@Kt�洄o@J�(�_��@JilX�@J>]�6g$@I����J�@J�o�>��@JZ:9��@Ivp�%@Ib@D.<K@J"A��@Kz��iG]@J��Q�@Lr.�K[X@L��U-!@O�
y��@K���A@H�ҝ���@L����W@P��#��@Pw���ܻ@Mh���@KY�߇��@Kq��p��@O�u��@M:���(�@KRT3�ek@J���C�@J����]@J�ٺ#S@O�MP���@P7��d�@L�E\)e@L	����@P�&Wo�$@Q;#~=_�@O}�]%�o@M��r�@R
mf?�m@S��R-:�@R|��$a@R�t�3kE@Q�0GE@S����[u@U-���;�@U��ؕ@V2�� @V��]6Z�@V��ʆ9�@VϏpO�S@V�?��@V����@V��ޢ�s@V�9�y@V�A���]@V�+���@V�8���@Vk?�?3@VC�?~@VE\(��@VB�H�\@V2nw
o@V ���F�@Vu?�x@V"t��5@V3�O�o�@V3�DQ��@VT.$8xM@VJLaS�X@VZc^N�@VKfMi<@V7?Ox8@V%����@U�F[4+@V�4�&I@U�6"3@U�R�Hl@U���ymI@U���@U��eC�@U�: p@U���`@UG>���@U�S�4�@T��Ǭ�@T��i:�@S�|ɉ�@S%��;�@Rݰyk@Sߕk(�@Pш�~��@QC�m��@Sw��߄@S���i��@QRw5��@P�I�%Yu@P>��@P	}(�a@P:�@�T@P��b�@P%;̜j�@Pb��{P@P�T�>��@Q1����@Q��!}@Q��%L�@P�;�0�M@P�n��"@RL]M�@Rm+{�H-@R3L���@R"a^Κ!@RN��4�Q@R{v#���@R����@R�Ȋ�h�@R�+��R@R���A�s@Q7��AM@Q�xF��@R����ρ@Sc�4='@ST�B�#@S�o����@T7�;�m@T��*.�@UE���O@U;����@U}���D@Vde�+ġ@V�Ԕeŋ@Vjz��@U�H�#$@U��뢙�@UbX��@U�Le��@@Ux~z�1@@UK�b�_@Uݧ�5�@U
qR��@T��"1�@T����*3@Tj����7@T&~���@S�O܆@S=��b�@Rl�w�|@P���ř�@P��3@Q{{�Ej�@Px���� @R/��b�@R_���Ta@Q�:�d@Q�����@Q���@R
��my�@Q�!��@Q��r�ˠ@QcÝ�	�@Q�ӊ3�I@Q̣�G	A@Q�E�z�]@P�6��]u@P޽�f�@PX>����@O�8����@P_F5��@PR�5Iz�@P8�3��@P}O��@OӮB�u@Oo>����@M�`4�@@M�M�\>�@L�z�Pz�@L�x�L�0@MDUg�G(@MZ��t@M'�G
�@K���
�@Jf
w�R�@I���? @Jp�e^'�@K?C%%@K_K��@K���~�@L�r5�@M3�!ܕ@LC�
!j�@Ks��H@L�8*��@O&v�4W@P��<`�W@QM���,C@Pr$&@Mb٦��t@K�13�l�@PC�k��@QXѶ�Н@Pe(Q34�@P+^%e2�@P��q�	�@M����g@Q�v�љ>@R�ס.S@Q7���@M�L!]=`@K�R�lS�@L����t@M[��j�@Ro-_(87@P���k�n@OV��Ƒ@Mى��nY@P.��IK@R�pGƠ	@S �d^O@Qj�VH;�@S6{M���@S۔�.P@R�!}�c�@R����@SJ]��=�@T��'��@U�&e��e@VH�h!�@V[l0��@@U��υq@U_�Ȋ�[@U����@V5C�J��@V��A���@V�zD���@V��ؙ}@Vڛ|k@V�'��uL@V���i%�@V�ʀ�I@V�t��5@V�4%�@VJ�:-�P@V�2�1@V�a]q�@V7 ��@V�ox	�@V���-@V"�v}�@V#]�&%�@V ÂIR�@Vaa��@V)8���@V/�?F�@V3�����@V
� �Q@V�>U�h@V	�(�A_@U��QD%<@U����ő@U��s�@U�z���-@Uu{�@�@U1�Ju@T�M�V@Tywg{@S�b;� z@S/j�Ql@S0y�Sd,@S�R��@T�]9@S1���L@Tnk�d@Te�ײ�@Q��+�@P6�(���@P�"���@P\ &38�@P���!@O��T��@Oz��a�@O��>u@N��&�zQ@POI�;�@PqV�S�@P�W�@Qa-���@P��~4/@Q�j�SE�@Q�%ؼҰ@Q�>���@Q�(߷g�@Q�Zf�B�@Q���?@Q]�>;b�@R hȩ��@R),9���@Rg��.�@Q�JU���@Q�r�I@QO��Gw@Q��&�@R��@<�@S�]��@S��4�@T��I^�@U'+����@U�&u'%@VV����l@V��K.��@V��~3@V�v�4�@Ved�� �@V+�7���@U�ĸ���@U㾸�_@U�q\^e�@U�G����@U�Vv�@UT�|��@U'�Lt/9@U`E�~@U��p<@T�����@T/�a��@S�<a�1�@R��S6O@Q�� ��@Q�oZ��@Q�F#@P^�|b�-@SSizz�@P�GfLt@PD�Ǣ�@Qv��x�@Rџ�mQ@R��J�@Q�t���@Qg�(zK�@Q Q1�=@Q2��<�H@Q%��D�@Q���@Qw��u.?@Q4�G�X�@Q*����@P��ZM�0@Q�=7χ@P�%G$�@P���o�0@P���D@P�2���@P85)^�}@Oǭ�g�5@N�E�N�@M��'�1@M���%�e@M�VC{�c@M�i1N�g@N���N-�@O0ǊJ @L������@K���6��@J��<vt#@Lי�5@L��m_E@L��PO�@Lu��, @L�E���@K��=��@J����/�@K�[VH{@M�j|�]@P^$��@Q5Q�ei@R_��N�@R*���&i@Q6e�'@Q"3���@R��}�M�@S!� �G@R��&N�@R�^�sm�@P�k�h@P�wQ��K@P�	���@Q�i���@QP��]�@Q�d�@Ph���K@Q������@RQ��Oe@SM^�P@R���Z��@P�1PX@O�T^���@P����@R�FG�PI@S���GHD@RKn��w�@SS�*�©@Q���_�'@Ra����@R�Z��]�@S���Ǫ@T�&a�J�@U�:�a+@VA�$x@V�X�@T��H�qD@R�O�5�@SS�4:�c@T�_H�k=@U�agr�[@Vz+ެ�@V�i:-.e@V�Q�VD@V�j� ��@V����C@V�vڽ�@V������@V��j�@V�UN�@V�G�Lx@Vfj~��P@VE�	
�@V(i���@U��~�2�@U�5�Z@U�9kK�x@U��%C@U� ,U�}@U�W��uW@U��0�0@U�@	�%@U�KT�G@V � Im�@V>X�Q@U�>z�J�@U�[W`@U�V4��@U����"s@UMO}�L)@U��x�@T��*nG@S���>��@R��mDt9@S�9�zO@Sߞ�Hf�@S\=�:G@S���a�@T^�SC@@T�{i�lk@S�8��N@P�fτ@Px���c@PB)tS^�@O�k�Y�/@N��u��@N̽`�@P�����@N׼���@M�V��k@PR?Y4@P��jS"E@Q�f��m@Q?i�@P��5��@O8 L�9@N[�c���@O���Z�@PQ{�W�@P���A@P���H�F@P��8/�@Q���ig@R)j*៳@R�����@RlM��@Rurs�l@R��S�S@R�+��@R���k�@S�./�@T>�	w&@UA��MT#@U�f��-@V�Uo���@V��*��@W�zA�@V�qg�@Vj�W�H7@V-LI� @U���� �@U��X%��@U�c(	�@U��a��@U�i�l+@U�0�q�@U@�7���@UU]8$@U>�WP7�@U>Y�s@T����@T<?>y�@St~�O@R�A��0w@R޷`KG�@P�<W�&�@R/vWq�@S��
W]@Q�		���@O�n��@O'<��3�@O��a���@P;�tq
@Q�
DZ�@P�-��m=@P0Ϊ�w@PY0a`&�@P��G�@P|����@Q<E�Չ�@Q|z��:�@Q��WS @Q���b�@Q��ֽD�@Q�g��j$@R"��B��@Q�
���@Q	�Hs@P����@Q"����@P˵BP�y@QoO@P4mԈ�s@OF�a���@O����@@O��.�m@P��xS'�@R�)�]�5@O���
�@MF�^���@L���D��@L~�nM�@L���W��@L�pK�Yp@LWע¯@L+�F�@L
Д1u	@L�eQ�@M����@N��"Ǘ�@P]*̺�@Q��;�'@R՞���=@Rt���\;@Qu�H��@S��Wꢙ@T'���@TNxiz��@R��k�X@Q��)�a�@Re-V)/@S�ݍ�@Qʓ0@Qh0�	D�@R����
@R�G��!@R�Ncۮ?@Rjsky�]@R�s�A��@Rk>
f@Q�O���t@Q�i�>B�@P���(�@P����i@Rʻk-q�@SW��Ď�@QޝwVU�@O������@P&�#*�M@O�]��3�@RI����-@S��k�@�@T�|��@U�g�fQ%@U�"uͪ4@U]���@S���s�@RB0�ډv@Q���t�@S�RlZ��@Ue毒X@V*��	@Vn�ǈy\@V�ߥ/��@V�/�w5�@V�����@@Vޣ?�
 @V����|0@V�6S�@V�ax�|�@V�K��5�@V�q�3D�@VhSn�!@VI��2<�@Vgv�3@Uwt5#п@T�z*At@T\#S��U@Tgto��@T�`���@U`�[{(@Uu�k&�@U���+? @U�V���@U��iQ@�@U�8��x�@U�C@��@U�2��t�@UD���$@T���R@T�6��k�@T]���@R�J�I@S���q��@TR/�HZ�@Sy'O�j�@R�{�3Y�@S���c��@T-��7 H@S`��{@�@R���У@P��'0�@P��!�i@P�:��r@P��Ɛχ@PL�3t�@P{��@O��Եu�@Na�aJ�@M�pL�@N��E��@O�4��j�@O�g�4��@N��K@NR��%E@N�
z�@N�o��@N������@P��-@O�U�Y��@P-��"ZW@P�#,!Ո@Q�V8@Qh�ݼ.�@QǦ d�[@Q�@�ş@Q�����@Q�om�.,@Q��ĠR�@R7��:�a@S�$r�@T�ާg~�@V$���T@V��%̭@V�<�`��@V�16�@V��nl�@V~��o�l@VY ?���@V4�i���@V"�0o��@U����g#@U�H"�@Uz��}q@U�4��g�@U�ACB٧@UEHE\S@Up��S�@U[��YW�@U5El@T�]Y�@T��*�xk@S���}T;@R���,�@S���V�@R���'��@Q4���@S��y�[ @P�v9B�Z@PƷ����@Ph��m�Q@O�����@O�D́�@Py��-�@N��ݶq�@P �J��'@M77^(��@K �j @K��R]�@P���~.@P�
{�]@Q$�+ֿ�@QsR�S3�@R��b
@R�e�J�N@R�r��2�@RC�/�ځ@R ���=@Q�@�˪�@Q��1a]@QW%c䏕@Q7��NM@Pۿ��@P0�5��@P��}�Q�@P���[0�@Qn�h�?@R��҈`�@R��d�G@PZU�t�@P.W[�?w@O��!C@Ow��+W@OU�y�@O<�	K@OCu��)w@O�7�+J�@P*�j��@P}���B\@Q���¼@Q�Z}��@RY�]}@SU���@R���ר@SeOn�k�@SFd=0�@S?ߍ{/@S���/@S��]�L�@SI�Z�G@S���T~@Td�l�_�@T"�v%��@R෺�g@S�f��x@So/�" f@S\;q�*�@Rڞ=y||@R���S%@R�;�<T�@R��Ye�P@Q�&��c�@R#s�̐@R�;�Q/�@R�r�p�P@S@vZ�m@R�*0n�@P��#*�@N�
Lw./@Oc5|j�-@Qy���x�@R~q�g��@S.�	u�@T9�x5�@T��_�it@Tޛ���i@RH�ќ]@R���D�@ST�`��@R����@T��q��@U���8�@V]��,Kx@V�쬣,�@V�.�֙@W	��@W�sb@W�Ј��@W	܎�	�@V��uY�@V������@V���7�@Vz��O��@V7O�!o�@U�Y���8@U/^�f+�@T�ô�%g@TN,A�s@SҶ�4��@SM�F}s@S_�jF�@S�#���@T3���@T�F��<�@U�ouF7@U0�k�b@U-c3VD�@U�f"2T@T��/���@Tw�ڄ�@T%9P"��@SgY�L�V@S����v�@S���+�@Ta� �C@T<c���@S�2 �%@R�ol�f	@Q�W=f�K@P��Bc	@QqF�᥯@Q�P�A"�@Qy��)�@Q06{pe@O���h|@O��w���@Oy��<"�@O��l�_@O\�u[�p@N���u�@M�4�S�@M�p�L��@N#��%c@M����	k@N�fp�(�@O͍��U@P?�6�@P3�`���@P��i4��@P�빶1�@Q/y1Ew@P����6@QQ���C@Q���Th@Qڋ��Z�@Q�rD�;�@RE�܆�{@Q�����@QC��bf�@S���_@U�m�D�@V�?g�� @VԴ���@V��X�m�@V�>'�|@V�@�g�@V�f Nz�@V�%��M@V��}	��@V����7�@Vu/�
�@V]�M�F@V�e]A�@U�I��@U�Iij[@U�=J�Pm@U�ZL_#S@U�V���h@U�caz�@U^����y@T��WH�@T�a@TX�A�o�@S�R�|@RW/��^/@R�t�D�@TMـ	!�@RO�8�-Q@Q�2�y�@Q�;�g@Q=f)���@P���q�@O�-�ү@M�<�S�@O�����@P4 � M@P"9�ߩ�@L�"��ث@L9ꟁLS@Mf���i�@N�S���@Q1�}��8@Q'o�CR{@Q�HpI�@R�ܞ%U@R��4>��@RQ��b#@Qh���@Q����/@RU�����@R{¾\H�@R�)��@Q��#���@Q˪7"v�@Rk� "�@R/��~uW@R$� �@S:$�.��@S�,�@R�ܾ"V�@R�\=9'@Qn�eSi@QB�@X\'@Q�Y&�q@QyB���e@R)����@R3�?��@RY��T@R��C>�@RZZ-,*,@R3��x�G@S- #8�K@T���@T?�(�Ǟ@T ��x�@T*�w�
�@Tj�+�@S襉��@S�-��36@S�T"�g�@T|]�J�%@T� �L�b@T���P�@Tf��B�@TS����@S�ڌ&.@S�I��$9@T`ϳ�@S�툌��@S�h�a@Sݼ�i0@S�ϸQ@S|oT �@S?޶)�M@S�Y��]@S�F�4��@S�(��5@Q��`BM�@P?o6u�,@O�"�1@O�Bg�S@Pu/(O@PI���\�@QO���<@Rd*&�t@Su�sчX@Sޟ�E@Q� ]���@R"��JX@Q�M�G�@T&x�Y�@UoD�q�@U쒞�@VF���@V��R���@V�l��e@W��\��@WFaO�@WDRiԪ@W$r�9K@V�%v f�@V`��qڐ@U���ϛ@U'g����@T��$ I@TF��Qzo@S�udѽ@R�P:o�@Q�@ � @Ri
:��,@S-�(��@R�$;�ո@R�L� @Sol�n�u@S���9��@T3Ő�@T^�\�n�@TT�&���@Tt��,@Sl���1�@Sf��׎7@R����8�@R�+q��{@Sdr2�Z�@S�+'3@S�h�u��@SA]A�@Q�B+��@Q��/8�@Q>�?��u@P�L��@P����z@PNo�>��@NH�:O�l@Mo���5@M�[����@M��Ka"�@L�G����@M5Z^�0@M�w���@M�*tC�h@O��ٗ�@O�j܍t@P$#
�)~@Pf�\���@Py�5�5�@P�n�8�@P���Щ@P���"h@Q�M=@R}���X@R�\Q���@R�s�S@R��W�H�@R#2'�5
@Sk}���@S%� ;�@P� cLi@R�p���@VA
}���@W���w�@W�����@W �d� �@W��'��@W���]]@V���`q@V�"@�L�@V�J���@Vj����@Vy�s'N@V���W4@V����@V}�~'�3@V9�58@U뭠�(�@Uń� �;@U�e@���@U����@U���L�,@Uz���D@Uc���@T�Jp�@T�V�/��@TZ�V7��@S+�]r�@S[����@S����M@R`F'4�@SH��Ϳ@R1��4+@Q�y
�n@R��B��@Q�.���@Q2�e�*�@QbBA�1@P��@P�+�LS�@O����e�@MK��S`@NT�xr �@O]��99�@O�r����@Ox�JV+@P�9k�
@@P���@Rx|�5�A@RsS���@R:��]@R���e@Sz.�J�@R���9Z�@Rㇵ���@R�-�C�@R�,�T��@S-�<&@S4I%v�@R�3}.0@S��TW�d@S2o�Z^�@Ro�G�o@Q`nH_@P[�H$�|@P/�K�o"@Q��#F�@Q��L�YU@Q�VI,f@R̔BZ�@Q�c#8�@QaG/<��@R(!Ŧ@RZ�˥@R����@R�_T*r�@S�����@T�u���@T��S��@T��8��m@T�ڟ� @Tsv�@��@Tu'6Qi�@Tmw�W@Tc�Er�@T�fA���@T�pm��{@Tv�-[�-@T�A7�c@T����@T`	�%!@Tv6�8�@T�![� @T�(���@T�c�@S߉O�h�@Se,{9@RhU���C@Rt�g�@Q�RN��H@P������@O��p�ڃ@O�BK,�@P�IPM@Op�*K@O ����@P`*#�s�@Py�L��u@O��>��@PP���dO@QA�c��{@Q�jn�?�@Q.2�@Q��m���@R{Q5IN�@R��n64$@S�Fw�@T���@U�{S�>�@V�zC(@V�_��Ճ@V�$�@V�c�g@U.�D��>@T㝭��4@Taѿ�Q@S�$�`@S��@S
8G"M�@Q�N):6�@Q�H��h@Q�k���]@P��Q�@Q�^��@Q�����p@Pf�}@Q��{��%@Q�bG��@RE4�+3�@R*��K�@Q�0M@QL���p@QN���/@R]IE��:@RC$�颕@R�Jv4>@R��K�K�@R�m� �@R~q9��@Q�L�I�1@P��8���@OgbՒ��@O3�u�`@Mb��[E@N�֑@�@N�O9��@KzA��k@K�U�6"�@L�CH)��@L��V�c@M�k;�s@N����g@O�����,@Pc�#F0@Pa����'@O��%���@O�J��
�@P'8�NA@PHvHg�@Pl
GKH�@P��E���@P�VM�y@Q�	f�@Rq/���@RRhP�@RAX�#?@R�G�@R;1���@S�I�@S���A��@S7�A�@U����]@WN�By�@WGyJ�@WW� ~oP@W0<���@V��`�h@U"��4@S�#��@Ris�L̽@T%À}w�@U
��88@U�a��@VEˁ&�@V6%���@V,�]V�@V��5��@V����@@U��Գ�@U�$���@U�_e��@U�>��:�@U��N���@Uh8��7@UZ�͆�m@UN�]	D@Ugm��@T�1n4�D@Tv���]@T��o��@S�E�w�}@T�"FM@T-�?��@RӰ�O�@S"+�:=@R��Y��@R�YfS�@R�,1m@Ra 	��@Q��h���@OF����@L٘Ľi�@O�鑳`@Q;mD�/@Q#���6-@P����J�@P�-�'@�@Q_��@R �4@Q�o�:@R�ć�@SG���_@S9R|�m@R�!s���@R� �풶@R��N��@S��{�C@S(��oIe@Sp0�L�?@S�)q@S�4�]��@S�h�.8�@R�t���@Rl��ܖ@Q������@Q�}M2�@P���Ң�@P	�6w<�@P���a=@P�˫IG�@QK	�u�Y@Q&�@@Q��X���@R?���8;@Sh���_@T��L�@T �jp��@T+�Al�p@T>�b�]�@T��g��@T#���ą@Sԝ�R]�@S��� �@S`�N���@SE�go@S+����@R��.	#�@RX�O���@R��l��d@S!��5�'@S0�vs܅@RMR[�+@Q���z�q@Q����(@Q"߫��#@P�Ovh�@P�xqH��@Q�GB��@P�Ӑ=�u@P{�=��@P0L�ce@ORX�1@N�!�_ՠ@N� G66�@M���13@N�$AS¯@N�����I@Nן�I�@OC�l�,`@Nܞ*�@P��ulg@PĦ�>E@POqh�r�@P���g@P�>	`!@P7��3@P�
\@O+�����@Q�7�q@RL��̖@SD̔�@SI�7@S&IZ.�@S.X�+q@S)㞧�@SX@o��@R��0���@RS���@Q?MBv�@P�h͗
�@PpE��x@P��O�_@PD+��?@Pq�6[�@P���o�@O�|X2h@P��ˋg�@P,�^�l�@O�|N�@P��AQ@P��E50@PL;�)<@P����@P���ȱ@R�5�S`@Q����@Q�.N�͸@Q�]&?@P܍&�@@PY�li;@N����O-@Mu
}K�@L3�t�@J�G\�M@HE�X���@Io�;@�@J��/p3@L�����@N�&��0@P���e@Pi)j�
�@P�B;鈴@P�i�w�@Q9Pp�l�@Q<#��$@P�Q��@P�fB�G@P��a@�@PW��*5@Pɤ>x�W@Q�6�Y@Qi����@R��*�}@SQ���;�@S2tY���@R+š *@R	-(#@Q�tls�@R��?�E@R7E�(s@R���q�@UJ���{@V��x�@WA����@WWв�8@V�1rvο@SZ�Q�b@K��[�@IeWz��@Jt�{�el@Pܘd�ֈ@Tf��6:1@UwG;���@U�ݨ�;�@V��2͙@V�����@U�jT�@U�^��t�@U�l��ӵ@U�����@U]D;,<I@UY���Rs@U�C���@U�H�u@U���=@Vl�9�@U�e9��@ULa��5#@U
R��	/@T�2# �@U�.�C@U��L�@T���'��@T��E�^B@S��α��@R�J^�.�@R�
Gϑ@S�!� E@Sf�8X^@R��6dE@Q�e\�@P}*�|_@Ny*R�@P6`��@Qrt��%�@Qʍ��b�@Q�� v��@Q�T���@QkFS
�@Q+�Q��@Q���Ǫ�@R��l���@R��t|�@Snp2��@Sn$���@S�y��@S��..�e@S�ֹE��@S�NJۛ@SU�SKݬ@S��@!�@Sna#���@Q����W@Q�KJ' �@QYCP�*{@Q�*��Ĭ@P�PP��@Pe}� �@PbmضF�@P�S�J�@P�W�I �@Q��p�@R�5�|@RE�Ze�@R9u/$ϧ@R������@S �P~��@SkM�@��@S�3�h+@S�C棏@S�l��7�@Ss��	U�@S{F,Y�@Rj�nT	@R��1tT)@R�:؀W@R.�+A�I@Qh�W���@Q�h�|D�@R�Ҳe��@Q�'>A�@Q�~�@N�9K���@Lȝ��߳@O��wM@O�ȅ�X@OH�q=@O>��%@M���� S@MB���o�@M��篰@M��E�@MDx쭩0@Mq�=�x�@Ly;CV��@L�7I�qS@LFh���@M��Ym��@N�Y�@@M=-�'��@M�n��`�@M����7@N땎�$�@NS�n��@N#_'
!0@M��:�r3@M����{@N��;@O F��@N�]���@O҄k��@O�T����@P�J�O�i@Qn�bT�_@RG��U@R�چb��@R/X�R�@PȀ�a]@N�Q4}5e@M���Y[@O.N8��@O�or��@L����N�@N�V�e��@O,�/"�@N8���@N�SB"fK@P>F�	��@P.�?��@Pl��r��@O��@O�k�byi@PF�!(3O@P�ȼ���@P�����y@P��"�p@P,�29�@PEE��&�@N�����@M6{�$�@L�fB8
8@Kcn15�@J����{@J�Y�~Q�@KZ
�`u@M�x��@N�A���'@O�U�t��@Pr"���@P� ]�@QC���_�@Q�@ig"c@Q�oCܱ@Q�_�|_�@QJ)�Z�0@P�pjo��@P�i��s@O�:��B�@Qa�m��@Q#54�@Q��F��@Q �W�c@R�L��[�@Sa���Qy@S*���y@S$�c�@S)��
�@R����5@Q*q�M�@P�L�Z|{@P_�%�\@Q�h��H@Tl�ɵS@U��|nc@Vi��d�=@Sh��@@N{��ڭ�@G�4G]�@F�Q8�Yp@Gί1�:i@K	�?Rn�@Q�R��V�@T��l�3�@U��Q@VL4z]@Vv���+(@Vy:�t��@VfÝ@U�)Ys}@T��8�ɋ@S�؞۵@S��c�O@S�ǓQ@S����@T���sΡ@Uюbcү@U�
�[�@U��O��@UL��գ]@UɄd3�@T�3VDK�@U����X@U�B�p�O@U|Ƥ%H1@U'c�$��@T�h��+@S�9�-��@S"�A�e@S�2��@R�Z����@Q�2gP@Q.�KD4@P��BP�@PM�`�@Q�Jk�@Q�|%�g@Q�°� @Qm;�%�@Q�Fڌ@P�w��g@P�1*�)@QT�	Q@RZDS�Ƭ@Q�����@R
#�L�@R;燄_�@R�k�ac@R�%�۝A@R�J)z%@RUKR��A@R�Զ��@R� ���@R��q���@Q�ܸ�i@P����@P�՘��@Q���	�@Q ��(]@Q7X~���@Q�80@P��"�@P�7�NP�@P����c@Qi����3@Q\I,`�@R	O^VT@RW��X{@Q���4�@Q�u-&[@R)
����@R%�@�E�@R
{{�i�@Q�_��E�@Q~�A�Q-@Q-߂�(@Qi��@P��/h�?@Pq4�HKz@Q3��j4@Q����@P�1ġ��@Q*�0΍@M9l��@M��yQ�K@N��Xp�@M�M��|�@N|rOW��@N�$g���@M���m{@M-�����@L�w�F�@Lx�B��@K��7w@K�+�߮k@J%�#��k@J�i�@�`@K�XT��@L�4Zİ5@Mh	��$@L���U@M>���p�@M`y62�@MT��ʱ�@L�� c�@L���S:�@Lpsꅆ�@L�?M톳@M���#@M��Z~K�@M=�=�-�@N��~S+E@N��W���@P���h{�@R���%@R�G�'�@QEm�)��@QOv�Ԣ@P��V�@P&���k@O�B�U@M�_��@M�̡���@L��㸬G@K�� �Ge@Lf�SIZ'@L�Vd.C1@Mye7���@LP���m@L��֌U@L,KΌf@M��ɝ�/@M��O*�@MH���0@N�=�fU`@N���`$�@MD���p@L0|�|��@KϢFP@K �1��@J�_��K@JZy����@Iη�?R@@JiK�yX@L'�9��@M����@O�%��@PB���#@P�[m��@Pݠ��]@QyEv)�@Q�E$�@Q�f��!<@R2�te!N@R��h�?@Ṙ��X@RpJ�}��@Q��^��@QG�c+v@Qc�p��@Q�*UwX;@PQ`��@O�{PG�0@Qd�-s��@R7?9��@RH�M9�;@S/����@SO��E�@Q��aŕx@QiP~��$@P=��Kr@O����?)@P8j	�e@Q~T��r�@T���e@S�c$��@Ny����@K�V��@Go��e'@G-D��D@G፸L�@H����@J�҆J�P@Of@�ٲa@Q����/@SM�\A|@U$��e@VN�
��`@V�����@VYa�@T�8ѩ\@U���%@U�g@T����@TJG���7@T�q��Yd@U�����@U���+%G@U�"��E@U�%P�6�@U���r�@U�I�NAu@V�p���@V�,�p�{@V>����K@U�`�6W�@U�;6/�@UF/�;\�@S��̚�@S�?I<@R��m_�@R��\�`�@Q�az[cK@Q*�c��@Qb���@Q����;@R@g��m�@Sq�4�@R���22@R�*��r�@Rw �_e@R��C���@Sd�!b�s@S�o���@R�e4�r@S!�v�>7@R�g�.�@R����XL@R���0�@Rc����]@R�g܏/@RkW��}@Rv^ܖ�@Re���;h@R��~;ݏ@R�����@Q��}u�!@R'99��@Q��wt6$@Q���@Q�!j��@Qr����@Q�J���@Q���wj�@QM�D5V�@Qj\U��@P����@Q=x�]o@QU�gL��@Q�xMl�@Qg�MC��@Q%�jˆ�@Q��{��@Q���%%�@Q~�,��@Q�@圾�@Q"C�Xa@P�����@P�菨ұ@Po���<�@P4�H��`@P7�^��@PSzgM�@PZ rB�@O��¥�@M{�>o�@M�C/;@L���Ԝ]@Mk�M@N���T�@N�|04D@L�j�`�8@K ��� @KL�N�m@JEâ�@J���m@K�����h@L�R���@K�����@K����X�@K�J��5@L�RE̱@M"I�٤@M����@M;Cg��g@LIiv�@K�(�9�}@L���U@N��"B�@N�\���@M���T�@LHA�E@L��H�F@P�2(ο@P��)�^@O��O��;@Op���c@O��f�o?@N�Iі @Nh��G��@M��9�i�@Mk�X(�+@M#�.��@NB$��@O-1��	l@M��T+��@MHʋ�H@Me�Q[@L-RqE6�@JE��K@Ix��U@I����c@K.J�1X@L�0.;��@N��Z��@M�<ٞE@K��Z'��@JT��[�@I�}m|@Je&��3@L@WD��S@M�4�1@M�kϬH�@O�5L��q@P8�]�S?@N�g���@O��2B�1@O�s�,�@P<	N.`@P�t$q@P�Y�	�@P�_�4�@P��AG�@Q�!3뱋@Rx�'}1@R�K���@S��Xi��@R�&
�y|@Ql��U��@R������@Rl�Ιw@Pu1d�@Oia3"�@P	�p,&@Q/#x5�D@Qx��#�@Q����@Qӧ^jd@Q����V�@P�X#�	�@P����M@P �<)�@P<-�8e@P���`�@R�w�e�@Sx�凧�@P�%�]qm@K��7s�@Fɋ�6�@GN�Bp!@G�>�*�@H-��0@HZ�2~��@HWP����@G�Wc�Q	@H�Q�)@Nh���@P~�Qf�@Q��o��e@S7�f�2W@T��1V�d@U��̼@VL3��Ho@V�͉�V�@V�@ �q@V��� q@Vyw%z��@Vk�;0��@V�Ʒ=Q@V�E�Z�@V�N�^=�@V����\�@Wk�d6�@W;D��S�@WY�[��@V�k|^�E@Vˇ㋰�@V�六� @VO^ y)W@U�[ls@T��U�ы@S�fz��@S����P@S%��Ȑ�@R�X�N�?@S@�O�u�@S	�3�@S���M@TU�"�e@U��oU@U��Q �{@U�>�d#@U�m�z��@U��yIQ]@U�;1���@U�hQ�n @U`l�8@T�G緌r@T{	*1�@S�����@S�ٯ�/@Rk�F%@Q�z*��@R N<<R�@Q��>s@Q��L��@Re��o@R���*�@R"��@R2#+�@R_�aU»@R7��
>�@RU�O���@Q�J���@Q�JM�Dq@Q��`P�@Q�`���`@QǮ«@Q�'��	@Q!>+r�4@Q$[q��[@Q
Qp̞�@P��Zy2�@PL�ո@POr�rP�@PJ�����@P�э�ʅ@P?m����@P^��I[+@PYie���@O�(��p@N��'�@N���`�@N�\'�M@N�*�ހ�@N��T,o}@N�����@N�f��p@O���ɱ@M���=Q�@M���G@MB���^�@M���N�@M">'�0@LK�1,�@L��yJ=@L��!w�@N��(z��@OW<����@P		5&!@PP�gy��@PW��h�@NT�1u�@M#q?��@MC��Z��@L� �';x@L�4�m(@L�^�Rp@N/7I�@N}]��G@NJ��
~h@N�O�(!�@N�f�g]@N��*�h�@O#��x@O/�+@O]���:#@O�AP�e@P�`R�{@PT�_}C@P��Odv�@Pێ�L��@Q[S����@Q�Q2`�@Q��w�y�@Q�g�*|�@Q9�8lY@Pڸg��x@P'J15�@N����@O��a=M@Nk�����@NU�NP,K@M�V�Ek}@L�mѝt@L��F�@L����@M ��@Nh:M=�@N�8pj�H@N�>���@N�Cy�@N�W�i@NH��Q�p@O���R�@Oւ�HU@PB����U@P�]X��q@Q�~�@Q_A�r�@QS'��qk@P�D�k�%@PǏ4��@P�x��@Q����O�@QCNLr�@P�pG�H@N>9�'@Oa�q#�@P�T\�?�@Q���++�@Q���$�@P��ٞey@P*����#@P�+/�BW@P��bs��@P�ͮ�QU@P��:(�~@P'�a��#@O�|�V�{@O�x	�V�@O�FJ!��@O�Xj�U@P8�D~9�@Q�$o<f�@P�j�X=@O�?K��@Iܩy0%@F�,{_@Gt��L{@H5ӊ��U@H��[��@I84gB�@I:ϫ5j @H+�C{m@Ge��Ą@G6z;�e@G��?Em@H�&l�8�@J�/�\E@N�wRG��@QDd�X@R�_���@U;�-���@V˵�@W*�ߚʣ@W; �o@WG�0�@WY�� @W��e@W������@W�+]���@W��p�K@W�NeȾ�@WӪ,���@W��0|�@W�E�N}@Wo�,̌Y@Wk���@Wi��,�@WE�0��@W	�Ewp@V�����@V��l3�@V�cV���@V���6*�@V�k��*@V��u��@W�0�#�@W:H���@WKH�?�@W/;�!�g@W:U�nu@Wc�N6�@W��BD�D@Wn�L۔�@W
��@VAJ��M@TMvb���@S|�`�ܔ@R�׷�<�@Q���F3@Q{�4�@P�,���@Q�	[��@Q{Z�]@R5r�41�@R� ss�@R�1��o�@R���u@Ra�H��@Ri;鱧@RT����x@R�~Q �1@R�x��@R�flq9�@R�&PM��@Rq�c"�@R#N�/:@Q�.=�,�@Q����@Q:�,T`D@Q%�_q@Q0�Vc�@Q�:�@P̓���0@P������@Q;����@Qs%e ��@Ql���@QQ�R��
@P�??\��@P��\�*@P���0@QU%|V�5@Qc���M@QԳ[��@Pz�K��x@O8В#|�@N���@N�����@O@���l@Po��-U@P�QL���@P�D��@Pʳ%L�@P�?.9�t@Pc���'@Oʲj��@O�����@@O�B�2��@O�Nu��@O���}@Oa��F��@OTT�`q@O6� a?@OU��_�@Oh^n�a@Od�[�l@O:��kn�@N߶��PM@N�̛b��@Pњ��@Pw���{@P.(i��@Pp矝]@P�7
�@P�oM�y@P�HO�@O��AQ�E@O�^�1��@O��v� @O���q�@O1i�~�@Op.�ӓ@NW�-ID @NԩP�@N/a�6~�@NH+�b˙@N��$�@M�tq���@M�����@M�Q�rи@Mц��@M���L@M�ul�D@M��u���@M��Ɵ�@M�6#�P-@M�9����@POc�#D�@QR7� �/@Q �c��@P��x��@QO���u�@Q₨�K@Q��H��o@Q����}@R+~��P�@R$�4s8�@P�f>���@Q��@Q��je�@R,��Y�G@RJ_�GF�@Q>{���1@N����M�@O��r�]�@Q�yPr@PwK(�k�@Ps��`�@P_�:b̧@P6S���@PWr��8@P���XW@P��c�F@Psi@]�@P:�精@Pg7e�@Pz?�&S@Pa��k�@P�'|�<�@P��G�I@P�0�ὧ@P�o)
ҕ@Jc�u��@J�r8\@H�4�W�@I4Z�){@Jw� ið@K-��%V�@K�[���@K�o̐Z!@K5�պ�@I�	ڗ(�@G�NNc'�@FWH6�Z�@F�RUH�@HR廁�Q@I%ưh�@I~���@M#�oXlU@P*c�1M?@Q�{}@T;�9o@V�T��]@W/�5�c@W�!{*<@W�=�@WЗ9�f�@WՒ��7d@W���O��@W�ե~�@W�'���@W�X7��@W�����@W�����@W��@%j<@W�Ua�w@W��x�G�@W���
K�@Wx#��Ts@V�=|���@W |�û@WriJV!�@W�݃���@WƼ$�c=@W�X�?@W��m@W��v�@W��p��@W�~Z<Tu@W���@W�t6���@W� ̩�l@W�}?	T�@W�7bЭh@W;����@VJУ�#@Tz��.�@R�r`�m�@RVp|=5@Qu<�� b@P�}���@P�D�ڻ�@P��Nǒ�@P�v��[@Q2�-2�@Qj��Iha@Qwl���1@Q���� �@Q��
��@Qݝ%��@Q�l����@Q����2�@R#��@RlQE@R@m�o\@R8%L47�@R6�_�@RL�#,ʹ@RF�\��@R;���]@Q��Z�n�@Q�Y>��t@Q�7D^�@Qq��LQ]@Q4A�V�@QH���c�@P�Q��$@P�ڞFv�@PM��ٌ@OˎN�@O�1��@P{8)��@P^�0���@P=�ͥ@O����@OK}����@O�����@P!m�r�4@Pr[L�U@P�о�@Q2�l@P���88@PH�cU��@PC �+@P7��ي�@P�$|e@O��{�@O�_�ˁ�@O�͒e9k@O�+&}�@O�����@O�3� 6�@O��g=@O����i�@O��T���@O�T��.@Oz�tq
�@O��.5@O����@O���5��@O��A8��@OxMk�j�@O1����@N��d�I@N����	@N��B��@NZ�0�/�@N.�!��h@M�)���h@M�����@Mc�k�9Y@M\��)#@M	j=3C@L�="f�@L�Us�*�@Lw��+W�@L|�Y���@L��o�S@L�I	�Y(@M7ǹvjs@M~h��^O@Mz`� @�@M��_rY@M�ˊ0�@Mպ��@N�S�]�@Ng(���H@Pi�:-U @QMV��4O@Q8im(�@Q?*�@P0�f_�K@PI��e�@P�M�ǯ�@Px���#@P���7�@Q�ٿ��@PvX�O��@PH��G@P�����@Q���L@P��J@Q��#�@QKv�@P0�g�@P�~j`�@P��E��i@O�|�Ru@PͶn�@P���@OڄE�۸@P,Yq�@O�!qlǀ@O����@O����:@O�O�w�@O�h�.<@Oѯ�к�@P+�0�%�@P.�Q:@Pm,�A @J ��]�@CF����@D*�B%#<@F[GBB�@HJ�����@I��#�#@Ju/w{~�@JS���Rc@IN����@H��5�^M@H��u�T@H6Q,�J0@GAjNt�@Fe
A�=�@G��>��@H�q�`&�@HG;���@G�N���@K2��ֵ@N)!x�D@P�'	�A@Q�;�@Th�K�I�@V�Bٽ�%@W��i�n?@W�����U@W�
<���@W�T�쓰@X�`��]@X	�^�m@XE���@X*pw��;@X41�|k@X//W���@X ��3:k@W��� W�@V�z�	ݛ@U��P^�@T쾍a�u@T|�Ջ�@T��Ƴ�@U����@V�0Ê�`@W=O��@V�>�$�@V�^@1�T@V��V�� @V�&���@V�����@V�5�l��@WD5�-T�@W]s4R�@W"��1WL@V⍘m!@Vv�,�\D@U��6,��@U
����@Tc`��s@T
��$@Ss�%�ȭ@SCuO@RiO쎬�@Q����P�@R%�o�g�@Q���]^x@Q
ɱՉ@P����s@P�mt�/�@P��W��S@P��'�@PY��h@Pk���@Pdj�9@PX�.sZ�@P�Z� �s@QWQS��@P�]�G��@P��� Y@P�82�O@Q'
ȡ�@Qp�)�@P�l��7@O�#�7�@O�f�K@P���@O�(ݜ��@N*�B���@N4����@N=�s���@NeU�VeI@Np�4�H@NO-\��@N/����@N>�3�0�@N}7�� @N㾐$7X@O��Z��@@Q<,�#M<@Q��7& y@Q;�R�@P��.\�[@P$%�ҝy@PF��
�@PhL��-@O?�.FP@N�<�(8�@N�up}	@N�!�1�@O�c�U@O���@O#|�I@N��ȼ@Nġ���@Nα̩�@N��j1��@N���8@N�����@N�ߡ�o�@NW�c�Ys@N7�e �@M�M��P@M�[���(@Mw�e��S@MS]�֘E@M'�]��i@M��gp@L�2�+P+@L����k@L^�C��p@L"^k���@K�vt���@K��!.�@K��݊r�@K���J`@KÑ4�E�@K�����@L��.�%@Lw���A@L���tZI@M�)J6�@MQ��-�@M�C���@M�$����@N ƙ�%@N"�R.�@NY[L#��@N�f����@P8<|?r�@Q!K!���@Qm�/4wq@Q7�_�5�@QU��1��@Q��_}@Q��u[@QܙX�P�@Q��~�@Qi�99�@P�?����@P��8���@Pc_�d��@Pp���@O�sF��@PH_�� �@P�}�&�@NK�]X�@M�NzZK4@Lب��5�@M�65gS@O)/�{@NPKv��@Nڕ�k@P*�ЀA@O�����@M�]�6tP@J��<�X@I<��:n_@Ic� 3�@I����@HLAh�0]@DQ��&��@A���R�@B��
��@DZ�fDQ@E�u#���@G."�+�a@G���?7#@G����\@FZS:@@D�#�׼b@C�rh	��@C}�,|��@CmG�)�@C|R˘8)@CV*�Z?�@Bre�۠@D���ݘ@I����;@H~�`H@G�g��f3@J<��&�@L��[��@N�@K��@P\F�{��@Q�X�xP@S��@U�#m+_@W,ujI�@W�����e@WD�/O@W��B�V�@Xm@�@Xk�Ui@Wׂ|(�Y@W=�Еx@UL���@R��h	7�@Q���lp@Q�o ʙp@R&��u_@R�hBCш@R<��ʐ@Q�v���3@R���T@R�1}���@R�p��1�@Rܒߋ;	@R�g���}@S'�@�ڨ@Sz�|@S�!:�@S�?z,��@S�9Q�@S�t����@S��l�t@S�ݰ��o@S���~�@S�C�ѵ@SPe8ϸ�@S"S!M0 @S� �@R�H1��@R�T2�#@R�:�)@R%��@��@QT�)s��@P�5�B�C@P@e��@O�"�i@O4+a!��@N� ��j-@N���؛@Ncܑ_V�@N=���@NQr����@N;�!�Q@NL\7�@N�R��H�@O`���]�@P4��Վ@P��@g@Q$�p�@P�i5��k@Ot��)@N$�5T��@M�����P@MUdQ��#@ML��� @MWT3�5@Mx����@M�0V�@M��"�E@M���
�@Mb��3�0@MH�m�7%@MY��*��@Mb�PYo�@M�Kn@M� 1�@M�K����@M��C�2�@Mvu p4�@Mx���#(@M�qYW�K@M�����@M�(w�}@M�;u���@M�PZ��@M�7�~Z�@M�X�$@M���5ޘ@M�T;wFU@M���ۑ�@M�"-X�@M�@���M@M��Y@M��&�@M����Ɛ@M@/x�W @L�i��t�@L�y�vo@L��o��@L��p�C�@Lm��}��@L7U��&]@K�w���@K�p�1M@K���9�e@Kd���H@K8�.���@K+L	��@K;����@K)(�%$@K#����@K:����@Kp�:��@K�g��P@L&1����@LR�O.�L@LqV�8T�@Ly*𛞅@L�C$�"�@L�$(@L�P���@M�9��@M<�?�m@M�YB{Y@N6����@N�M?�@N�o(}ܠ@O����m@O�Eθ��@O�賺�?@PV�;���@O���� @N���iӤ@NéL@�@O>�јF[@N�Q�w[@N��2T�@M;�g@M�SK��%@LBu*L�e@K=L��@K7��p�@L�Yp_\@L ���g@K�f��M/@L���Ք@J���y{@I�y���@K�}���@P9J^��D@K����$@F��Le�@C-�D��@CÈ�y�@@��f�t0@@ֈ�ܜ�@A�I�N�L@B=8c��@B:�C8]@B/nɈR�@B���X��@B���{�@CB�����@Cs�#�+}@C\�~|ҟ@B/�W�@@���@�@?�I���@>�w�X�@=�����@=b��2@=��QY@<I5��@<E��Im�@C��U��@E��g�aP@F5X�0�@I���ί�@L^Bw:P@M��}DC@N(f�;+@O�G�`�@P
a�aI�@P�4ͱM�@R���_3@U�M���s@QO3k�b@SN����@TG�f��@T�M)�qk@T�EI�y_@Ti6�U��@S.��E��@S�ؓ�@S���@R�n���@S�����@Re"59�O@R:K��V~@R/�,3W�@R�Pr[�@R��+j��@R�q$��@RS�0�K@R��>�@R>��Ǣ@R7� ԑc@Rk�!�{@Sɦ��@Sh@��W�@R�t�Pi�@RK��a��@Q��O��@Q�e�#t;@Q�q��4�@Q�ݪ�]@Q; +�}�@Q1�Ѫ�@P�ϓ�!0@P��K�@P(��1@O�fjW�@O�lS��@O�G��<@O��*ݼ�@OLVk�K@N�W۶?�@M�$��@M�cR�X�@Mn�ܴ��@MmiUj�g@N���2L@N�@m!İ@N�	�G��@P\q�E@P�����@PL�z��X@O�a���@N���>Bw@M0����c@L��;��@LW}!�
k@LH�����@LJ4��@Lh���P@L��V�;@L�����@L���@M��.P@M�m�S�@M*��;��@ME?A�\@MO��љX@MV�=�k�@MWܴ�@MX�gQ[�@MAP�pt8@M#ܑ�@�@M7�<�,@L����@L��X�@L����5@L�U ��o@L� ����@Lߚ�X@L��"��@L�:k`@LL��hie@LE�?|r�@L2��gN�@L
�։P�@L�Md@L+C�LB`@L�6��@K�o�ݙ�@K�sIt{@K� �R9�@K�;�:�@K�I߳]P@KM�s�@K*�Q���@K'.�X�@K5�@K��\��@KrFI�]@K	P�!.�@J�n�n��@J�M#��@J��+��@Jxh,�wD@Ji��Bp@J�+�@J����@J���8{@J��a	�@K�p�k@K<:��� @KY�M�l�@K�+��''@K��}/w@L3s-��_@L��Yt�@L����w\@L��㧡�@M@�D@M�C�1�@Lݦ5��]@L�T���@M�#9;@L�&،��@M/g3{c@L�����@L��3j�@L�{�2��@L���:�@L2����@KrWh.S�@J��f Y�@I���I��@H͊��@G�nl�@G�����=@HR��B�$@H̵�ӻ�@G�Ͻ7W@H�M���#@Hk�I]x�@G؏���@F�[�]8�@F�U���e@G3�A��@EXQ6��@D��"�G@C�AE��@>̔Bs*�@>o�&�p�@>@,���s@:pJ�@:PbK�!�@;EM�@<��u�@>�@�5@?�_�X��@?� �i_@@����@@�@U�-@?���LW�@>b�?&!�@=Pj���@<��=���@<>�m�@;���@<B`P��X@>yA�3@?Av�̀@Au*֥o�@D|
4��.@G|n���@K��`�EK@N;:��@N��~k��@Nu90r�@N�����@O.�Rz8@O�	YO�@PE���F@N�Ёu��@OM$+¸@OT>�~��@O�η�,�@O�+���@P+��5V@Po^�m�@P�Qړ��@P�AdK�@P�����@P�����@P|T�xpg@P���(�@P���*��@P�!�|@P�3�U@P�q�խ@P����@P�A��Ÿ@Py��a-@P]��'@P*�U�@P�
��@P��c�@P<�[��@Pn.Q�è@P}}-W@P�q����@P�ˎZ.@P�E[dyL@P*h�V�@O��D�H@O���1��@N��:M6;@NW3��O�@N��kLu@M�m4��@M�o>X05@M�._w�@M�ce�(@M����c@M���$�-@M�����@M�tW��@M�u��*=@Nj����@Nm�t�Kk@N6C���@N�Fe�I@Mt�ɝu�@MŇ��@L�hgN� @L{`�t�)@L{R	�/3@L�����(@L�����@L��M@L��ۆ��@L�-���m@L�`�-�@L��qLŽ@L��/�T@L���(��@M��A'@@M8R��8�@M>��/�#@MJ��RI4@MV3d@ML8n��@MB�ل-�@MX���@MA ��o�@M$��?(@L��3�@L�*�c=@Lx��6��@LD����h@L-!��L]@L��Ɏ�@K���?��@K�,l]�@K�M[ݑ@Kw��P@Kj#�QG@KV�ٕ^�@K0�<�d/@KV���i@K�~��@J�Ry%��@J��Ln�D@J�ɾ$�@J��'I�@J�e�{c@J����@J���@Jԃ1-n�@J���a�@J�����l@J�3�SE@J��A)�@J֦8�8@K�:쿽@K""�4Qh@KP�`�s�@Kx�p���@K�_(�M@K�&Y.�@K��a\��@K�v|d8@K�rj��3@L���Ƙ@L&����@LZ��i@Lx��Q�@Lh	[w�#@Lh]�'�@L�_��h�@L���u5@L���W�(@L�+�؁�@L�����H@L�Sr�{@L�-�� `@L�v"K�@L��o;i@L�}�(�@L�7^[@L�-�C�@Lx����@L<7�[�@K���&�I@K���}�@Kd�=��@K��uz
x@K�:NR,@K7��u
7@I���)�@H��/�@H��"_�@G���#�@F�S$y@G��Ġ@GS����@F�IM(@F�����@DD{P@A@����W@B��x�#A@E����A�@H>�w�*@G���C@F&U<�@E��ɜ�@Ft�qNci@F��Z�@D�ubǽ@D�a�7@C���:�@A
����@@��Ex(@A�0@@o);�1@B#����@C����@Bu=@BP�G��@A��2RlI@A���xD�@B~���K	@D ��@GF���\@IMJ�e�@I���o�{@Jw\)Wݘ@L>�q}�@MOV8F�@M��m��@N%�1;	�@N��DS�@N�g2��@O�З�h@O�P5�,�@P8^�G@P�a��B@P�#?@P�V)8s@P<^�A�@O���Q=@P^�}V@P�2Ů�@O�Ɲ6=@Oۉ)�U#@Oæ>�=�@O�q����@O�t=���@Om�@OL�(�3u@OWfpe@Nܧ��@N�&����@N�3�I	@N��1iqC@N��>"�@N����`@N�V�]O@N������@N�{���@NÅ?���@N�]���@N�%bg�@N�(��3m@N�d�
��@N��;�"�@N��N+�@Nk}w�@No�2f��@Nj�ս}@N>�Uf��@N5��e�@N2���4@N(>H�}@N�.���@N!��"�@N!G%���@N�_�@N��6�@N��?H�@N�۩�@N	9ˤ0[@N
�نM�@N��4D@M�@�n�5@M���Q��@M��L @�@M�PX(I�@M��`dj8@M����K@M�y��6I@M�=kf�0@M��e�M@M�m^��`@MݡD$��@N$"c��@N'� C3P@NO-Z�@N\\~�E�@NO̙��d@N�e�vP@M�Q]�Q@Mӊ�@M�����@M���*�@M�����d@M��@q��@M�ORa�@M�q2��@M����2X@M��C\g�@M�d_�o@Mp�K2�@M�mj��@MdU�)��@MVt��@M9��@M(�ٟ�@M�R6�@@M���&w@M���@M���)X@Mo���@Mx@A/-@L�)�@L�i*��@L�ݟv�@LtsEv�E@LA��/�@L3nͳ�@LO1ܝ�q@LH����%@LU�u�@L\�J�?�@Lww2�|@L�7�@L���y��@L�N�V�x@L�W����@L�� @�@L�����]@M����$@M-����@MY�����@Ms���ŵ@Me,߰�@MS_�=@M��GM@Mf3?o�+@M�(H{~�@M���쪀@M�2-���@MŠs?�@N
�sܣ@N%s����@N)c���@NJ(@Ne��a��@NXe0So�@N_�p�@NRg����@N8���E@N%̹^!�@M���=|@M�@�V�g@M����w@N�x>��@N%���c@N$�Ԃ*�@N�Ç^�@N!�DZS@N��N�-@M�B����@M����@M���K�@M�O���@N*�B��m@NQ�ɏA@N&��G|@Nn��K��@N�C�K�@N���*�@N[g8�j@M�w?��k@M��ep��@MB5�i�@M	`��y@L�6�[ �@L/�9+[@Kee�ͬ@J���_@Jn[���@J����@I�&�ʀ�@H�n6P.P@HC۬��@H�0r6(@H,��3��@H��Y�7@IR��*@I�~����@J�((�@K�zq��_@LIv)͈�@L�^a���@M��@�7e@NQ���GU@N��Q��@O��W�@OH8���@O���&�x@O���4@O�c�1M@QOX����@Q_=����@Qp��s��@Q�v�-u@Q��O@Qt���@Qq��x�@Qm�8�@Qi����@Qg-}�@QiHOI�I@Q_�_G�@Q^ёSVI@QX�w�@QT� 1��@QG3U�?�@QCw�
�@QH8cPY@Q:��@QA�I��@QL.�0��@QI6.%|�@Q<)�^�@Q/"��gg@Q*�֕G@Q�Q���@Q�B��@QV�Y�@Q�%�YI@Q��+��@Q~P�|�@P���Ī-@Q�.�@P�z�`2�@P�K[%wK@P��,��@P�>��X�@P�B~��@P̈́�\ީ@P�=A���@P�Sv��@P�q�&�@P�rF��@P��`���@P��g�H@P�����@P��S��@P�)��,4@P�Ϲ%>�@P��h��f@P�W9���@Pt5��t�@Pn˥�/@Pg2���@PU�Ԭ�5@PP��@P^��@PgP�8�@Pc  �w@Pm�ƻ4�@Pt�D�@P�l���@P|�Y�߯@P�((�@P{�l�@Pt@eQ
�@Pf61�@P^�����@PG���z@P2`~��1@P(F�\AU@P���a�@PH4�8@PތJ=W@P ��I@P	����@P���f@P��h�w@P��0��@P w��@P+~I�[@P/Ku�`�@P6,���@PC���I�@P:��.@P8�i>�w@P-x��@P#c[��@P-Q�q�@P$Ӈ�@P Z�V1@P.��_�i@P.2F/5-@P �\�@Pf0��4@O�j�<�@O�S��@O���5��@O�8 س�@O�	��x9@O������@O������@O�B���@O�
I��@O��낵�@O��)���@O�����@O���U{g@O�b]d�@O�t���@O����}@O��2 �@Oә�r�+@O�7� @O�~t�t�@O��/@P��{x@P����%@P8��W�@PP��]S'@Pc&�h@Po5s�> @Pw���pQ@Pv�#X	�@P�2��z{@P��-Z�H@P���Vm@P�q1k�@P�`��@P�KKI��@P��'s@P���,Y�@P���Xm�@P�U���@P�h�3W@P�g�d@P�c?>�A@P�����@P��	D4�@P��F�[@P}����5@P�'a��@P��k�9'@P��$�١@P�3+�d�@P��j��@P��s�@P� C =@P�@�`�@P�A�\@P��U��@Pk�w��@PWzD�I�@PN�*"*�@PR��ن@PTS���@PV�}dq�@PWl�:��@PW�Hsx�@PY,�� �@Pg*��-�@P�w&ȩ�@P�]���@P����J�@P�����@P�T��@P�5�il@P��R=QG@P���c@P��c?(@P�_��S@P����D@P�.��@P����@Q}�L�@Q�(B�@Q#�&���@Q(:�S�@Q2�0/�@Q<����@R��Ά�?@R�J<���@R�7��$W@R���f�e@R��;�Ma@R��E$yR@R�e���@R�� \��@R���uy@R��ڜk�@R�l��@R�?%�Z@R��	�?@R��i ��@R�w'$��@R��)7@R�4�f��@R�D����@R�Ѐ5&�@R��E�@R��ʔ��@R��up3@R���F��@R����@R�% l�@Rw?��@�@Rt#��#-@RjeC�@R\5�Ù@RPaa��@RJ��ڪ@RG��e%�@RQ&X��@RQ/���@R5��v1!@RC!9J�@R(g-�@R0��]��@R*�Ge�@R)Gb�@R ��+�@R��'��@R�uZ}@R�>?��@R*S�@Ri��C�@Q��)��@R���ޓ@RC�,@Q�L���@Q�
�&�@Q�A#zS@R����@Q�3ճ�_@Q�KRJ-@Q��e���@R���Rq@Q��mz��@RTĕH�@R� w�@R0&�_@Q��wnb;@Q�1���@Q���m�@Q�:@�@Q�r�D�@Q�r���T@R����@R�_*B�@R#aڒ�S@Ri&�@R#DRJf@R���̟@R%���@Q�fo9H@Q��
Y��@Q��p��@Qө���@Q����z@Q�T�G;Q@Q��g��$@Q�;�3%�@Q�$3u@Q¬�s�@Q��P](�@Q����j�@Q��0%h|@Q�]o=I,@Q�ɣ@Q�LI*ݢ@Q���v�@Q�y[X�@Q�xm���@Q��亻�@Q��o���@Q��]m&0@Q�2��@�@Q~d��@@Q�����@Q�����`@Q�*]�t�@Q��W���@Q�
�ܵ�@Q�۵�q�@Q����e@Q�80�@Q�ٲu��@Q�s�b'@Q�fܓ'@Q��z�@Q���^@Q����@Q��VQ�@Q�X,:��@Q�6�_��@Q�68#�0@Q��v0�r@Q��J��@Q�6  �@Q�	ւ�@Q��0Y�@QȢ���@Q��l�@Q�Ln\�|@Q�t�B�@Q�2y0�!@Q�0�_ �@Q���>O�@Q�g@> B@Q�X2�Y�@Q�y"3^�@Q��u @Q�VUb@Q����@Q�,���@Q��v~a�@R&���iH@R-�>��@R6�%��@R8gŤI�@R:Ǖ$�@R�Çx�@RAlI�B�@R7��+@Rj�2K��@RN���F�@Ra�E�ݗ@RM:1ש@RN_cH�@RH8��eN@R:��*n�@R4�6�@R5�p|ҧ@R8�J���@RD�j!n�@RR�R�L@RN���@RRL9��@Rh�<&/@Rg��$��@R]���u@RZי�#@Rbէ��@RW�'/@RH�m4��@RRf��ȝ@RJt�;,@RH�}��@RI�	�X+@RO�d�4"@RR,Y\�|@R[�~�k@Rm%ǬU�@Ruk�8p%@Rp�>���@R��Ϟ@R�r(a�@R�+���@R���)�P@R����y@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g@R����g