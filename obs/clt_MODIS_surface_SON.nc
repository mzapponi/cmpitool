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
add_offset                   NCO       `netCDF Operators version 4.9.1 (Homepage = http://nco.sf.net, Code = http://github.com/nco/nco)    history      qFri Sep  9 15:27:39 2022: ncpdq -a lat,lon clt_MODIS_surface_SON.nc son
Fri Sep 09 14:28:18 2022: cdo timmean clt_MODIS_surface_SON.nc son
Fri Sep 02 14:51:40 2022: cdo splitseas Modis_Cloud_Mask_Fraction_ymonmean_cmor.nc Modis_Cloud_Mask_Fraction_
Fri Sep 02 14:37:47 2022: cdo mulc,100 -chname,Mean,clt Modis_Cloud_Mask_Fraction_ymonmean_r.nc Modis_Cloud_Mask_Fraction_ymonmean_cmor.nc
Fri Sep 02 14:24:28 2022: cdo remapbil,r180x91 Modis_Cloud_Mask_Fraction_ymonmean.nc Modis_Cloud_Mask_Fraction_ymonmean_r.nc
Fri Sep 02 14:21:08 2022: cdo ymonmean Modis_Cloud_Mask_Fraction_daily.nc Modis_Cloud_Mask_Fraction_ymonmean.nc       CDO       @Climate Data Operators version 1.9.9 (https://mpimet.mpg.de/cdo)         time                standard_name         time   bounds        	time_bnds      units         days since 2002-7-4 00:00:00   calendar      proleptic_gregorian    axis      T          ʀ   	time_bnds                            ʈ   lon                standard_name         	longitude      	long_name         	longitude      units         degrees_east   axis      X        � �   lat                standard_name         latitude   	long_name         latitude   units         degrees_north      axis      Y        � Ǩ   clt                       units         none   
_FillValue        ��8        missing_value         ��8        cell_methods      
time: mean     title         Cloud_Mask_Fraction: Mean       �� ʘ        @       @      @      @       @$      @(      @,      @0      @2      @4      @6      @8      @:      @<      @>      @@      @A      @B      @C      @D      @E      @F      @G      @H      @I      @J      @K      @L      @M      @N      @O      @P      @P�     @Q      @Q�     @R      @R�     @S      @S�     @T      @T�     @U      @U�     @V      @V�     @W      @W�     @X      @X�     @Y      @Y�     @Z      @Z�     @[      @[�     @\      @\�     @]      @]�     @^      @^�     @_      @_�     @`      @`@     @`�     @`�     @a      @a@     @a�     @a�     @b      @b@     @b�     @b�     @c      @c@     @c�     @c�     @d      @d@     @d�     @d�     @e      @e@     @e�     @e�     @f      @f@     @f�     @f�     @g      @g@     @g�     @g�     @h      @h@     @h�     @h�     @i      @i@     @i�     @i�     @j      @j@     @j�     @j�     @k      @k@     @k�     @k�     @l      @l@     @l�     @l�     @m      @m@     @m�     @m�     @n      @n@     @n�     @n�     @o      @o@     @o�     @o�     @p      @p      @p@     @p`     @p�     @p�     @p�     @p�     @q      @q      @q@     @q`     @q�     @q�     @q�     @q�     @r      @r      @r@     @r`     @r�     @r�     @r�     @r�     @s      @s      @s@     @s`     @s�     @s�     @s�     @s�     @t      @t      @t@     @t`     @t�     @t�     @t�     @t�     @u      @u      @u@     @u`     @u�     @u�     @u�     @u�     @v      @v      @v@     @v`     �V�     �V      �U�     �U      �T�     �T      �S�     �S      �R�     �R      �Q�     �Q      �P�     �P      �O      �N      �M      �L      �K      �J      �I      �H      �G      �F      �E      �D      �C      �B      �A      �@      �>      �<      �:      �8      �6      �4      �2      �0      �,      �(      �$      �       �      �      �               @       @      @      @       @$      @(      @,      @0      @2      @4      @6      @8      @:      @<      @>      @@      @A      @B      @C      @D      @E      @F      @G      @H      @I      @J      @K      @L      @M      @N      @O      @P      @P�     @Q      @Q�     @R      @R�     @S      @S�     @T      @T�     @U      @U�     @V      @V�     @��     @M�     @��     @I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@I�Y���@CxM���T@I�@_Uw@C�Q�=Oi@H���z(@C�җ�@D(q��H@Hx�����@D�;�qh.@H�C-�< @D��݉D�@D��\X�@E+$Jm&@EYh����@E���%s�@E��T]�@Eᑖ�@L
@]���@FO����@F���I@F��9Ɩ"@F��}��~@G*�/�u�@G\�	��@G�e|<�X@G̞��l�@G�z���u@H2�{P[�@HVb�P��@Hu�T1q@H�c@K�@H�Ra^F@H��"�!@H�4̂��@H��DH��@H����[@H���Ͳ7@H���b@H�{��Q@H��3�M�@H��{<�@H�I�J�F@I #��J@I
�S��@Id����@I_�c�`@I"fÁn�@IL��@I(��	�@I-��|ao@I1�g�G@IG��g@I6'��@I7N�EQ@I=�|ZJ�@I?	�yZ@I9���x@I9��f@I+�i۠v@I�����@I�&�*W@I	PS�F@H�S���_@H�kl���@H���+~@H�Y�]�3@H�gL̢�@H�<,���@H�#VV�"@H��oH�@H���8@H�ЬBR@Hv����@H}����@H`(�t��@H`c��((@H\��pB@H^�rJt�@HX�4fn�@H^����@L�]��@HyU�۰�@L��N�@L��Ο� @I���vp@Mve�q@M� �є�@NC�.�Õ@Mz#����@O*���Y@M0kqr�@Ne�eV�@M�z~0��@N~HV0w�@N���-`}@N�D��@N�P�	T@N��TV��@O=C���@O�]B��@O[�GQO@Oow 2{	@O��s� @Oi��� @O��b��=@O&FA=�@N�Z�8�@NP42�-@N�h��@Mۃ��x@N�1���@M�H�E�@NZo���@NvQ��]�@N�(e��k@N���<@N�-�Y��@N�NpL�@Mꒃ�(�@N���=?@M�,	���@M*a/��@M�����@MW�{@/@M���nhW@M�YZY@M-ȁ�RO@M�c��4�@M4J,I	�@M҅��;@LW��b�H@L�z�-��@LdNJ�;@K��A��@Kd_��V�@KiN�VI�@J@�N�L@K.亩@J���f�@I�n�ɜ�@J6unN�@I,�h'U@Je�-��+@I��n²�@I��YUQ@J2Jaħs@Iv��V%@J���8@H)��GY<@Ie�$1�@G���Elw@H����@G���Y�@GԁM1l�@G.����@E��(�[@F���tf@F����{@Cc�Om8�@G	�E�y�@C|r(�@E@�AN�a@G�tj@B��A#�@E� �$hE@E�=a��]@BΤ�b3L@EƎ���@B���Ϻ�@F�W�1@B�f�Ǭ@H�� -@El�o	��@BȚ�@<@G������@E��-X:-@C ��jm@F�O�z�C@C0G;B@CR���@CiF����@F%���y�@F�~T�C�@F��)�<�@G7��B�#@Gi�t�vx@G��(��@G�Ək��@H2��V�H@H>�t��;@H���\��@H�q�o��@I��i��@I8���S@I��C#F/@J'wd�@JV�T0�?@J�B�5��@K	� @K���,=@L]�:�D@L�T�j8@Mx�7B��@M���L�@N.SQq@Nk̢���@N���vh@N��]�@O,_	�@OX��D�@O�)��@OŌiVMi@O�#��9�@Pax_��@P��,�@P �v�@P����@P,{�/@Py]��3@P�o4�@P��f�@P	����@P q �XI@Oъ
��l@O����g@O���/@Og0K��@O;�Wk�@O*�J6T@N�e�:�@N�~R~��@NZE{2'@N���@M�ǒ�"I@M���޽�@MZܢ�X@M"݉�W@L�	�ʄ@L�3�;��@L��ʀ�Q@L����8�@LN�c�@L*A���@K�|⛳w@K^�#�X�@J����Y@J��+ :X@I��1��@I��&:�@I���Z�@H���:�@H'g�5@G��YS@G(�DⰭ@F���<@F�Bѣ@E��Qw"�@E0����o@D�&"��$@DgY�7�@D;�B�m�@D8cH�.@D�c�@D'
�L��@DĞ$�'�@E�N� @D�5���@E��\���@EL�7���@E����nM@F�t<�@F����k�@G�J���@H&�8:��@Hq� �g@I��V�l@H�=��h@H�		o@IG��c@H�P�2h�@HιO�x @I��ĩ�@K��e@KI��ϒm@J����S7@I�HҎr�@I���b @JRҠ*�g@J����̠@J �x�\�@I��?2@J8�e Z�@J�2���G@K����@KP��f@Kd����@KQ8�@Kz�(;k@K�Z�.{7@KM�Ր�@KE�IS�@K,{1ň�@K
3L�R�@K�|{ō@J�P���@J�"&�k�@J�,ڰ��@J~�I٧@J}r9��E@J�b����@JF��`3�@JL���@I�n0��@I6]}�@H��q!�@H��n���@Hq�Ω, @H	q�� @G{~9�@G1R�=@F��f1�@Fhpc���@FF�HI�9@E��K��@E�J�B��@Ev�&s�w@EC*�+K@EDX�8 �@ED�M7c@ELb�D@E�P1�@D�Z�	��@D2���H@C��\�c�@C�i�^�@Ck����@C.��X�@C
�I�_@B�}�	�q@B��F..K@By^� d�@Bc^��aW@BL���@B1��ش�@B�}D�K@A����%@A�cUU@A�z�W@B*�]֚e@B_Y�0V�@B�bϘ�@CJ:n�h@CT��J�M@C��CO�T@C�O�4%�@D8�a�W%@D�hԌk�@D������@ES���0s@E�^�lu�@E��]�@Bl6�1@B���Cr�@Bڽ����@C>l�ƒ@C��|�1@Cݔ|M@�@Dqc�7�@D�����@EP|��@E@�`t�@E��	,@E�.Q���@E�J�1��@F/E�5@G�#w�<@G�V>�kD@H��>�@I�g�2$@J��Z@L��/Z�@Mbi�@�@NO
��E�@Oxx��@O���4@Pg�Wַ@P)θ�)�@Pd�<�3@P�{7"��@P�w����@P��k�@Q,d���n@QTF2��@Qi���*�@Q��g%@Q�l�ǩ�@Q���j�@Q��/(=@Qz_g
�'@Qk_5�/@Qq#���@Q[����@QM�x�>w@Q3���x@Qs-@�@P�!�)A@P��6Қ@P�<�f@P]γK�D@P�i�U7@Oѓ3��@OW^�A�@N��
}@N8�<7Pt@M���.��@M!��{@Lj�>�@KŐ��g@K9� ��@J��/3@I�:�6 @INs�ØK@H�g��@G�&F��@F�ݟ�[�@E�?�?�@D��f^o@Cv�6gw@B;Io�N@A�=�@?����Z�@>�Q��<@=�F��3@<Fy��\@;��Z�y@:��m���@:�'@9�GQl�a@9�u���@:���jU@;հcb��@<��B)	`@?X%s��@@A��e�@@�H�>�@B,՘�(�@E�}G:��@G�8�ƘY@J��+�@K�b��g@M�и#��@O��o
�@PnZ����@P��8fz@P��Ju@O�zd8@N��jl@M�ehzW@L�R��e@I���ݕ@G`U'�@I&l�<~d@E�)pU@Bm��'1@B'E���@Bb˦�7@B��i �{@B�]��(�@C̂B]�@CE��F� @Cc_�5@C���(�@C��Eܯ@DB�࣏�@D�ּ��#@E#q�I@ELM~Qk�@E���os�@F<����@F���@G*�9}�Q@G��<^-@HX>}�D�@H��ߢw0@I� +�?@J
���x@J��X�@I�\�;j@I�����-@I�Ȅ��@Ih�B���@H�+ =D@H[��y	U@G�	�?�)@F�Q&]�@F+�B@Eؒɽ��@EB��7p@D��l�{@Du�ٰ��@D�L?	�@C�^�@C|U� �U@C�ė�s�@C��7i@C}᜽Z�@C1,���@C'�j<��@C���@D.ή%�`@Ds��b:@GB΍ �1@Dl^>��@C��wj�@B�.�&r�@B_,[��@B��e�W�@Bc>�!�m@Bp�
C�@B1�A=�@A�����@A��?d�@@���'8�@@�5�=�N@@���.'�@@�즻�@@�R��M@@�R�K<X@@K�l�-@?�F%��G@?��{\�@?�q�lFk@?��m�M@@2rt4@@2��g@@��Sq@@\���@@�{��;@@�����q@A/�- �h@A���t�@=�ݹe:x@>-͟��@?(a�֤[@@��ܳ@@�)f0�@@��H{@@AU�a���@A�]��-'@B�1w��@C<����X@C���;!k@D���{��@E��Pָt@F���@e@H(!tf��@I;X�o��@J_֞mu�@K���)�A@L�d�aa�@M�Ǖ9@@O(�����@P
`���@PmgBX�@P�N;A~'@Q��
� @Q\�53�@Q�����@Q����I@Rܸz�S@RJ�v��@R}�X��7@R�N琑�@R�Z�ԕ@S�T��@S(*viн@S3qA�?�@S.=A�
�@S"Ȏ9k@S��4i@R��	,�@R�	�d?@R��jeA@Rm�沢 @R3y�a�m@Q�IB	d�@Q��߆^�@Qp���[@Q0<:��@P�V�{�@P�����@P8��jr@O�4��u@OQ	��w?@N�&�"f�@Mq0c�19@L��j�@K�يIn�@J�@���@I㼧�Ge@H�}r��@G�����k@F�Eɪ(@Emo�t�@C�f���{@B�����@AM��l��@?�Q+;�@;D���K@8���D��@7Tq ��$@5�4�2T@4�칌��@47�?=��@3���K�@3��:�Q�@3ʱQ��@4^��Э/@5�}.�\@7}܌i�P@:,���i@?*��23@GP��!��@L�u��u@P1I �/@Q��61�@R7 ˧��@RM�����@RJk��c@R=��lW@R*�����@R=�c��@RO�F�@RT���5@Q��8 ͱ@Q�Gz���@R{����@R�j�,�@R�rBU1U@Q�U��0^@QNy|�<@R����V@R(fa�e@Q+�n��M@IYW�z*�@C�N+u�D@B��u�B�@A�|�@BA�<t�@B4��Ȼg@Bs���Ӂ@B����^}@B�G,��@B���ם@Bփ+�
@B���G7@CP��2'@C��]�?�@D)�~��@D����@D���0�Y@E}x�u�[@E�7����@Fu��a��@F����j@Grm
��@G�t��O�@H'午�A@H�ȮU@H�z���@Hq��|C-@G��`�j�@G���X��@G3T!�x�@F����̅@F))Z�&�@E�skv�5@E;%�@D��.��9@D����1Y@D��w@D�`�	@D���@E'��Ay@E#��RdE@Eo�L�u@E2nQ�_�@FH����D@Jp׆��1@N�"�X�0@QTqс*�@Sl�Z�@SI4b�ڈ@Q�	��@O�����,@Nj?�N��@L�d+ �@LrY@�@N����[�@N�ٲ�DU@H]-��fs@C큼�ť@B�a܊@B���C��@A��(b�@AQ�Ǟ�]@@��^un@@G�m3C�@@?���T@?���]){@?]K&X�@?F��]@>�+�f�u@>2GR��S@=�Z�$Q�@=�y��@=�/�Z�@<�h��@<��<^��@<��HS�@=6}�A�g@=��?C�@>�l�g�@?��t:�@@�8���@AH�oG8g@Bo�8[��@C�P-��-@D�s��e@F,2�@GA�S8��@Hg�-�:�@I���&�=@J��A��@K� Y3s�@L����/@M�~���@N�����%@O�0��fu@PT��R�z@P�W�vrm@QC����@Qd.�^�@Q�DT��0@Q�6\� �@R�Q�m�@Rt5�"�@R
iQR@Q���@Q���п@Q�ʥ��;@Q�����+@Q��0��i@Q���+@Q�8(��@@Q��݈�@Q�;�2h�@Q�N�xӫ@Q�]�O�^@R��A�@Rjn��#�@R�4��M(@R}�l��Y@Rs��$@Rj��B��@Re܀;$(@RRs��7�@R/��լq@Q���t�s@Q�ڕX�%@QHS^x=@P���2�@PMh�Aj+@O��G�@N��p8�0@N'����@M��gB@@L�C*�QD@K��O6G�@J�g�e��@I^��!�@H&��_8q@F�8��H�@E����w@E�}�%�@C�����@A|� �k�@?JW��	e@;�R��l@9� �{y�@8G�S�X@7:͛X�H@6~�����@5�%��@5t��@4�2�U�@4��yF�@4�x���@5r�Ĥ1@9�T��vA@=��M���@EZ��A�@P�f[O+�@Qy����@Q��
H!@Q�<�X��@Q��l(h%@QӸ�=��@Q�	n�P@R�l�l)@RT.��^�@R�����[@R��0k1Q@S?: ��@St@�t�A@S�ϻ���@S�d�Y!@S�5��+@T7|�m@Rl�ŚG�@P0��6L�@Q^;��@S���o��@S��>!]�@R�� ��X@R2I'��@MtJ%@Fmp<-��@D_k�@DY�w��@D��'_@D�K�g@D{�Fb_q@DobrG��@D&�	{�@C�j� �@C?X�c�@@C'A6�H@C1|�,I@C���%�@D��=Q@E�+���@FI��5S�@F���@G��'��@Hn��@H�g��>@H�G+��@H_�<z��@G�zrOq�@GY1��u@@F͙��-@Fa�@!D�@F�b�w�@F@��}i@FF��� o@F�F }��@F�N�N�4@F�~B/�@F.3�H@Ga�e���@Ii(��@I��{�^�@NH��@Q��B��L@Qly�@PZ.O��Y@R%��)�@QL0��Ȣ@Rv1���5@P��}i��@P/[x�{0@Sp�,��@S}s���[@Q���I�@P#����W@JB��M@Ij	c<@I����-@L�5��@S	�x!H@S�
I��@Rn�m�.@QP�E�}@O��[E��@M�|<W @ISደ�@Fi��GEE@E5�W7(�@C�Ů�j@B)�$���@A���(��@A��Xf�]@A���O@@�P����@@"�S!�@?"�Jg@=� w�V`@<����	@<�E1W�@=M�W`@>����k�@@L��p'@A#��CF�@BJν8�@C��i���@EJ�
�3�@G V��q�@H�ts#��@I�<���@K���'@LpU_�?@M<4p%@M�a��� @N�|�)$@O���&1�@PV5��(@P�n�\�C@Q0wv0�@QTҢ�@Q�}D?p�@Q�'�6?�@Q���$�)@Q�=�Y]'@Qwz���@Q2���@P��&�@P�)���@N�?��a@MB� $f�@K��O�}@J �͛��@H;���L(@G4<�XM?@F�0��	@G�HV6�@G�'�@G@0Yw��@G�BZ���@HU�5l	@I���r�h@J���{�@Ly��Ji+@N0��}��@O�Z�p@P��u#]w@Q�"C��@Q_\B�@Q���Ys@Q���6,@QLF��>@P�d�S`@P|��{�@PAފ7�@P"�D��6@N���D�@N.Y(G�@M`Fc�4�@L��7@K�G���t@K�Z��@@J.+i�@IeΔ�>�@H���+�5@G�l�
�A@E�j6T�@C���t"�@A��P�a�@@�-,`q�@@ ��K�@>�6�(q�@=;�b�@;̪ћEG@:�T�J4@9�� Щ7@8�IHc@7�#�b�@6���I@6-5��"�@6ᩡE'@7_�ڨi@;�i�'@C��G�]@Jn�Te�@OĖ�>@P: �ļ�@R9ۛ@RV1�	@RU�ߛuL@RD&f�@R���=��@R�g�1u@S.1�vu@SJ��?�@Sk���D@S��dL>@Sv���S@Srov�+@Sp:�u��@S����@R�
hE��@T#�αM@Q�T��T�@LJ<ق[@H�"B�P@I���}@J�
�j�@Hi�.��S@Hg2al�t@F�J���;@F�!�@Ec<W�H@D��8Sl�@DjVN`@D	�j��@C�g��@D(@sb�@D�Γ�@@D�:W��@E�"$\�,@GWR��'�@H� �D6s@I�9%�@J��b+�@JO�S�@I�d�^C,@I��fv�@I�̄�@H��u`z�@Hm��1d�@H� p�P@G�9<=�@GL^p],i@F� �Eu@F������@FdʌC��@F����<@G"L��@H0�wʤ�@I�3���@L��	�{@LLL[oȔ@N@�Bj��@Q!���Q�@Q�N�@S�h]�@SSX�l�@R�(|���@TP;�@T^���@Tz��e7@T��+�a@T�`Bd,@T�O�(3�@T��@T¥P.�}@R��-a�k@O���w`�@N���H4@Q������@Sb/�P��@SS���<@S@��2�@P�^�W�@JJ���@GEk �"�@E��l#�@D��%�?�@D���+@CX�xd�@B�W��@B���֚<@A�r8���@A��E@@d[�/@?��z��@>���5@=e��Q�w@=� ��@<�n���@=�4�1@A6A�S@Ba� P��@C�s�T��@E������@GA�u9r�@H�T���@JC �@K*��= �@L?!�F�@MF��f��@N
# O�w@N���GDe@OK���!�@O�F+�3@O�*���@OʪS��5@OԖ���@O�M����@O�b��H@P ���l�@PN�YZ��@PH ���@P� ��H@O�nX�5@N���5"?@Mp1�@K,>;�@H�\غF@E�H��0Q@CHY~��y@A\,x�l@>���C@<P>챳@;G��|}�@;+F @;��R��@< �u�@=9V��_@?6��Db�@AY���c@CIUI��@E�#�W��@Hw���L`@J�X�6`0@L�2G@N1��爍@Oca��@PQ��9�@P�K��z/@PJ�>}j�@O۞��[�@OL:z��@N�!)�q@Mi�c�@L|��@%@K�o��@K�r��ue@K>4�m�e@K���8m@K�֗��@J�g���@J�*��i@Jc�]@Iy8r��!@G��%�@EՁ3Z��@DD���ʽ@C%��\�@B!*�@@�b�=C@?0m0��]@<��k�b|@;-� nܱ@9��f��@7�����@6���3X`@4�DoƷ@2�~|��s@1�}9*��@2�i�M�m@7���)=�@A} $7@N��%�c4@N�m��@N���,��@PQ���@Q!zqi=@Q�h�=w@Q�'�-A@Q��4��"@RR��If@R��@���@R�$9
u@RЀL��@R����@S"+�@S#gA��@S>�9V@Sh�v-	@S�v<�5@S�(�
'@S��ѻ��@S��aE�@S�B����@T9|A��@SJ����@RJ��p�@P�:BD�@MN�!���@K�&���`@I��ɋ��@Gn0��$@F�VL�ܓ@F���>({@F�����X@F�x~��H@F[u�NnO@F��5�@G�T��@HrQ��U�@H�&g@I�)�U��@J�Ҥ�n�@J��C��@J�ۡ�g@K�5u9 q@K�`��
@K��g�@J����h @KE��U��@L��nh�@J���&+�@J��)�~�@J�P�X`%@J��hM@KI��� @K�]�+�@LZ�m��g@LZD�x-+@L�*�G�@L��v�a�@M�����@Oc ��k@N�2[�K@Nl«��@O�LS��@Q/죂�4@R(x�^�/@S�V5Cn@Up�V�@Uk�.&F�@U<7aۋ@U���@T�~R�S@TVY0U�)@TdL�_8@S�(5��@S� |��@S�H� �@S�j���3@S��|+=�@S@3�-c�@R��4�^�@R��zЇ@R��,�u�@Q_���} @Prf!eY@N^&�`D@K����y@J�Ժ�y@Iu|�m&#@E�
�&��@C�a�e0@BUF6�z]@@j";gr�@>��Ƨ�@>숓[@>S�E��+@?t���@@5:{�k�@?�x
_o�@@��6-�@AQ��@C��{m@E݀o @G7��Y@H)@7-��@I,&�<@H=���@G[���iC@G :\��@G��U�@G����m@H]4��3!@F�"���@Dr��2��@D�}�į@D� �Ȇ5@E��XH�Q@G<Ԏ"�@HH��5z�@I ��W%@Ia��f9@I��ݎt�@I���	=@IK�%YY_@G�UCl�;@E���@B��Bd�@@4�����@<о��@;�5Fc�@:Pnp���@=
��.�@?���}@<��7u1{@<	Uǒ��@;,o�4/@:��k@=`�?r�@@�1��@Brz�"��@D�N��6@F���@H���uq9@J,A{�]�@K�!�G�@Lޫu�Q@L���@LK���R+@KQ���@J%g��7@H�:�dV�@G�\d���@G0��MO�@G
�O�Z�@G(��@G�d�]@Gh�,�@GOq��)P@GU�IQ�+@G'���	@G	����@F���@F[|e@D�08�B�@C��\*?�@Be�gÜ@@�kc�@=��tˆS@:헂ԽE@8a?�,ډ@6�.�Ϫ�@5��i�9@4���E@4\��>ȅ@4;�m0\�@4U����f@4���e3�@5�`�a@7UZ1y��@:�L-�J�@A���U�M@H��h���@N@���@N���:@P0����@P�<?��@Q���A
�@R����@R�����@S���@SJ��@SR�MN�}@S}����@S���XO�@S����Y@S�҇�@T#�}�@TLU��7@T{�E���@T��}��_@T�SWL@T���O��@T�C���@T�s֏�e@T�:p۴e@T�����@T��n!ų@Tƈ�\�]@T��y�([@T���h�t@SP#:Kxa@S���p��@R����<@S�3n �5@SI%��@Qڷ&��@R{��h��@QG��/z@RK��@Q�)��Y@RPU`�0@@R���m�@T�#�@S��(@S���(��@S��Q<ۓ@S���U@Ra�w��@P�#���@Lh��69�@L�&��@L�<'��@L����p@L�-h1c@L�c�lu@N~��I�@PvjEt�@Q#s���$@Nˈ���p@P��z ��@PF��4I@Oi�o���@O���=�@N�¯F@Mq�3$9�@MF��u�@NF����}@P�h�#@T9/��|=@T���
�@Tu ���@TiߍL@TI��@TB�_� �@TG�x�G@TF#��9@TEάa}@TBy�*l�@TGĝ@TD�u[@T?�;o�@TA�=tY�@Tqd���@S߉@�WT@S���m@TO� �d�@T�T{��N@TK9�@Tw�7�@S����@M.�A�@G����@�@E5ƛ&Z�@Cs�M/�@A�Qٺ� @@m��-��@@��7���@@k9�A��@E��B��X@B#�ک@@��u��@AU��vo@A��Y��@@��O��@B��-�@Ad��L�@?�ӽͲ`@>��uҹ�@?20.>h@?�͉g@A[�ç�@BE����@@,�J��@>�vқ@>��eh�@>?Y��.E@>��m<y@?��뗣@>��[۽y@>���r�X@@C /1y@Ah�Xl@BvD\�G@CHI��P@D�?,�el@E;�tF�@DI���6@A�7��\�@>E�q��m@<�!�6�@;q'�U�@;ێ,��@I�h�8�x@Hw{� @A@����@@)���@>q+���@=G"w?&�@=����K@@�r��@A[2@BA�1�O@C,����@C���P�@Dڔ9�&@E��Z`g�@E����)�@EB���(@D�o˖�@C�;I��@CL7N>v@BT~%+�@ASV����@@�(ⳓU@?��/��@>�We��s@=��]��@=�/Q\�Y@=�Bp8�@>���j�(@?�6�#0�@@�l�#�@@����9�@?�?Ε]m@>���q�@;�fEG�3@9R<�fȘ@7��0
C�@5�CG��K@3�W�TG�@2�QJ��@1�D+��s@1|�YVc@1���!s@2`,��7@3>��
r	@4,5��@4s: 4�@5^�����@8����@:��8t�=@<lEY̠@@j[�3�l@J�$�i�/@P�-h��@Q�Cl��@Rs>���%@R����Q@S����@S�=53��@S�a7�y�@S���ϩ@T�~"�@T6$�`�	@TT$7��@T{
V��@T�{y��s@T��"��@T�(l�@U wU�@U6���@U"����@U2��<@U?�Gs�U@UHT<"�@U^;g���@Uh��j�@U~?�Z>-@UzDβ�@Ut39�9�@UaK��{@UM��d]�@UEp���g@UO��|?�@Ua�$@UPXk�`Y@U/�4�5x@U.I�ѡq@U3�I�4�@U(�,_�s@U?�"�wS@UY�4"�3@UDC���,@T�w�^��@T�p��@Th��l��@T���%�@T�HHu�@S�ڹ(�g@R���N�|@S��2��l@T�	�/@T��ǳ@S��Z�@S�YP��@T >/�@TQ(4p@T%�����@Tv�h��@T��p|�@T\�%�@S{�V��@RH�u�܋@Q�v�x�@R���nM@Pi�x���@Pq�Up�@P����T?@TLB�ӟ@Tqvվ��@Tj?	?qD@Tp  �W@T� ߩ�@T��ɤ@T�%�?�]@T���ul@T�h��h@T�L�a	0@T�L��a@T�#q��)@T�����@T��T
(@T���l��@T�
�d��@T�g�,�@T��W#�@T��8�fJ@T�1�lL[@T�6�]w@T�����c@Tx�.k��@S�f �#T@Q�N�-�@I����W@I	ɻ$ّ@E�v,@!k@Fe�<N�@E΂��8�@S���@Q����@P�����@P/oBĥ�@N珶L�@Np�Ag-@P�H���@NN� o��@L�:��M�@N!�Z�eU@P�v�w�1@N�!�S�@P8=ci@QO+b���@Q-Ȑ߀P@Psy���@N?]ƅ@G
Z�,#S@Hz.[�@I=F_h@E��(�s@A~JNJ@@V���@@v�ݳ�p@@��$�@?��T�a@?.�#���@@%QB@@V��i@?�2rԍ@>�΁/�@>HP��S@>�c��C@@P�(JM�@D�����@P8Е�� @P5�,e�@I���>�@G�v/;��@C�	���@A�OhR�y@A'�Ъ@AoZU�@@���=c@@�f��H@@f"�ː@@��b���@A����@A�Z��1�@@��ڬ�@?�����@>Y�:˩p@>�F��,w@=�qd,�@=V�s�@<�ۤF-@;��TV�@;o�U��@;��9@�s@;��C��@;��i�@;ݕ���@;4��^/@:�'t�@:E��Ǳ<@9�K�?�(@9�� ��@9c:3��5@8e ��W�@7�=E��-@6��o}�@5~���q0@4�tmO��@6j���*�@8��=�XI@;t���@>�'$�q@@`�}�3@@�*�l�@B�zl	A�@G��r�@M����n/@O��mL�@P���A�@Qշ�Ɋ�@R=�ڸD@Rvua��@Rߠ�%?a@S8��6+�@S���5@S�����m@TQ��N��@Tf �!�@T������@T�zc��]@Tԛ�2��@T���Z�@T������@U�ml��@U'�Cy&@U+�i�	@U,G5*�5@U:�����@UU�7!�o@Uuq~72�@U�$講@U�4̻�,@U��b_@U��EU@U�/4N�@U��ܹ@UѐLC��@Uյ�@��@U���-,�@Uڎ3L��@U��;a@U�c�e��@U���.@U�DyQ'�@Uݖ*4�@U��6�'@U�3�^@Uޠ���k@U�P�>�@U�&���3@U���
�@U��{@Uh!��2�@US-2��@UV���,@UU��m�@UWs�	(@U9M=�K@U����@Ur1�lk@U�����@U����@U8�&?b�@UG`�^�@U9"<C��@U.M�@UV���@T��'�J	@T璖#��@S�4���@Q2����a@R��Dy@P]=�&'�@OfBB��W@R�;)L@T#��@T{��@TG`���@T]�1��@Tm���-�@Tx u@T����T�@T�/����@T��,�ӵ@T� �F;Q@TӪ��F9@T�帏<m@U["�;@T���ŶL@T�!}R0e@T��X�`	@T�f���*@T��!�@T�|;��@U5� H)@U��GM�@U���{@U���	@U1{-@T�ȅ��@T��i�gI@S��O�mx@R�� h�@R���h�8@R�'��@T�X�r�@T����T@T����׼@TR�jCI@T�X@S������@S�&{%%t@S,~)��@SL^y@�@St�rI�@S�K�>$�@S����@S�S�|*�@S���cP?@T)~O�/@T2��um@T��Ւ@S�pr�@S�m��g@R�.����@R="	�@Px��12�@L�ZU7�@IQ l�@H�A��3@F'l���@C�q��)>@C����ό@C-���Wb@C#�(C@E�a[O��@GJ�.d�#@G�a8���@I�@�j:�@M7Kzb�@Q�y~QB@R�J�
-@Q����$%@R�!-�+�@R�߶�L�@N���@L�"mP�@G�d�^�=@E�if��k@D'�pI�|@C1Tq1�@B�mޜ8@B�`��Y$@B���ط@C�m�Y(@CGƴ,��@BD��b�O@B�9S@L@C�P�"P@C�y�dn�@C�ۓ�I�@D��ā@Eo/L��@Eq�ߔ+�@E��9݀@E�l
@�h@Dٽ��|@Cd�X@B�{�L�@B���<l@ByS\�@A|�� A@@�p�̉e@>����&�@=P��?@<��PZ�@>C&�=Q@Cc����@G�����@M~��@N&aOGm@P��^�2�@P�nߔ\@R2���@R�e���@R��,��@Sm�X�7�@S�)0X��@S�x>��"@S��y'��@T zJw�@S��1���@Tt>�{o@T4,m�E�@Te`|R�@T�y(�@T�fF�@U����@U�5�@U(ǔS��@UKȠ4�@Ug��22k@U�h+)�@U�LHT^g@U�����,@U��[|��@U���
28@U����b�@U��	� �@U��@<R�@U�c�C�@U�&(�'@U�tc '@U��syk@U��Yw�@Vu�6��@V$6���@V0�/	C@V9m�h�3@VH��DB@@V?���,@V1�U�@V)V#�@V6�Z�3@VLX����@V]j�d��@Vlv�~�@Vn��&��@Vj���P@Vu��i[@V����C@V�^�(�/@V��RP�@V��*$Rd@V���DH�@V�ӫ��@V������@V�+%�m8@Vm���{S@VU�o|E�@VF���@V9�F��@VQ���2�@VR/�J3@VJ9R���@V1��D�0@V'���e@U�rK��|@U�2͔@UL{&{��@Tڍ���u@S�>0gM@Q��t�?�@S��	�y@T9����@S�Za*�M@S�l��`�@S߹[��M@TWM�}@T��W�@T7$��5(@TiM���@T���K@T�dk@T���8@T��d|�%@Uzwռ@Uh��@U!"�I@U�F��:@U,7U�@U<���D�@U<9}�@U8Rn+��@U?�5e@U]@��3@Ug{}���@Ux̢J_@U�4���@U~�!U��@Uiz���h@U`�����@U.��;@T�]��3@T�jL<�@UсKQW@U�.t��]@U�;�1�@U�w[��@U|�oh@UV��C@UD�M�G@U*���@U2���@UBӵl�@U��>�@U#s�@U?�j�Wy@U^B���I@U=�?a@U�LR�c�@U�YѺ/�@U�o10ͫ@U��1�@Uf ؎v�@U1�-?�@U���Ws@Tˢ�_�@T��@S���6��@S��P�@P�ēA�@N������@O���n�@QCDX��q@Q��b3t/@Rl��ſ�@R��@S��
Y+@T=�BI�@T�`��@S��'ď�@S�(�Ŗ�@T4��@Tu	@zG@T����+@T�w�UO�@T\D5�@S���n<i@Rș]JD@Rfv��@Q��g�d�@Q#ú�@Q��#4�@Pψgy�@P�Y�M5�@M��{&g@Mǰ���e@N��[@P�I㉷Y@R��RLu@P�ȷ��@P�ĥ�{@R�`��1s@R�9�g�@SuZx�J@S��n�@Rw��@Q]$�>��@RQA��H@P�z�]@Oh%�[�+@P��O#@M�xJ�E@M���Ҵ@O�بW�W@Q2J/�D@R|+��|@S��W@S��%�@S�A;�1 @Sѓm9��@T%���G@T�2�MtH@T����Lk@U%��ơ�@UyU�05�@Up{�o��@U=U�� �@U/>D�C�@U->��s@U-#�H@U3�w6�@UJr}�9�@US�X @U�;6S�@U�ߦb@U�p{(�@V
����@VL��+3@V 
o�*@V=��7�@VDx�6��@V+0R��/@V���1@V^�~@V$��O]8@V;.-��@VN�M
@VC��E8�@V>��K¹@V&r��HK@V��,N@V!���s@V-+���@V7bnT��@VU�gi@Vb��ˬ1@V�\;��@V� �[�@V�4�V{@V���9��@V�����O@V�G��@Wc��-A@WC��OBc@Wc��3@Wm`��=�@W{��ɜ�@W}��A�@W�4��@W��ӹN0@W�����@W�6��MP@W�p��e@W��`q,c@W�(��}@W����@W�:���H@W��4�M@W��s��@W�|��}@Wm�)@WR� �@W#��U@V�~)�@V�>"(`@VՏ���k@V��P���@V_���?�@V�/�5@U�]�2�@T��V׍@R��a�[�@RK*���@S���?�i@SDK��GJ@ST�n��_@S���>��@T�J�s{@TR<a(Y@T�Ԇ4C�@T�=Z@U#�J�x�@UC��c��@UPr�N3@UF*S�Z@UZ�]�)@Uc5 �Y�@Um�����@Ueɥ��@U��֑�m@U�b���@U����p@Uڪ��s�@U�����/@U�Ľ.�p@U��9��x@U��H�3@U�Z�� 7@U�⏵n�@U��\��@UƬr��@U˧c��@U�ڎ�V�@VH�!G8@V6�lBo@V=ᚇ�8@VLz��l�@V c�(@x@U�����'@U��vĪ�@U�i^KE@U����-@V 
(+@U���K@U�L{�s�@V!�Hnd@V&�}F�@V"�Þ�@VB+�H�[@VB)���@VO��MĻ@Vc慇+@Vd���,@V^;���@VW�1 �@VC�U��@V68�<��@V'����@V3��@U�ӆ��@U����k;@U=�F q@U� JCW@U-+U�A@UPs+A/�@Ug��q�@Uzz����@UbQ�S�@UwE���@U���@U���}�@U�B*��@V�5-�@V�D��@Ve�%@U�T��n�@Uɕ���8@U�w/X��@U�~�m�;@Uo�^|@Ua/o�P�@U_p��S@UR��dI@T����b@TU��x�@T]*�g8@TI"�/��@T�(����@T�G�>ś@U-ԍR�@Ua��P�@UO K�]�@Uj���$?@U��a�n�@U���pI@U�;�G��@U�:̴�=@U����˜@Uw�tO��@UJ�m�`=@U)�؃@T��#�$@T�'\=@Ud!��@UNK��&@U��5@V ��z�@VGzBKO@VW����@Vcy�E�+@V_���@V�����u@V�h�X�@V�W�?W@Vu��H�@Vi����1@VTx�c�@Vn�m��c@V|�(��@V�>��@V䟅��@V��	�@C@W,�(��@W^֨LA$@Ws��@Ws2&Tl)@We{�O @WTޅ�c@WG8ԩ��@WFk�5�P@W/��˒�@W&�f�x}@W� +�P@W�cc�@Wb�g�%@W�TRH�@W *��=�@V����$@V��o�@V�ctUx�@V�Y�C@V�	Ig�@V�:�f@VƔU��@Vև��@W� �a�@WE�iv�@Wvs�-�%@W��Xғ�@W�Ә��@XH���@X�;@Xb��@X
��U@X��qgt@X�@˝@X���.l@X̀Օ�@X�/��@XxLe��@X�:X��@W�<P˗�@W��iW�@W���C�@W���Mx�@Wǜ��}@W�Z�*�p@W��픴@W����@W�E�+�@W�6`�м@W��F]��@W���u@Ww���R�@W{z�'(@We@4R�@WM"��@W+f��@W����@V��JL�@V��4���@VF�\�#_@UTe"?�@T`�i�=@S	q�;�W@S֪�0�@T�??B�P@Tƒ���w@U�)�9�@US_1t=�@U��%�ߨ@U�zJ��5@U�3l\$@U�D����@Uđ��@U����W�@U�^8�6@U�Ҡ�&�@U���p@U��y(@U��U��@V �**�@Vd��@V�%Io@V,b�LX@V&��|�@V"?ӔM@Vdn�6�@V�����@V)\�'@V7i�XU@@VC'�Cd�@V@w?灭@Vs����h@V[rrI�@Vqm�h@VzmZ�C@V{Sr�@@Vj��"Ą@Vq�Z��@Va�֭�@Vk���=@Vr���y@V�xFB�5@V�*.(�@V��Ay�@V��t�m@V�����E@V�Ř5�@V��ǈ'x@V����%L@V��|d��@V�3��@V���0@Vݴ�v�@VΕp��@V��y�	@V���h@Vĸ�N��@V�~79��@VÄW�߇@V�*�Y8�@V��I�^�@V�C=ݬD@V�\eY� @V��@�@V�!���@V�9Zb�@V�]���@V�EՀ�@V��|,�3@WϱtUC@Wr�
��@WUN�@Wk����@W,!y���@V���H��@V�w��w@V�9����@V��`�@V���?@V����a�@V{����@V|D��m@V���r��@V����$@V���oq�@V�EwN�t@V��Zt3h@V����@V�3��+@W8�w@W��z�@W"�n��@W<U~�Qy@WU��5@Wt?�>�;@W���5@W��5�8u@W�����@WgSƍ��@WX:���s@WM�ĥ�1@W_v2�ʻ@W{ȐõX@W����@W��h��@W�9���@W�E,E�<@W��kg�	@W�A�ǀ@W���WM�@W���Q@W�2����@W�����@W�Fh��@@W�P�w��@W�lJ?�@W������@W��0'�@W�D��@W���)+@W�;aI.M@W��L��@W������@W�����p@W��L[@W�V���s@W�
xC@W�?�ؠ%@W����@W�@�*�y@W�C��P@W�Dt��k@W�=_�@W�I�m�@W�[c[�@W�Z�G0@W}a�3�@Wg+4�Ҁ@WN@{+�h@Wk�Sw�@Wq�X_ @W{���^�@W��e)�@W�48��@W���@Xdz��h@X'�,�V�@X$&�d�e@X#���Q@X4�a�`�@X#��P��@X�݌@X&��{k@XPa��@X���3�@W��N�X�@W����*�@W�㜓�@W�W��X�@W���,3,@W�o���@W���|@W���}�@W�.4WR�@W������@Wu$�گ@Ww�.�/�@W��d]�p@W��EC�A@WWwݨ@Wi��Y�H@Wa���@Wm�G��@Wc�Ӂ�@WS�r�<@W*W���W@W~L@V��'��P@V�
��@�@V���`��@V�u���@V��		;@V����a�@Wq73�@V얐��@V�>"�@Vz+nR�@Vv�R�)<@V|Dx�s@Vf2���`@VY,谭�@VBU�1L@V+�|;�@V ���K@V�l��X@V����@Vc�,g@V�4�z@V��f
�@V�H(��@V=�2o~8@VI�����@VNk�f��@VVn���@VT�)�P	@V]ƴ��@VX�D�߃@Vr_�Tx@V�٬���@VLFq1 @V�;�*�@V��ԭ�@V�UU�4@V�D��/@V�Nu��m@V��S��@V��
�D�@V��*{�@V��I�I@Vґ�?y@V����@V㤋@V��-�@Wĉ �@W/�io�@WYC�p�y@Wu^8y1�@W�S�@W�XgJyL@W��.ߐ@Wp�5���@W�]`��U@W�4�Ƴ�@W�WH�@WrSʾ�@Wkފ5��@Wxy��H@Wad+{�u@W[i9�5@W\���~@Wc5�&h@W���ֿ�@W����@W�U/���@W�	f�4�@W��"޲g@W\_�}��@WQd��t�@W87d�u@@W>�z~��@WQF��3�@Wc'x*=@WZ,�<X�@W��9=�@W�Y�!b@W��*MU�@W���ڳ@W�bM{�@W���B�;@W�>L�{@Wn��tC@WW� |M@W�3��u@W�\@��@W����@W�<`A3�@W�2�P#�@W�G9�J@W���[�@W��|Do@W��6;[�@Wa�4�A�@W_vquΫ@WM�!�p�@WZka��M@Ws�x�A@Wx�V�r�@WoJ��@WV���]@W3�l��5@W7� ��[@WK@���p@Wc�y$��@WE�ɳ@W����-P@W�ńx�@W�I��_�@W�C��3@W�4�z:�@Wۣ1��@W�Q���@Wճ�N�H@W��YfG�@W�/���@WܢE�}@W����@W��@ik�@W��r��P@W���
5@WLV��@W7���@WI��&�@W �����@W$�j��@W7m �@WM��MV#@WH)8���@WLzY���@W]��ڐX@WN�+-U�@WU�j�>�@Wl�j�@Wt����@W|�A�@Wso�p��@W��M�,@W�Q�wU�@W�y&h��@W��u�@W��w�˜@W�4�|L@Wܚ�9l�@W�կ�@W�x`H@W��e�@W������@W���� �@X|�؇�@X���@X��C�@W�Ak]Y�@W��ms�@W�uiU�=@W�ɊA�l@W�e�J'%@W��O�@W�:���{@W�/�4@W�q>��@W�d#ұ@W����=@W��k��@Wu|��@Wl���9d@WDF�6��@W3�(ч@W6? �@W@�)G�/@WW�(�@WWm��r�@WHsZ�k�@W7(���@W�Js7@V��9 &�@W ��~[@V��v�?@V��o��7@V�l8�u@V��/M!@Vw.#^L@V�?FN��@V��G�/}@V��
ɵ@WU�P�e@W7k�rx@WY'��@W\�u���@WL�((�@WG�C��@W!���h�@W���/�@V�](!�@V���Y@V� @V��=�@V�L�3;�@Vb����@VT�c�@�@VZ�{A@V�t��M@V��GV@V�i�ͳ@V�'�y�@V�L��8@V�K�l�l@V�}[��@V�*���@V���I7l@V�iL�ߣ@V���,;q@V�U��D�@W*�Y��k@Wg���\@W
�s9K@W�rHv�@W��ѭ�@V�EJ��h@V���;��@V�A=J�(@W4k��M@W���l<@W�)P@W/��
��@WzPa���@W�R!���@Xu��R(@X&�GO@X'h�[�@X#��>j�@X�C�M@X/�q�M@X4�!/�@W�g�r�4@W�w"D@@W�?킾a@W��/�yQ@W�qlŨ@W���@WՐ/X�@W̨�T��@W�j��@W�r�l��@W֊�ߘ�@W��D�X@W＄/��@W�r���@W�wY'b@W�
aF.=@W�bM_�@Wc�\��@WI�n�#@W^���P'@Wuܺ��@W���D�@XB�O@W���r!�@W�ꉗq�@W��.���@W�Mx�X�@Wb����@WX|]��@WO	��@WT&���@@W|�yZ�@W��� �)@W�`PbTC@W�nS�L�@W���p	@Ww�����@Wb�7V�@WQ+oE��@W0�R�@W�d�S@W��5ѵ@W�5|h8@W�c� @V��!�J�@V�yVg��@V�fަ7@V�Z��t@V�1��P�@V�<�ۈ@V�"�4U�@V���nd+@V��v��@V��Ge@V�c�A;�@WJ��Ę@W^����<@Wf��a��@Wm\���@Wm����@W-�a�;�@Wk�-�͑@W�!���@W���ן�@Wyk�o��@WT"GVm@W"3h�Ky@VӅױ~�@V�(�t�t@V���)��@V�|�8@V�p��#�@V��s�@V��S#�x@V��Ci@Vs����@V~��Vı@V��֪}�@V����T�@V�%X�!�@V�h�g��@V����@Vܻ��@V�9C��c@Wdg�R�@W,س�H}@WE�Z+��@Wp�����@W����@W������@W��Q؏�@W���A@W�vx��%@W��M�c?@W��x�l�@WԨĦ�@WѲ_߬@Wү�(��@W�{�*��@W���ܟh@W�;
�-@W����@W����e3@Wz��7�@Wix�F��@W{pɢb�@W�?]�C@W^��î�@W9b�U@W61ߘZ�@W0���8�@W%����@V�g��V�@V��M� @W�����@W"�;c�@W ZY��@V����@V�+w�W@V�S��@V�oB~=�@Vߣ�_�@Vޥ��0�@V䙫숨@V��D~�w@Vy-����@VW�Kc��@V;�D�@V+0!=N�@V@�{�k@V6��4!�@VLs�o@V�>hd@V��xH@W	�z@W<LA�AM@Wg�b^X`@W�d�i!@W���s@W� �zzI@W��0�,�@W�)b/�=@W�-��ɛ@W��g8#@WaAVݬ�@W#8��9@WAC�@Wd�*E@W��=B�T@W�Ps�w@W�6�W��@W�G��@Wp��,D�@W`��Î�@W[��^�@W\Lx��/@WN�g�&@WC��@��@W1b��_@W�1^\��@W�G�X@W�5#b�@W�@���@W�NA�n@Wk�ʻś@WN7�z�@WL7���@Wv��Bm@W��(c98@W��#�?@W���\�@W�><�?u@X�(���@X?8��x?@XO�G���@XF�N�w�@X9��.�/@X� 1�-@XʬP@W�+ۺI@W���ؤ@W�� {��@W�U[�q�@W���iB�@W�	�p�@WÑ8�@W�F��{�@W�n��2�@WȿrƑ�@W���ֹ�@W�T��T�@W�]yi�@W�~R �@W�`����@W� >��8@Wu�����@WH,?f��@W4G�9
0@W1�S��@W(��mh�@W�md�n5@W�A�@W�ZW�pC@W������@We�іX7@W�'���@V��]�A@W�R�@W ��-�@V��ȼX@V������@V�+:���@W>B7�{@W#�s&zi@W��L�/@W�� e�@WEx1|Um@W4��ҳ@V��^��@V��!�Q@V�ƍ�d@V��c<��@V��}���@V�ظ7V�@Vz
i��@V����X�@Vv,�x˘@VA�J��s@V�[�^�@U�>f-�@U�M�ݿ@U�uݢS�@U�+�] @U�YdD�@V�:Q��-@V�q�I��@V�4��a�@W���X@V�9��@@VY`��@V=$���@V�kq#E@WySSL�m@WC�>7X@V�6�`@Vy��_@Vk�b�8@V=���v�@V�.?K�@VZ�Z�@V�E�#@Vo��@VSG��D@V8��/�@Ù�\@U�-p�5k@V�i{ @U�@Xｹ@Uι��@V����Q@V?�7�@VvI���@Vh�.nC@VYf�,@Vp��h@V��J7�@V�(|�@V����M@WUR�o��@W�!(7E@W����@W���S~�@WT�Ą��@WSasar�@Wf��^�@WvBm�A@W��c�	@W�-���@W����Y]@W^+W���@WE��}[@W8-�9�@WE=!X�U@W=
Ý��@W4Ly�7�@W0�R��@W����|@V�wQF��@V�L�@VՍG��y@V��#r�@V�f�9p@V�#��X�@V�_a���@V���E3@V�y�u��@V����k@V���Pg�@V��׬ƥ@V|Q�v4�@Vw�&�3�@Vt rx�@V����@V��7,�K@V���k�K@V,�2L�!@U��M�;@Ua��W@U3m�@@U_��U�]@U��@iV�@U�f�o�5@V�+�մ@VM8��B�@V��{��4@V�1"r��@V�t��Zu@W*|3���@WT�\v/�@W����5-@W�+��S@W�7�'h�@W�spA4�@W���/@W�'D�@W�U6N"�@W��c�d@W�6ʐd�@W�Q��X9@W�/��e-@W��w�-@W�M���@W�
�[@W�7�Դ�@W��Xe@W����Y=@W�䬍LK@Wǭ�p��@W��;�@W�x+��d@W�Qþ�@W�@4l@W�����u@Wߔ�y�1@W�����@W�L1��@W����q�@W҃6[�@W�'SU@W�M���@W��r�@W�$v�C@W�����U@X/�O
,@X5z$P@X(�!�X@X
j��e@W�>��<�@Wڈ��� @W��8r^�@W���Z�(@WZ�E���@W8�;�Z�@WZ/��7@W���/@W��}�Ç@Wu�����@W}&]@WlJ�@�@WT��9"�@WG4�T��@W<=�b��@W"o�=8�@W&�Uhg@W���x@V���y;@V���m�m@Vݎ�)�@V��IԸ@Vm\�$:(@V���9 @W$&��&@W�ů�`@WX����@W���@Vۼ0ſ�@V��D���@Vw���#Q@V!���@V�w50@UߝŚ4@U�8;�@VB���5u@VmΏc��@V;��@�@V#T+��l@V|�Y'#%@V�>N��(@V��H���@V�}�+T�@V��yJA@V��E�}�@V����@Vgok�N�@V+�b�q�@V(�J���@U�L��@U͸4��%@U�k�-��@U~
�{s�@T�����@T��<V�7@U C�=o-@VC����@W r��m@V�Y	,��@Vp� ��p@Vu'�9@V4k�[8@U���;u@VB�ͮ8@V����ݻ@V�C�|�@V�R.�@Vc~9e��@V�7�GU@Uеo�@Un "+h@U}Dt�FH@U��(X�@VF��.�@V:d�t�@U�i�j��@U�;�{��@U����@UM��Э�@Ux��)@�@U��j��!@U��M^'@U�:�2d�@V!}"��@U��P��@V,'�ˣt@VȌ��(@V%���ל@V�Y��4�@V��W ��@W)m���E@W 9\%�@Vܪ�3o@V�V~��}@V����@V�O7�fK@W����#@Wd�|@Wg�a�[@W7�9�c@W�3�@V��,��s@V�,ԴL}@V����@V�e�C�m@W�\ӷ@@V��G;i�@V�.ɵ$<@V�/�H��@V��	}t@V�}1�@V��-Z@Vk�sW�@VU/XD@VfB�6k@VYC��)@V-Jm/Z@V$Q��,-@V�yV�@V���:�@V�ŚsA@V��ב@V<cZ��@VQ����@V~�����@V�1�ͤ�@W�T�H�@U4p���@S���Э@Q��!_�@R҆�� @S^/{�@S����T�@T���"�@T�h��D�@U��z>�@Uu�j6-�@U���.1@U��2�@V@����@Vv5�CT�@V��W��@W�^Sh@V���T<�@T�|����@U���Z�@V�R�$��@W�t7��@We�;M@W����@W��W�$�@W���;��@W΄V4�@W��6�@WŇ�f�@W��.���@W�AfA�=@W��᪜@W�I�/�@W�6�s��@W��X-`@W�B�Z�@W���%C@W�[��9@@WѲ�r��@W�+�L�@W��@W��\�@W��^\�@W��L�.@@W��YM@W�s����@W�Z�x@W��W�n�@W�����@W��WH�4@W��d3�-@W��1�@W��="/@W���)@W��c�,e@W~�,dm@W+W�ٳ@W
�Vс@W�t�9@W>�<=I@W0|�@Wl�Ce.�@WX�:�}@W1*�H��@W2�R�?@W �Sǻ@W`/c��@V�Jj3@V�(;=j�@V������@V����VH@V{��H��@Vf��B��@VV�"�ng@V)�H#��@V���@V/rɡ^@VL1�g)@V���C@WCJ����@W��f�@V�PZ}�@V� ��c@Vr�_�w@U���ڟm@U�+��@U�4$��@U�����x@U��=@l@U����xA@U}r��@U��o� �@Uc�F���@UZ��OU@U�#r�H@V3��?�@Vv�Q�@V{쀓Y@V����@Vd/�>�@VI@�>�@V%@���@V��q@U�*����@U��0�6�@U���H1@U;�� Q@U&s�$�@U��a��t@U���H�@V�J���d@VlN_�@U܋B[h@V!�ɝ��@V�
<OU@U�Ga2�@U�A�+�d@U�Q>�v�@V'/�� a@V�p$t@U�&�s�@UM#@��@U[\|~4�@Uf��(0@T���j�@T� E�c%@U5�]�@U��$$@U���S@V	hp��@U����$�@Ur�w�C/@U7��@Uq�2m�@U����@Uf����@U�k�Jռ@U�QF���@U�̊�@Vs�[u|@VR�ڞ�@V����x@V�Q�QD@V{��hX@V����@V����8�@V�h$xy�@V���Q�@V����g<@Vއ��h,@Vܑ� �@V��P�@V��8ax@V��J�@V}�.R�D@V`���]$@V;�!�߉@V ��E�@V(SYPx@V�V��W@V����@Vr�@�m=@Va��M�Y@VK$����@V-���I�@V0�^��@U����@U�N�m�@U�ʠ%s@U�Pe�@U�~);��@U�}#j�5@U��![�@U������@U���o_@U�3�`T�@U�+�2�@V<���b+@VplHCj�@W<�}@S��|��Y@Q�4�*@Oꑪ5�@NO�	�b�@P���3ZG@Q��5��t@R`YH�@R�Z��@SB��$@S�$� �@T&���	@T������@U	��!W�@U3pP.��@U�?�@Ve+خ�@V<;��a\@Vs���M�@V_��@V��i��@V����@W(`��@WE',��c@W��F�c�@W܀e88@W��|H�@W�G瀨@W�;��@W������@W{ce���@W��R���@W��]՛�@W��	�g@W�D���@W���[]�@W�뵰@W�pRz�@W��L2� @W�����@W��T��@W|���E@W�9x��@Wr�PCl�@W~�#�U @W��=�}@Wq��8�@WT����`@WK�G:��@WP�ӲC�@WQp?b�@Wj����@W��>��@W{t�{C@W�V��@Wdo�|�@W�׽õ@VΈ�t~�@V��(��@V�7�a�@V��*��E@V�wރ�q@V�@�l�@V�D��u@V�˨�i@V�H��@V��'D�@V�Oɩ�@V~Q�X�@V3��Oh@U�u!�|W@V.1곝@U�e�;�]@UAJY�@Ug}�H$@U����\@V{�iZ�@V�K���@V�QOyē@V��u��@V񩆚��@V�pc�@V�6�a@V�q�knS@VqѡS�@U�lK��w@U���A@UVe���@U3�7���@UW�2�@U	�4��@T�J��"�@U$M��ߣ@Uj>�zg@UR�.���@U��H�#�@VS���(@Vg̦��Y@VJ���ʃ@Vf�S,�0@VTu���@V*׽�'@U�E�d�@U�;]��e@Utߵ-@UT�y�__@U\��$@U���6�@VC��o|�@V4M��D@U��TM2�@U��F��@UgL���@U�]-l�@Uf��C�(@Umoi�@UDW��e}@UBC���f@U)`�2I@U9��'�@Uj��}�@T�[��3@Tv�J�?T@T��^I@T};�]t�@Td�钎@T�`�U@T���$n@T����(�@U����@U�յH��@U��[ �@Ui$c/M@UX��Դ@U��hه�@Uy���h�@UJ�f*�@U����q@U恄�/@UȄ�%@U��7�d@Uڅ��n�@U�A��i@V�?%D@V2�z�n�@VB�j+�@V-^����@V=���@V `����@V=��y�@V���&�@Vw�k�3@V�w@VE�O U@V"?��@V�W&�w@Vѻ�f@U�ݺ�E�@U���;�P@U�q�k��@VrO���@V6-�3��@V5'���d@V:hL�E@V'���@VqXz1�@U�R'2�@U�ӏ:�@U�DC9@U�_��f�@U���!�@U������@U�;���@U�g��Am@U���Y`@U��-�m�@U��M��@U�rֳ�@U���0�@Vd�n�C@V����س@Q.��F@Pښ:M�@O�!1r��@L�H}���@MKJ�Bb�@OF�����@P5LѦl�@P�*"b@Q���X2{@Rf���I@S hr�E�@S�g7h�@TP��y@TG%uG�@T���H�@U�B2��@U;��H�f@U�̥F
@V/���@V]uSg@V��S^��@V�n��^�@V��-e@W���+@W'�K;�@W�ܩ�@W{���@W"���@W-�9(Y@W;���@W?��H��@W+���@Wj�P�@WU�a��@W|@�L�)@W~yV)�@W^@����@Wh�7�@WM�E��@Wb�O�@V�uS�e@W5�3�.-@W-�^���@W-���f�@WS���C@V�H��8=@Vأ��  @V���<0e@V�u���@W�E=@W�ϰ@W^C��C@Wg���@W��͠p@V�m�$�;@V�;,[�@V�e-���@V��XI�0@V��Dw@V����t�@Vk���@VI���I@V=h�g�@VX�\K��@V����@V֒��@V�gf^�@V#�� @U���l�4@U�(@�@U��?��@Tr�rN�_@T�ۨd�@U!	�I@U�F�;^c@V�{Z	 @VS�%���@VA���4@V�R�F�L@V����
}@V˽JJ�@V������@V]���}L@U�4T���@Up���E�@U�i���@T�_Jя�@T���@T�"i n�@U� ��@U}�I!@UOas=�9@U��;K�@V��rC/@V CU�]@U�#i��@U� ��@Uށ�4@U���#<-@Vg_,	@U���Ax@U���!�S@U���ƋD@UwT����@Ua7�A/1@U^ه�K{@U��D�H�@U��%�k@UN�f�D�@U���H�@T�ghP@T~�`@T~�[k�@T��6@�W@T��Orj@Ta�o��P@T����y@T���=i@U��-��@U(UR8{@T����O@S�I4��	@SM�ָ�@Si�9@O�@Sk����@S̯E�@T ^�3%@T^}��Q@U���b@U��m�@U�#��5�@U<n{к�@U'�4?�
@T�پe�7@T�e󡏋@U-��=/�@U8S����@U07c�@U����@U��w�,@UK��#h�@UhZ��q�@Uu�#��@Ud�`��3@UK���M@UIrݻ@U]��P*�@Uk˭��@Ubd��J;@UWm�U��@U[V�Ù@Ut�6a��@U��Zc�I@U�t�`]�@U������@U�T�hso@U���.@U�ӭ+�@U�gGQ$�@U�g��@U��V@�M@V����@V^��S@V�`���@Uգ{L�@U�����@Uf$r�@UE�+;@UL~���y@U_�<U-@US��v��@UaFo4�E@Ub��ذ@UVU�Ǝ@Ucm�� @U���
�@U��� @U~�m�}@U*�i�ո@V��q��@R��A�כ@P=�V��u@P:�#vֻ@L�͙/�@J�t�KoI@L{:w;@NbK���@O�9�V@PɼX�.�@R2�U+!@Sk��£@T#�&v�W@Th��΋�@T��;���@T���@T��\F�@U��L!�@U�XO�X@U�l���@U�s��Gp@Vo1��t@V.ؿ�@V1����-@V:�&���@VQ��|�@V��#X�t@V��1�v�@Vʡ�As�@V�%#
Z�@V���
?k@V�5MV�)@V�Ỳl(@V�J���@V�!E#�@WM.��@Wm�y��@V�1%�t@V��~
�@V�Q��k@V���;?�@Vz�ݴ�h@Wv9y�0@V��4ц#@V��/ێ�@V�&X(9@V�?\N�@V�;AL�E@VT��:��@Va��@V/� ���@VWfou@V�J�$�@V��[0�c@Vit�ʉ�@V��W;�@U�J"g�g@U�`�	�H@U��}��@V*�S�T@VJ�d�+@Uۓ��"x@U�o>��@U���^�@UnJ+�7@V-$��'@V�q���@V�O����@V�0L�=u@U��+�8@UFD0��@U��Æ}@Uk��|@U�P¢@V}<$I�@V�䮦C�@Vd1���@U鲍�y@Vy�	��@V�9*�#@V��Y��@V� �;@V6�=t"�@U�)��@U��x@U��Z�@T��}�+@U��b��@Uo}���@U��Q���@Vߪ蘹@Vm�o��@U�~�%@V���7@U�lۼ�@U�����@U�Х ��@U��5*��@U�)���C@Um;��C@U5Y,�@U�<��@U�6�0@T���yD@T�?�d�@T�FN���@T�g�4�@T��'��@U ��@T��J[d�@T���Eh�@T�k5��C@T*�~ �@S��`�]@S���aX�@S��@�9@S�jWG(@S�	bD?�@TD_��L!@Tft_�h@T:���)@R�us��]@Q�l�{�y@QyMG@Q��?e@R&�%�@R}���I(@R����@S�V u�@T��-^@T����@Tqw����@T~;ў�p@T�$��@TP�'��@TJ\H@T`�f��@Th�&X@Tk��X@Tb;fO��@T��+�@T��$o��@T���[�S@T�O%��@T�u$@T�`���.@T̙fP	@UuI��@U
�7ǥ@T�����@T���(��@U�#���@UT�w�@U!>���@UVf�,@UjD���@Us�w�O@Uc�	�m3@Us�`i�@U��R=�@U�b�
�@U�����@U�rg=@U�Ud-p@U�*�߂�@U�zjr��@Ur�䷬@UG$@U&� ��@U&�9�y�@U5��@U5%dig@U@D� @US=���@Ujp;=
0@UH�PM�4@U8���� @U(Ѱ��@U��i3@T���E�#@Uc�Pт�@R��D=�6@M�أ�:S@M���͇@H�9�݄�@H�� 8�@I� Qgx@L'�5yR�@N,�XN�@P����@R�&-s@R� ���@SL���@Sr�c&ɥ@S�\*@S���oG@TDYl1�@T��F�-@T�n#�]@U="V�@U2���@U*�n��d@UwT.��!@UfZqِ@U�� .�@U�z�A;u@VCf3��@V}���t@Vm����@V6�?bO@U�\1��@U��>nX�@U�)��g�@V�_�Q@VPZi`@V���[@V�`2�Q�@Vu���4@V����-@V�����@VZ���R�@V0�C[�@VE��D�@VM�.H@Vw'�@V��D*�]@V75�@VS�a�@VCz7�K=@V��,_�@U����@U�EX��/@U��,��@U�n+�K@U@���@T���a@T��Ò�@U	�����@T��;�l@Tдe��@T�ر�I@Tq ��@T�+��I@T��8Q�@UY�Ԩ�@V/��p�L@V�a��A@W�����@W���@V܏���@V<�)�[@U�6���@VxY/��@V�f�
�!@V~2%F@�@VS�RvJ@V#�#|)�@U�1�x�@U��&V�@V0�@V/D�O��@U� �X@U��'�W�@U�1K[%@Uo�-'[�@U����@U��u��@U��r��@U�����e@U�h|���@U{��tP�@UFYf��\@U6���ȡ@U1�:/@Ui�*�@U��1�@T��7��'@T������@T��Tp@T�I�/@T�Y���@T��'�@ToV�3 �@TX��E��@TE��%03@TA�� y�@T�I�@TAX��@T=?`#@S��ױq@S��V��{@R�9��}@S$w(>$Y@S�9M�@R�<t@R߾�r�-@S�t�A@SI
t�uK@SWׁ&.A@So+0���@R��|I@Q�S��s�@Q=nR�m@O]?`�]@O�L�C�U@P|E���@P�2?�b@Q�(�W�@R�'��U@S8^Pk_@T����k@S��>@S�{rR@S���@S�<9�4S@S���W�@S�mCr�@S�3|�dG@S���@S�la4�@S���O?�@Ts���h@T��kk@T e����@T@St0�9@TdG�I{@Tu�k<R�@T�v�&V3@T��ܻ�@T���x�@T�J���@TΓJ��@T�dRn�@T�V)���@U%A��7@UG���+�@U+�k^@UI�X�|e@U]���`@Uk_qb�x@Up��%!@U�h���@U�C�
�y@Uv����@Uh�F�%@UE����@UG"��m@U!Ȝ
�@U�h�@U4l��@@UL�{@@U�Y�a@U��D��@U!�*��@U%t���E@U�p�� @T������@T�ڡ��@T���br�@T �c��@SU�I���@S�@��A@ND��xM�@M\C2�L@K-K�ظ@G�!��=@H��5Y"�@J��r�d@Mni��@O��r3gK@Q�^s�c�@R�J����@R���B�@R�|���@R"�iٖO@R��@3�	@R�`��@S3�j�|@S�D�rt@S����!@T3ZC�e�@T�8
�;@U����@UE�R�@U�zlj#@UƝ���@V/�'}�@U�'�TE@U�����@Ut�z،t@U|B�Ĵ@V�ȃ�@VP���u@Va\G G�@VKt�X�8@V:i�\�@Ve뫩E@U�&e��@U�PBx��@U�"���Q@U����-@U����o@U����`�@VY�@VK�3�5}@V#~b�@U��[�\;@U�����@U�����@Ucng���@T�6f}@T�Ѝݹ�@T�Ֆ	 �@T��a�W�@T�l3�E/@T�L?��@T�B� I;@T�d"
P@TƼ�L2�@T�s�)B�@T��К\�@T���T��@T���@UH�E!^�@V��L�@Vi���@V�:&�,(@VŃ���@V~�0� @VT�Lw�@U�8�?��@Uǥ�}s@U�)R�@U��NF�@U�aG�R�@Uo�0�@UK��ή<@Um?EƋ@U���J�@U�6*�@U����@UtL�c�`@Us�H�˛@UrBJa�e@Uq���@Ui���4�@UE��3@Uf�w��@T�98��@T�0�.�[@T���x��@Tk�W�S@T|f8q�g@T{����@TT���@4@T-��>@S�}�>p@S�9��B�@S޵�s�@S����@S�'���@S��M�Wq@S�𶿩�@Sȱ����@S�K�$k�@S��
S��@S�K�tH7@S䗄c*�@S�hF�=�@Rp�H���@Q����1U@O�P-�@Pu����>@Q�*���@RME`�#@RK�ָ��@R�S�G
�@R�4�`<@R�~���@R�5�e@R��eP��@RC�X���@Qú`�^1@Q�܁�c�@M���͓@Nҡ5w�@PQ����@Qj}�A4@RAͥ5@R�����7@S4�,l{@Sxȱ�A�@SZ��5K�@SJ�!�0@SM��4�-@Sih:��@Sy���@SJ#Ϳcz@SU [��\@S�ݧ���@T�C@T�t1��@S��S�@S���G@T๿�@T8���S{@TzƓ/�@TmR_@Ti��c�[@T�J����@T�T�@T����S@T�֖�O@T�D�+�@T�&3zw@TԆ�P$@T��x�2@T���%�@UEx���@U#<�@Uc���@U)�%P�@U,�>͙�@U6��a@T���|�`@T������@U]�^�K@T�:�l2�@T��,8�@T�*vH��@T�v#��@U)0�3�@T�?_U��@T�)(c&@T�w��1@T����@T���T6�@T�{O��@T4mF��@S���iw�@Rq	�']@R�L.�$y@K�<�腛@LM<��ӳ@I��_�D�@G���{�@Hj�ꎠ`@I��`�]�@K��Hq�@N����@P�� 2��@R�򏉇@Sǘ�@Rl���[@Q�X[�c�@Q��O�8@R�t���u@SGa��@S�\�@�@Td;����@TC�, �@T|T��T@T��K1��@U���@p@U5Z��dK@U/�-~+@U=_��W@U�W��8@UZ�x�&@UF	I�Q@U��k%@U�8�+@Ump��@U[M�Uk'@Uaᄳ%�@U�;���0@U��#�53@T��T��@T�6v��=@U�6n�@U-��/kn@U�6��@U���@UW�^�J+@U��Em@U���	��@U�t��h�@UCz�B{�@T�@>�f<@T?ne$@SU�P���@S�yx/��@T]`��hm@S��k�v�@T
����X@T����@TP-�&=@T�n��!�@T��HAB@UB#|��p@Ur��K�@UvuUk2�@U~��}(@U�G��;�@U�qݮxh@UÃ#yH�@U�t#d�@U��,'H@UG�N�@T���h�@TӮ«O@T���O�@T�����@T�B��O@T�XO@��@T�㚞ޚ@T�XB���@T�)~U,@T�یB�)@T���_�@T�}is@T�0���@T�js�@T��bϼ@T�J��!h@T��A�\�@T�%��@Tm��}0@TN�CRx�@T%�`�ʖ@T����u@S��)�@TB	D5+@S���)Y@S�>h���@S��]_@Sz�x���@SPk+��@S@���@,@S1E��C@SHA��co@SW��:�@SE���Yk@Sc:@S��FN�@Sƿ Q@S!��@S22��_�@R�n�JÝ@QF��Q�@L�u}���@L2f<��@P[., R�@Q~��"@Q�����T@Qնe�C1@Q��'#�@R��c
�@R��9�@R5�p{��@RpE�ԟ@R\ 'w�@R&.M��@P�hG���@N��&U�@QD|^���@M��ϥ�@P>*(	�K@Q���P@Q�-��~�@RT��+=�@R�c�D`@R߫�Q\�@R�	���@S���@S+���'@S5X��c�@S>O�t_�@S���#�6@S��o�@S��#�-@S�>mY�4@S��j��@S������@S�|a�HO@TY��T�@TV�
��E@TM9��0	@TN�p�;@TA��H΁@TVxޞܑ@TN��_C@Tj�LU@TT���b�@TS��l�%@TN�/�@Td��Gl@T���4߰@T��)�R�@T��o|7@T�8r5@T��y4&g@T�3�Q�@T��N��$@T��RGi@T���s,)@T�=��[@T��k���@T���Vd�@T��b�B�@T����m@T�9�lk�@T�Ѫ�%�@T�`d]�Z@T�Y��@T���T5@TD8�]��@T�1���@S�kʐ}@R�W'��@@P� `4��@Q6�w�e�@G߽���@G�ϙb��@F�s�ʅ@G��hʂ�@I�{ݔ�@I�׸�k@J���4� @M�[N�Q�@Qp_�N�@R G�7}k@S"ѷt@R"a�G�@Qߌn�@R;��(!@Rܾ<7�@S����s�@T ���T@S�bO�+@Tٞ�H@Tp$z�q�@T�����@T�	Z��@T�>�>@T}��\@T��,r5@T(d�@T}�G��)@T�*0�տ@T���o�@T�J��*@Tr��[sS@T}~�vP1@T����f@T�J'��G@T�@ԗ?E@T����@T�'
G�@T�LM�}�@TjJbi�5@Tb1�(��@T�'ܾt@T%��%|@T��r@T1I�3��@S��[\��@S�����@S�S�*�@S��g��@Ro����@ReRIĸ�@S;�7V@SFg[@SZ�
 ��@S�B�Y�@S�i٧�d@Sr����g@T`lfWD@TNڴ�]@T[Ky�<@TR��&d@TI�<"�@TOKgo�@Tw���@T��F�u@TIl��@T2���@S���f!@S�1��=c@S����-�@S�[v�t�@S���b�@S���B�@S���/�@S�y�@SҐ����@S��P@S��$b�@S��&*��@S������@S�vP!y@S���$��@T����@T�m0@S⠱Iӵ@S��[<�@T�O#�@S�
���K@T"a$�@S� u@Sͪsx�@S͹�	Ń@S�qV.1@S�m�;��@Se@R��@R�����@R���	@R�5n��@R�*���@Rx"��@Rr�Ȍ��@R_��@U@R5��@R0D�^��@R�zݓ�@Q�)b���@Q�2��v@P�����@P-���0�@N�k�D��@LU���P=@O�G�@P����S@P��d�
�@Qd�B@Q!��wg@QW���6@Q�da�H�@Qq�h+8@Q{�M�.�@Q���2�@Q���eA�@Qbrб6�@P��0Y7@QKh`B�e@M�>�{�[@N��C��@P`6��@Qմ��+@Q�S�8��@R�X
�}@Rb ;� C@Ry̌�n@R���Q@Rм_��@R��l)Q@R�[+�q�@S<�K���@SS�[@SZ,%-��@S4֌�˵@S.�ǣe@S����k@S��8nAU@S�ZX�[@T��JG@T"ZC�\W@T?5���)@T1����@Tq��)�@S� ��P|@T����@T�;��@T�����@TR���@T$�M�@T6�<� �@Tf����[@T�ԛ�@T�f��7@T�'�z��@T�za�@Tt;�b@TZ��??p@T]�7�C|@T\�G��@T��HnqK@T���)a@Tv�If�@T�A�J@T��.>C�@To��t��@TR�T_�@TJ.��'@T�{�@S����e�@S��	��@S�`���@R	-h�@N���~�@L��<jt�@E��`��@E�0U��@E��[uz�@H_ ���`@J�J/�&e@K�Զ	�@LF>	�W�@L�g�S@Q?�UW��@Q6����i@R�d� �@Q�����@Q�%�I��@RA�S���@R�T�8�m@R��eL�@S3�M��@SN��ɟs@S��*Mg@S����i}@S�,N5@S�O D�@S��wX2m@S��2��@S�
�ٹ @S��[`5@S�G�=D@S����7(@S�rARa @Sꊂk@S�eJ�@S�_�
�@T��4@T �U�@Tȍ|O�@S����@S��7��9@T����@S���M@S��l�p@Sdz.C�@R��('@Q�PjO�@Q@i^q�@P��[�;�@O�KEF�@P��)S%o@Q��@�@Q4'�7��@QE�)��@Q�m��-�@Q�.��1@Q�h�i�W@Q�y�,>�@RP��/g@R.���r�@R53�cܢ@R�Fw��a@R�T��@R�o�I�_@R��i�;@R�T��@R�Drt<�@S�#܉@S �-��@R��a�d@R�¸�̷@R��ଶ�@R�'���@R�A�~�@R�T
L�@R��Q@R�7��r�@R�6@R�BQ��@S�̓�u@SCU.��@S@�x@S��؝�@S#O/�%�@S8�'�#�@SQ����	@S73ۖ@@SKx�-w@S_�f0��@S�P�O@S�2+�L@Sr���m@SG£N)�@Sd#wv�@S?�N{�@R�/���|@R�oVZ�@R!�?{� @Q��s�M @Qbe�F@P�w�ciY@Q�\@Q��]�X@QC=5i�@Q@���@P�%�֠O@Pm���H@O0K8��@NsĔ�)@MA`i�@J�����/@I~]��@H��Ҹ:G@I~f�c&@I�8�h@M��R-�@O�S�eM@PFRQ,�m@P�_��T�@P�ӓ��@P�?P��@P�ۉ	}@P��m��@QH�E�å@Q�H.�/@P�>��d�@QP�ӝ@N �2�@O��֠@P[��I�@PV\�r�@P�9��D�@P�'LQ@QW���`4@Q��9I�@Q�����@R��@R1��j<@R[#.L��@R�z7�z�@R�"̅�@R�?��@S�D��@R�'0�C�@R�
�P��@SBj��a@Sy�Y�UT@S��q�[@Sܺ���@S�ڜ��w@S�TAU@S�O�;��@S�Y|`@S�ܸ��@S��)�	@S���Z,�@S�G�I�@S���5��@S�ź��@T	��A�;@T1�2�{@TH�8̻@TH�@��@TI��g��@TO�� @T0Ly��@S����@S�+�[�@T$���@T+�i	�u@TS�;��@T%-���@T����@S�����@S���9n@S�&0Dgl@S��M1�@Sq8Q:w@SL���"'@R�+��o�@RA��ŰG@Q5AZؕ�@J�d����@G{���@F~���4@Cw���k@Do�iհ�@H�
��
�@Iz���Q�@J�ȖAL%@K�G�`��@JS����@MڿU�S�@P�F�)p @Q���@Q/�*�9�@Qb� vn�@Q�� y�G@R3B��#@RWl৫"@R~�YIO@R�%��@R�(T�z�@R�6k;�@SH	{GX@S	����@SC`�-��@SF�3��@SL�P��E@Sy�� @S�����)@S�R4M�@S��$g@S� fܕ�@S�%���X@S�-��m�@S����k�@S�����@S��6��}@S�5œ�@SQ�?lQ"@SV+5J@@SI���@R��%��L@R,�M��@Q;����@O�z`�W@L����`@Hoh"��@E:�?ì�@E�|P�@HO�K�yH@L��o��?@P���Iɬ@P��� @P�X�J5F@P�u�R+@P�f��@P�*�`��@P�k/v^,@P��#,�@P�ʣ���@Qo��1�@Q-΄9@Q[8����@Qs��u(V@Q�Bx�bK@Q����j@Q������@Q�P�4�@Q�,/BN5@Q��~�@RA�Y��@R�Uۮ�@Q�	a
@RS��5@R#�)՛S@R8�g���@R:K�H�{@RF�ͤj�@R%�+ I@R���5(@R?̃@�7@Rt�RP�@R7U��_�@RZ�
���@R���b0@R�,P��v@R�A'�'@R�}�G��@R�&����@R�dZ>�O@R�}�ߤ@R���ݯ@RoD��p@Q��'bfW@P&j\� @NtzJ6 @MY���;�@Kg�p�@K��1[�@LU�R[˴@L��m��@M�����T@M�G��@MF���#K@K�>�LS@IB���67@H UP`��@E��vnk@DE���F�@C��g��@D&�+�@F
w��R;@H��h0�@J^���ޏ@N9s���@O�/i��@P(E�(�M@PR)_<��@P}+�Y?@P_�c�@P�.P}@P1�D�@P����c@ON`���@N�0=� @PD���@Pc����@P1�ф5�@Pg���|@P�l邾P@P�u}r�@Q���@Q.	���@Qf�vAR�@Q�s����@Q�^����@R��lP@R+pa���@R����@Rz,�h4�@R�	�28�@R�ֹ�R5@Rí���@R�Lh� @R�Vd�?@SD)A���@Sn�$#�@S~ps]�@S��iyZ�@SlRVQ�8@Sk�e�@Sf����@SuŻ��=@Sr�E���@S��D@S��M�q@S���̶�@S�(��\u@S��=��@S����!@S��bV�E@S��zf@@S�Y���:@S����D�@S�z0��G@S�ۇ\�7@S��ת@S��{'<w@S����@SJ��e�)@SB�5��@S6��)B�@SEQݔ3#@SS��`�@R����Lh@R΋m�`@R�G��@R'#I��@Q����A�@P��@�!v@L�nk@F�hЕX�@F���,h�@>/�I�;@CKK�@H[�i��@Ip�H[@I�*����@IW�h(�@KST�1`@Ll�M��@MR,��@Q Ț�@QC
اQ,@Q[��+Wq@Qh���3(@Q��B�o@R ̈́�SZ@R:����@R��ﺫ�@R��8��2@R���@R��3�0z@R�r���@Sj�@SD˘)�@SU�% �@SZ¶1�@Sx��7��@S� ޤl=@SQ���cy@S,Q�g#@SL1��@S�M�X@S����@S	!���O@R�K|q-@Rl��uS@Rh���w@Rt�7�3�@Rn����@Q��,0�(@P��ݻ�%@O9E<�mK@K��ej�@G�n@AЪW�m@6��	�/�@6҇ g�X@<#6�(�@A�'���C@I!o��L�@P�ed��@P�h�Ԍ�@P6W��)@P�g���@P	p~�A@O��c3@O�M���@Oc�Ml��@O�*�%�@P��y�@O���p@O��h��@P=�v��@P;Ŝ�-�@P,|[!u�@PqL��ʥ@P���F8'@P����@P�w�z��@P�]�С�@P�sC�-�@P�	�*�>@P����!�@Q,��<C�@Q3���ڱ@Q ���9�@Q	S�o@Q03Ե1<@QY���@Q���/�@Qڄ]��p@Q����um@Q�]f1^�@Q�&8��T@Q���M�@R-A9�@ROD6@Q��MA�[@Q�P�8�8@Rѫ��@Q{	�f'�@PG�U�1@K�и{]@F���|�T@E^T��3@C�8�}W@CG �&4@C�zV'�@Cɥ?c�@EЈ�M��@F����@F�
o�@C��?�/@A���	�@@�����@=c��i�@=Oz>%�@>�6�w�@@�Hh�`@B���@E���>�@H����t@J�����d@L�3XeTY@M�ո�� @N�'�T^P@NƑw
�@O��M�5�@O޷��I@N�
��4c@O���x+@O�[�Ν�@O�nM��@OH�2Ƥ�@O�#2�L}@P3d%�F<@O�2q3p@PM����@Py�â��@P��in�U@Pߛ�@Q��w��@QQ4v�-@Q�29�#@Q������@QэS?�G@Q��Da��@R#�:��5@R��
�@R2�����@R}d�+�H@R�/H1�@R�u����@R�}����@S����@S��o�@S?C���@S?ĀI3@S6G.Ȝ�@SK�P�{;@SW����@SD��{ߔ@S[ڧp�?@SfV��r�@Sqy�T�@S��h^�}@S�K�@SY~�x�@S����@S(d�j�@R�)ޓ��@R�K�	�@R�II�m@R�>j[��@R��2p*@R���p9u@R�����s@R�J*��@R���(��@R�JR���@Rt��4�@R��C��@Rf��W�@R<5���@@R�s=�@Q�$/��@Q��1WT@P���@@M��	�Ę@IJ�d&�@?@����@7��|D�\@=�Y!mK@E�����@Hav�9�@G��A���@HKV{�|@I��yr1@L���	��@M���@P8����@Q|�G�@QG�G��@QKI]�m�@Q��)"�X@QՌ�'��@R )��;@R%*ɢQ@R/5�/S@R\;*�݇@R����9@R�(Y��{@R|�H@R�k�3'k@R�O��@Rv�`Pf�@R�J��Fw@Rq��#�S@RKU���N@RS~>S�}@Rc@�ܙ�@RN��g@Re�|@RR���@RZ�&g�.@Q�?���@Q�Qw*f�@Q�R�.�0@Q���b>5@P�����@O�xA-�u@L�k�3l�@G�\@��T@C���E@5f�t��@.�Sc���@0����@4�PɆ�@:���j%�@A�y.�@K
�0�-@PQC���@P=���Q@O8y�o�@N�T��o@N;�J��@NW��byu@M�1k�@N&(O��M@M�l-�]@M��#�Jp@L��Ȁ @Mv_$��@N\���@N��3��8@N�;��=�@N��:�]@N�=<���@N��~,�@N�'T�B�@N��Ҧ��@N��I�@@O����j�@O�轴��@O�$��@O�I��B�@P�c�D@PL>|�i�@PQA5QB@Px<���@P����8�@P�@���@P�B�^��@Q(�-g��@Q��=$�^@Q��me@Q�+X��@Q�#���@Q�~��ŭ@Q���@PY�����@Md�.�@FGI v�@BI%5@<�>���@;^ /�w@:��R5�@;�ś��@:�Í�T�@;�L�{�@<��Ü��@;��@�@9�G\Ө@8Nѱ�Q@8��B7k@8L�����@7� ;��p@8�J�a-@<�O�H@>�����@A��:��@G6	��}c@HA�\�+@Jk�c[@K�
!�y�@L���G�@L�;�T�@MEo��T]@M�Վ��@NB�E�c@Nd\O"d@M��1�rM@NG�~�@N�2�ٳ�@O�Wp���@PB~U�@Oztm��(@O����X@PQ�$�@�@P�����}@P��(�B�@P��&8�H@Q2xm�*�@Qd}�L�	@Q��5�SS@Q�<��[�@R�p\��@Rv���@Q޺�/(y@Rx�a&�@Rg�;?��@R+{v9w@Rg`�hU�@R�W���%@R��l�@@R�N��?@Sް�,@R�8�a@SZ8�I�@S_�ɯP@SR�Ʋ�@S��2w@S*��-@So1���@R�e7��@R�0WL@R��p��@R{Q�zl7@R?8,�>�@RA8@�U�@R+�:~�A@R 1�@R�18@Q�/�@QȜ3*�@Q�c�3��@Q�Pàd@Q��J�@R;����@Q�n�|@Q�P/F@Q�6��@R��)��@Q��W�I�@R2��V�@Q۝@���@Ql�
�t@P������@O-��c�M@L~�~k@3���c�@4۷/y]z@<d�K)��@CB{�@E�G���i@F3|�n%@G<6�;@I>j��@K�  �@Mኴ�P@N�@`��@Q�^t�%@Q�E��@Q]<N�>@QUTB�-�@Q��˽׸@Q����]�@Q���/�@Q�%�iqc@Qq��l��@Q��*�u�@Q���}�@Q���d"@Q���%�5@Q���}@Q�n���@Qt	H �[@Qv	$��@Qf�ٶ{�@Q`����@QV��@X@Q`�Y��@QiE�p4@Q���u{@Q�8�E�@Q�k!/�@Q���&J@Q��y��@QG5����@P|�k�iW@N?���@J"�X3@Eo0U�+@93��'@(	�Ĭ	@)i�rL�@/�>�ѣ@5\Y����@9��8�@@7�C��Q@E��C�5@L��{�ѝ@Oڢ0d�@ME�oGh@L(Cm�5@Kj��@K8CQ�!s@K4:�|љ@K�~��Y�@J�hnD�]@J��M��@J��^��@K�-Eo@L:9ye��@L�A�K@K��_�@K����Q_@K�G��U@K�=�)�@K�˫9w`@L-o���@L�:��@M1
lu�@Mv�z-�@M͉d٥�@M�'*\ �@M��~;s@NqbH��@O�Am@OsZJ;��@O�|�W@O�CE@P0�~5}�@POVۮY@P��ĠX!@P�,����@Q4�hMZ�@Q~�Kg:u@QD���(o@P�Ub`�O@N?XI
�U@Im��/p@@�'���e@4� W�![@2㔗��@3b�	�J&@5�N+��@6�6�u[@7��]���@8m��s�h@8��K�@7�ד��@6e�3Be@5���B�@6���X,@5�֒��@5=���@6ه¿Y�@9h��rZ�@;־�o@@¶��@E n��@GL�6�C=@H��u��@JYƞ�@@J�kn�a@K-�'K@Ksl�l�@LQʾ��@L���@MUMsF�]@Mớ�A @M�2�@NB��@O+����@OҌ;O�@O�ꂌ�@P(��H�W@P��g.�@P�ab[	�@Q�M]y3@Q��4@QN7-�m�@Q��/���@Q�<��0@R[A1�@R�A��@R'����@Q��,��@Rnާ@Q����Г@Q��~�:<@Q�ul�3@R;���c@R���&�@R�;e�@R��@���@R��S-|�@R�rfD�@R�`��P@R�f�@R�6M;@Rt{�c3@RGUU _�@R19#�z@Q��t@v�@Q���#u^@QS�_J-@P�lP|��@Q���]�@Q:d4c-@P������@P�'�v�7@P��I$�@P�}�C��@P����e@Q���C(@Q+ցZCF@Q6yV���@QpoƉS�@Q�S���@Q��Ǣ@�@R'����@R>�p=#@RG�L��1@R" ����@Q����#l@Q2ٽ���@Q)6��@Q0a�з9@-��eE*@1]u�W@?9�M���@D
S[��l@E�Ԧ�~ @F>:��/s@GDgC�H�@I/����@K����͍@L�>����@P���ɝ�@QV��(@Q��^)}S@Q>����K@Q^])[�[@Q9ג��G@Q��(�@P�mA��j@Pѩ�T�9@P咅���@P�JN�H@P�b�_@\@P�AM�*I@P���\@P�/o�n�@P��&ʚ�@P�>1;�@P�^��@P�!}��g@P��v���@P�bY��9@P�T�� u@Q2϶V7@Q=DBL�@QR��%��@Q�ed@Ru(J�@R^9�8@Qw���T@P�
��^a@M�o5�*�@Gy�5�E<@D���?�@&:be��@&Q��P�@(�����@/�D)�@4���a��@9`s��@>3k�@C�,s$@@JS#L�`|@Jb����@JO{|~SA@H�{�ߟ@G��!K@F

�⬐@C��P���@DsH�G��@I���i�	@H�+���@I�Y�$<@J�t�8@Jӓ���@J�mܥ�@J�8��@I�i�k��@I�OD�@I�=AI�@J-}�k8�@J��\���@KM��?C�@K�F�[a�@L9���0@L0�=��H@Lvu�J�@Lo��\�@Lȭ��S�@M4��,�@M7r�ɽ@Mp�994L@M�v���@N`\�q�@OT�Oo@O���"�@PS͊l� @P��9Ak@P���%�&@P!F;��@N�H�1@K�b����@E�*h�T@4��u @+	ljڂ�@+�*$�3@0����`�@2%�/R�@3!��$X@4��~@6$#�(�M@6ͽ�f��@5�_�@4��[Ҥ@3>d�U��@2�"�R�@2Ϯ��@36���3A@5!H�C@8�� @=#ݶqF�@@6�ڐ�@F	 �i=@E�"=�=�@G�sc!@H��Ƭ��@I&�G@@I��eeM@J�O�k{�@K�cַS@K����@L�gK'U�@MYPw�`@M�*\3Q@N]l�9�@O:[�?#@P�o�@PA�`�ג@P�LC�z@P�7Pfd@Q*%O�[@Q%���@QR�좊�@QeX��d@Q���n7@Q�|���@R�A���@R7Y���@RI��v�?@R"�@���@R�$�,�@Q޻�uu@Q��H��@Q�7ҏX�@Q��'H6y@R7j=,@R*@�9@Q�� c+@R�T�W@R'۶e��@Q�'U�@Q�#֨	�@Q�D:�@Q��(�$�@QM_��@P�d��&�@P�Y��i@P+�b��@O�#r� @O������@O�����0@O����+@O�jn�$@Oy.�J��@OM����}@O��$���@P|���@P��Fg�@P�Xs��@Q��)�C@Qo����@Q�u�ؾ�@R�����@Ro��e"�@R�_���e@R�ƺ�=3@R��P1�a@RIHF��@R^�T���@R�:\׋@T@�B�?�@2��¦�@ �|\x��@:SM�9@EX�V.�@E�\2���@G�<��@H\����5@J5�-5D�@J��"�~}@Mgw�@Qs�G�V@RS��-@Q^��@Q>��~�@P��J�@P�+���@P���m�'@P_����@PI ���@PF*�L��@PZ�r���@PE�w�[@P$LBȬ�@P�@0_�@PF�C4�@P5t$�h�@P���o@P$�U3�u@P.�i��@Pkӑ�@P�9�$@P�A��;@Q%�[���@Qg�;0@Q���###@R�9kڐe@R�:��x@R���x@RX�H�S�@QuR���@O��ަ�7@J,����@D�i���@%�����@+���D@.�?�@2J ��ci@6"�RH@9�c/Ɯ�@=�=���@B�)C4�@G�V���8@H]ح��@H ����@GE��Pg�@EVd[�@@}o�_�a@6�cA�U=@=2+t( @I�o����@G�[�`@G{���@GT,iS@Ha#���@H�t���@Hn�v�@H�пI�0@H���E�#@I���}@IX����@IjR�}�@I�<�\H@J�_�0o@K ��	��@Kb�����@KKyȷ�@KE��	L@K~e5��S@K|xQXG@K�㕜�x@K���1@L#M�<�@L������@M��n�+@Mؤ���W@N�tҮt�@O�gX��@OzRqͶ+@N|/Ȃ�-@LyZlu�@IY�o�v$@Ba�d�ff@+W��)��@$ҳ���@(ހ5�(�@,T}Ќ @,�l+��K@/��->9�@238Ș��@3HƳ3�@4.��I9�@6۲��@4�ф�@1�m@�ۇ@0����@0���筑@11�t�0@3�d���@7K�7K�@<��&���@A�h��I�@BY��<��@F� lڀ@G=`��3m@Gw{q��@G���Q�@H��m�?@I����@I���]@K������@L�{l�G9@M�fd���@N�^#�&$@OS�Z2��@O���M��@P*����@Pohʃ�@P�����@P�-�;G[@Qe6h-�@Q2�W�=m@Q�F`+o@Q���	o@Q���@Qۉ��!@R� ��@Q�I��W�@Q�D��e@Q�v��cn@Q�1�ŷw@QAQ>��@QO��x@P�]���@Q.{U�@QH�l)��@Qo��[NV@QcL����@Q*�A��@Q�����@Q�5��@P�����@P?����@P,~�VQ{@O��'U@N٨&�J9@NVM�oZ�@N`�=:�@N �� ы@M��{�i#@M��W-D@M�<��@N���	@N$�;x��@NO�w��@OHYMP�@P0�g�"0@Pb99<��@P�_t��@Qy&���l@R�:��g@Rv����@R�>Uܧ@S [ �L@S0xh@S?�)�=�@S<,-�ͣ@Sr['�.@S��@TԖ�f�@U�ٙ�H@3���t��@�qu�f�@4T��ǯ�@G��%�q@G���N�@H��j:@I ̭�@J�/�I��@JҳKqC@K_l$ɫX@MrWibjL@P�8�f�@P�2�H{m@P].��@Op�òG�@PK��@P���@O��d��M@O��Tֱ�@OX�̊�@OB9d^�@OA�9��M@O4�e*T�@O�j�	@O*^���@OV��7@O?d�ễ@OT���@P�6��@P_�GgVX@P��?�@QA�Py�@Q�*�93@Q�cKݸ@R;�(J�@S��3���@S�9(��@Sܽ\0��@Su6���@R�Dcc��@Q>�{�@PR����@E��>5�x@,�c!w��@4�s�0�@5B�
��]@5�q�c�@6����7@8��o\��@>���3@B衏;X@DP�p��@FӭG��@F��P=�@F���R�@C��Y@;\pRqbH@4����@74CK��P@J+�'_�@Ey�K��@Eu�exU�@E���'�@F����,L@G�����@Gb�:�&�@H ��{)h@H�����@Hଞ7�@H�k��4@H�/h�@Iex}=.@I�%vfԉ@JA0GV@J\�޾m(@JD�\��@JB��<8@J0��w��@J�7��@J��{��[@J�8�:�@KףU%�@K�Lp FS@L�>�W�@M9Qw�-�@Mq�q�p9@M���3�(@M�XP��@L]��'�@J�i���@G6g�u�@@�\#��@+�檢�?@!���Ƴ-@%�!�uT@&$r���@(#)���-@+/��T�@/*\�:i�@1����c@2r�y3g @4�C?W7!@3���@1Ƕ�K��@0�7��@114�Ɔ+@0��Ѩ[@1��BP��@5�R&r��@=�T�zKu@A�����p@A߉�T�7@Gy!g#@F���^��@G�l,k�@GM
�E:=@H
L��"�@F+/�k@IQ�k�7k@L�S�&T�@M���Z�@N��u@O��?)f3@P%���R�@PE���c4@P�b�"�@P��T�@P�Y��@P�d��i�@Q�Y�}�@QR�!q�@Q����@Q�%C���@Q�����|@Q��V�B|@Q�Us6��@Q�ay�@QB���@Q$tcj�@P��M��@Pt��ٰ�@PT��R�@P<	d�K@PT�Sd@P\V�U@PTS��i�@P!���}@P�Rʩ@O����qI@O,,���8@N��0R�@N�#r�@Ms��-�$@L�;>��@L_� �\�@L'8&׽�@LcL{�@L=3�@LW��8x�@L��Xy @ME����@M�4j��@N@��@O܇�}@O�d � @PY"r�%�@P��ƫ�C@Q���K@R/�,Q/@R�rc��@SAC�(��@SŁ�ph@S�����#@S�G�95@T	u�jO@T`�F(Ly@T�|��7?@U�R����@Vb� >�5@U���.@>vR��$=@"6зD�@1�=Z��O@H�^�� i@IC��\@Jc�v��@JlV}�@Jŏ��1�@K�MK@JB�[\��@JO���nl@J����G@L��_���@Pl���W�@P��N�n�@N����@N���T��@N^�9�S�@N�0��@M�ԇ�1`@M��4V?�@M�/tf�@M�Kp�	@M�iJ�Y@M�Μ��A@N"�t�@N����@OYK�U��@P��S�@P��p���@Q/Z�@Q�'��@R1T��=J@R�+�!s@S/ݫ�W#@Tx/���@T���s"!@T����5@TV�tn��@S�	�	@Rߓ��!@Q��7��@/g%N��%@3'dIF]�@7~@����@8�H�\�@7y�0�N�@8���B�@9K����=@<����@@0	�F�@@�]۰qH@E� a�@D'�f�J�@D�>c̈́@B���(�@<���-q�@5V�o�� @9o���=�@J�KdW@F{�`�+@E��ο�@E�8�)@D��7U��@G��ӣ8@G��vQ�5@H �W4�@Ib�zY�@Io��4�@I!���%@I�ꌪ��@JAGu\@J&�θ%W@Jy)�a@J����h�@J�'K�@J@�F�j�@JtJy�sH@J��̰ѷ@K:Xv�@K��A(@K����@L\�,��0@Ltț���@L����l@L���@L�eFv|�@L�6p�-@Kj��*"�@Iͮ��@F���&!@@~ٽ�/@2��#F`�@&ЈF�=$@#��zN�@$މ�07%@%�ԢS��@(�Q�f@,�ey*�@0���+@2΀�B��@2��[�k@3bV����@2E�;�!K@2+��M5�@1�o��w@0�=�h]G@5ڜ� �8@<�,}BM@@k�@B�h�U�H@Eb����D@F����@G\j��@HM/ોE@J&��w�@J
hJ[�@I2�ᯐ�@K��e�W@Mo�U��9@OZ���/X@P�	o@P}׳�2@P�I\��@P�G�%��@P�V��7@P�)F-K@@P�1�oٯ@P�n�z�=@Q#�����@QS��U@QDx�'�-@QKc�7�@Q*b���@P�=��I@PΎ}�@P�,CW�@P��(!�@P|�7��m@PV���@OSULnD�@N�x�u�@No����@N(S��K�@N;��@N���-@M�H��rS@M��r��@MX��CA;@L�eʹk@L$���@K�ۯ���@KW�F��@Kt#���@K}��c��@KG��n3@KA����x@K����O1@Le�q���@L��e�}@MF���Ӊ@M�y+�Jt@N�R��y5@O�nh��G@P���ճ@Qi5P�@Q�-<'�0@RC�Ѱ�@R�j���@S�U�/�m@T)�Mÿ�@To�+�@T�ء�L@Unā@Uu�2���@V �k�@V���fa�@V��O�@V���I�@V6���u@A�6�J�5@-ːb�@7�
��Z�@G��p��@I�O�:�@K]�J��@KuL �@K{���M@KĚ���@J})�:h@I���l@J��߉�@L	SrZ�@N��/�'�@Q��p��@P����@M��N��@M/�8�@Lay-�5�@L�Xb�f�@L�V4){@L�"답@L{8�ۄ�@L��;�@MZ�j�U�@N"��Y#@N��g)�@P�M߽@P{���S@Q��m�@Q��}��@RnMG�@S���I�@S��í@T)(�=@Uj��٘�@U��A�@U����@UDY���@T��z��I@T]��@DS���@0�L!���@3ǂ%qN#@;9~A��@<���
Se@=E�v�T@<wh�IL�@<�ҙ��@:q|�K�@= 1�C�@=Wq�@Co�;.�<@EK<�&�@@�S���@Ak�ZP0;@?��ck/�@;����0@?�n��@Is>}|�@I�+*��@FHFek�5@F��W�@GP�Hqdq@G�f��^�@H��H�!@IX,�P@I���г�@J� �m@Jt�����@K.+�� 3@K�C+r��@L9&n�D�@L0d4�y@L_�M�R'@L��eBp�@L������@L��t�@L�U\��@M+vƒ0@L�e��L@Lɢ���@L�5=�k@@LŐ�5�@L�I��G�@L�36i�)@L;�i��@Ll��S�@KwW����@IozOY�@F�RUb�@A����4O@96y����@2?bS�̧@/6�/+n�@-E!�WJ@,���T(@,�B��+�@0x�(;&@5y#����@7$c��ߝ@5U[re�@6�����@62�ɟ��@6� �7�@4I���J@4��B��@7��.3>�@Db����|@DnO�Z�@D�d�1�@FU��^�@Hm@���@J8�@�˥@Lդu���@M�˪�[@N�d*-@Op��m@P/5I�@O�D�{�@P�q�Kݥ@P�sb0�@Q1տ1�@P^�g�o@P�����@QJ�lR@Q+]�g��@Q�]��@P�B���`@P�$j4@P�ؠ,�@P��k��@P}e��3@P(m�W�@P%ӓF��@O易��@O��PS@Op��l�@N�t��K@M�����@L���C@M(���m@LN/���@L>���@L�W�~�@K�.s�[`@K(���hK@Jڶ�qz@J��$�+@Jx�)��8@JxA����@JT��(ܻ@JQ����@J�16���@K���+�@KQ�#t�@Kr�Gy�c@K���@L�I�@B$@M-JT/�k@M�M��o�@O�����@P�f!s@P�է��@QBW��#+@Q�'Q��@R\�B���@S�.��@S��K�"@Tؠ�ii@T�=�к�@U ��aW@U��@V&���x@V����%@W��k�@V�ǐ�&A@VO1ضO@V*���@T.�QYW@:�h"��@9���D��@D�D�P��@Ko�}s�@M��|��@Ml�τ�@K�O��`�@L��LX�@M��+֣@Lξ�$�@J��d�X�@J����@J��UH�5@K��VS�/@Q����@Qv��q7@K�	h���@K|�΃�@K;A�qI@J��
@�U@JL�R&l@Jq����@J�Z�ٞ�@K�����@L�r�r�@N�c�(]4@OwD;�X�@P}'Ld1@QLv�iC@R5�m��@R�>>�4@S��>u�0@T4��n�@T��][�@U��9!@Vm��|5�@V��v�j�@V�*7|m{@V�@���@VaH�20k@U�}��@E[�nK3@9�s��@<1AO�D�@@I��Qe@Ar��R�e@@���Z��@@��k�q@?2�pp��@;���$��@:Se����@;v�[Oq@@�C@B�t�2��@C�ʰ[@B����@AL��vQ@;���@;�LL=@C�`�S{@O�'�;@Hb�Y|��@H�^����@H�����@I.���Nu@Il/Wa�@JO7*�L@J�h�w� @K���rS@LN�G�e<@MQJ���@N{�s)2�@O��)i@Oc�Wb�{@O�P��d@P�5~�$@O��ޜ @P7��t�@PsO��@O^ײ���@O��|�@O�R`@O ��J�@N�_*�,�@N.�8���@M��� @M(��9�@L�+{��@LC�vѡ}@J�f�
�D@G�b�RI@D>Enu\O@?�`Q@[@8�Q�p@6��,;H@5M_R�6�@1�&D;@2M����@:=�h��,@8�L��@;�Z9ߓ@<"9q��@:���
[@8Q��suu@9�>q�ջ@5W�Y�I@6^�&] @??t9�@Fo�S?@G2����@Hp�Ef�;@J8q�Fs@Lka�\@N�e!�e�@P#ȝ�$,@P��h'@P�}�<1�@P�?���@O����@Q����$�@Q���
�@Q�1���@Q��~;7d@QbY��@@O�6��?@Qi��E�@Qݔ.�@P�7��|�@Pn��w�@PF�ʶm�@P���__@O����@Obt/��@N�Nu��`@N���Ym@N=���@M��r�Xc@M�O�"��@M�GD�@LLB���@L~<��{@K]�{*�@Kg�A�@K��|��@J�l���@J0�M$@I��ŏq(@IklQ��@IB=�y0@Ik�s�8@I(Sur��@IL��~�@I��꣄,@I퐀�G[@J2���@J�B)���@J�ͨ�{�@K���0��@L��{�<@M�=��@O��(��@P ��1;�@P�}'�K@Q\����0@Q�p� �@Rtڶf�u@R��d��@Srx�:7T@S߱w>�@TP��4�@T�3[��@UD�%[˞@U�K5�/h@V�bjL�@W&H�u�@V�&j�HM@U��V�@S*��y�@H��	@;��R(@AmG Ă@NT{���@P!ڸa�@Ọ�	�@PJ����@O���#O @O���Z�@O���U�@O/�:��d@M��$:@Lr�r�@K��~��@I���=8@H���4)@L�:�L;�@RbJ����@Kl%@0q@J*�d�i@If����@IO%!]�@I1h���o@I���L#@K;��	=@L�����w@N�*���@P����?@P�Tzc5@Q���'�@Rɏ<��#@S��W�3@T0�����@T���-�@U�[�@U�0ɖ�P@V3��z�@Wt���Du@W���}�,@W��E�@WY?��@V�2@<�@UU�Lbi8@N��rh@@ׂug@C���j�@Eh.�a�@E�]�<�I@Crx����@CR<Zg�r@Aw5 ��D@?�೛��@?Ȏ���@@?H�DtNs@@O(-��@DA����@C����@D�/@��_@B��z��@Ae���S�@@�h��@B 5�/R	@L����p@J7#q�@I[I6V�@I��lϚ�@J������@J���۝@K�5���0@L�;�v=(@M��*z�-@N��9�v�@Of���@P0�����@P�7�}�=@P��n$:�@Q1���]@Q^OӬYR@Qm��<�@Q�@�@Qy�L���@Q?<�7�A@Q?��'m@ṖO��@PzC4CM�@P1΅��@O��{�]�@O� �p�k@N���@N#��;]@L��"�@K���VV�@J{IR;�@G�{R��@C�ђy^I@@��OC)�@>-Y�V�@;�Km�)+@9xI� ��@6�.�v�@6��(�@7`��|@B��0	�<@B*͌8�@>�>]��P@<�lL��@AS_��;@:�yv�`@A���@GUd����@Il��m)`@J��\�/@L7�T�µ@NQ݌�@PQ%���u@QY1mFB@RB�@RC6����@R#�J_�@R�'��\@P�N���@Q�t�s��@R)�����@R���0�@Q�;3�s@Q��W@Q��6���@QU�3�@P̨���@PzZa��!@O=�!���@O�k�{��@O>w@N=@N����H@Nc���}@M���0��@M5����?@L�G��e@L�kDTJ�@Ln_��3@L,��(�@K��9p�@J���.:�@Je0��@J)(i�@I��'�&_@It5�^��@H�� ��M@H��@H���ɸ@HV���<@HX��ѰW@H"9��n�@HA����@HR�YfH�@Hl���@I�%$�$@IƩ�v��@Jj�tb�@K\�%�f@LqG<S@M��;x�@OG���ֽ@P6�փj@P�ٖ4�a@Q�����@R+�c
I@R�q@G�E@SX"Y=@S�/�0�@T%T`���@Tt�bu�@T�1M@U������@VZF{<�@W��eG�@W3�:7�,@V��L��@T�`���q@C�g�V~@GC�J�a�@Mϳ��: @QFƋ�]@P����t@P�$E��Y@Q ��Q��@P��Ua�@Q�3@A@Q*{�Sx@P�*��H@P9��G�#@N�%���@MTm�1տ@K���)x@Iگ0��5@F?JLk@HG#�؍@Q���%�t@J�Yh�,7@H�e@���@G���4@G�H�_�-@H1E����@I׷Cu�%@KvPʼ@M;<�2�@O�ni�@P�0�^�@Q��Ss�4@S�M���@T	�h��D@T�❍�i@Uy�eԞC@U�N&J:1@V`F� @V�BC�'@W*nCyz%@W�r��@W�ALU��@W�����@WH���@U�ۚ�m%@Tf��d@�@R��lи�@L�:�w@J�+Q�m@IS@�@�@J�>�)x�@G��5�I�@H�@�\@E��9>�_@B�E�@?f��5@?H���0@=�/P�=@G�V�۪@F�%)�/@HBu�3�@Ca,_\.a@C���~ş@E�-a��@@OK�m��@HGoa�vP@JW��V+@K
DU_I@K�'�wk(@L�K7y�@M[�8��@@M�#�Y�]@NQג�,@O���}�@O�O��(�@P<�*'@�@P�=�Uw�@Qy|l4�@Q�UQ��@R+K���#@R{�ȅ@R���W	�@R\$N��&@Q�����@Q�t�Қ�@Q��B�M�@Q:�j{m@Q.��,�w@P�"^���@P�>��5]@PD�8�vt@O����@O?�T�@M�SC���@ML�1hH0@K�Q�`9K@I!�8���@G��S(@D����l@C��7�@A�0�;�@@��ZT�@?�t��@>�R�@@@t6@�@A3W�P�@Bp���@B�C-9�M@DE��9^2@F~�2�TS@C�|e��@H5Y�K@MHfszr�@M²�=�/@M>|難@N��Y:��@O�	�۾�@Q�ץ�@SW�\W�@SU��R@S2Z�a�o@S?a�Ɋw@R��:'k�@Rf�h	@Rbw�$��@R�T�^�@Ri�l�@Q�%,�i@Qp.Gm�?@Q�jo#y@P��ƫ$@PV[�à@P�q���@O��V75@On�x��x@N�u�=@N?�7�HM@M�[i�@Mi�	�@L�6S0�@L{�PKB�@L\��ż@LHI��RU@L�'�ٸ@Kt7��X@J��?һ=@I���Ę@H�$���@Hpk0R�=@Ho$W�@G�ٯ�@G�#[nh@GV���@G
�����@F�?�-3C@Ft��*��@FI�!�\@F5~L�4�@F�%|A$�@Gd�M�@G�_����@H����@I��s�W@K!�Ŗ/S@L�7�bCS@M�/`@O.D'R@Ph���P�@Q'��q�@Q���r�@R��|iG@SZb��?@S۹�6{@TH�B�@T�l�@U*��@��@U������@V� Mp�Y@V�z�I�@V�YF��@V��γթ@Ud�bu@L��w�A�@S�l����@S ��8@Q�bj���@Q�} ̢X@Qh�9�~@Q��2�!@R�'�@Q�~D�*@Q��]�ϸ@Q��$���@O���Mu@Pǲ�@N�Q.��@LW+����@I/�����@E{� -@G�pu�@Q��ӆQ�@O�Pd�p@G�`��@Fi7��u1@F/:�n-@F�#�y�@H~�D��@J����a@M7��5`@O����@QC���@R��7R�I@S��^���@T�W���@Uu��.S@V<��,�@V��^@W���p@Ws����@W�F)?R@W'����,@Wq22��@V�48��@V(�h�@UY��E�@T\:��?@SY���[@R�%|[��@M�7��@M����O�@OI@��J�@NoA���p@L��
��=@J��
�D�@F�+M��@E����c@A��,�VF@B��L�@N1>v�z�@N�B{1pE@I�_ŭ��@CjtEA<M@B��"
��@A�טBX@E�)�O@I6�k��e@K��O[�u@L��/إ�@M�Ka�i�@Ns�N��@N�Z�G�%@OB=R��@P,�-��@P���9@P�4�`�@Q���A@Q��R,S-@RA>���@Rhx���@R����9@R����@RUH�\w�@R�|(u@Q�����@Q��^�@Q�;���@Q��Q�8@Q烓�[3@R)�1O@Q���h�f@Q�<�И(@QvWb��t@P�\����@P7aw�_@O��S��@M���F��@J�S�l�u@H��~�@F��uZK@C�ҏ�P�@B� �":�@@�i׮@AT+�i�@C]�oHQ@C`����k@C�n9�m�@EM��E��@G��+@�E@Io�Q��9@JM�];_�@I����@L?��UD�@P�t@�/@P��0�o�@QG�n�k�@Q�M:Q�=@R�Mbp�@S�<����@T+�@S�w�b{@S"[���Q@S�ë���@R��= @R�=��K_@R9�!�-�@Q��4�ҹ@Q���t;@QR��ÅO@P�zK��@P�j�:�@PDg�t�@P���
�@O���wM�@O����#@Ok�읣#@NT��I�@M��s@M?|Z'�@Lb,a͏@L����(@K�sHȫ@K�F��`@K��U�9�@J䀫�t@JL��^��@I���q @H�[���@G��Ab��@F�-�|��@E�p��:h@C�k; @E�Rł�@D�-Ϻ%@DxޓKY@DW���@D��
��@D8n�c�@D�� ]@D_���x@Dݑ�\�@E�}Gm@F��05q@G�.yFc�@H̟�/;@J94&�v�@K�o��X@M����@O�<��@P�%=�@�@Q{RfL�@Ri�8�'q@S�i�ԫ@S�ұN�G@S�����@Tg<A�@U�}m�#@U��� k�@V%-�Ӿ @V5JH��y@U�X폱�@VkpŒ��@N�4���@S�;uĿ@S%����e@R�"\iT�@Ru�(t8�@S�A�X@R�5�N)�@S���)@SBX|r|g@R����@Rī!&�%@RY�ET��@Q4��L��@Q���� @P����K@N�{H�)�@I�����@E��F�8@B6j�i{�@Hi8��0�@ND yq�@J�gU#�a@E5��!�@ET���$�@FF�#���@G�[�評@JbĞT@L��"�X@O�k\�@QO�'�s@R5he���@SZ����@TWή�@U|)�J�@U���UP@VLPQC¨@V��NNL5@W2Ԧ�@W.-D���@U���M5@U�t��@U~�,�@U h�I @T�ol��|@T$��B�@T)���7@Ut`�,�@Q���j.@Q��Ԋ, @Q�PD�+�@Q���&��@QhKh�A@PhN�@O-�z�@IW7����@C8J���@@�>(9@I�)�]�@Sk����@F� �&@Do���D�@Dr��w@F#��7�@H|s����@J�)B�@LGM��c�@Mb��J»@N����X|@Oߣ���s@PG�Y�U@P�U0V�@P�M�"G�@Q>?�a��@Q�?�3�@Q�xy�TU@Rߜ�ʢ@R�\�}d{@R����@@R��� ĳ@Ro�
��@R\ � �i@REa2(cq@RN҉�?p@R��n�~Y@R��t}9�@S	�Y4@S}~m��w@S��*ЭW@S�.���{@S�_2�@S�~Mc�@S�ڵ�l@RT�L� A@R[|�q�,@P�?1�`@N�UC���@I-Fg���@Gh�ɭ@E`+�Ss�@F(��J�1@EAr���@Cb���@D
J7Ɩ7@F�e�&Q@G$q��?@K��
X@L�yڑ;M@Ne4�{��@O]�t���@Q���#@U ���0�@Tx,��@S�҆��@S��}Fw@S�+�@Ta�t�2=@T��cH@S�`Z�@S{n1��@S��&�@S}M(1@R̵x���@RHǱZ<�@QƠ�w2�@Qb�s��K@Q���ؘ@Pї����@P��v9O@P�<�ې@O\�WS@N��᪠�@N���`@M���Z11@M)���@K���WG�@K�<�B�@J��d#P@I�Ci�w�@H�x:�i@G�**�(@G<?�3@G)r�#�@F�jBoy@F`KO/<,@E�\��@D�����I@C�`d�HO@C3�7�@B��� g@B��ͷ�$@B�Z%v@B�����	@B=l�}�@B|�_I9@B`�I�o@B1��� @BXDmT�@B��Q{�z@C$%�R@C�ba� s@D��=í@E��� @Gq����@H�@2V�c@J��)�6@L&�yp:�@N$��C@P���@P���@Q�����@Rw�v[�@S����@Sf=G��@Tm�}}y@T�5C��H@T��И�U@UT�V�A@U#D'S��@U�${�h�@Sf����@Ploke�@S]]�es�@R�A�̬K@S7�	Gy@S8WC�@S�����@S�^�]@S]&x��@R���.�@R��/�@R�/-m�#@Sf�����@RN�Q�@Q�:3�k@R{p���_@Q������@M�:��@H��[2P�@C���gI@B�+���}@A��%�@N�S��@E����H@E	��I=@F�[���@Gw����@I �u+�%@K7��"@@M%�3�С@OJ����@P�>�46@Q�Dzy�@R���!â@S���]h3@TmX3F�@T�{��?�@UF�o�}@Uu�Ӡ��@U��X��@S�i(�1�@S���>��@S��F��@Si�c]#�@S���Ž@T����v@U�Ԍg�@V�#�	�%@S��:U@SL���@S�:�.�@S�s"ID@S��O�)@S��<	M�@S ���]@M�] n�@G��p@C�
�o�@B~��N$@Rq2�Y�@GY�<�@@Fa0� W@E�5��_�@G
���@H�H<�@J��l M�@L	#t���@L�(�S@N�M�G�@P>A�!��@P�f&��@QPB�1@Q����^@Qݗ[�E@R9���@RJ�FiY@Qۆi	��@R��Q��@R��A� @R���t��@S5��3�@S;a�<-[@SM`O�x'@Sk�5��@S�RGk�@T�N�P�@T�*���@UD�%x\�@Ur7� )@U��.�-�@U��ŉ�@UO����W@T]�^ L@R������@P/����U@L�=:�44@K�Mr��c@K7�p��=@K����D@JN��L�@H�V[��c@HTy�lvP@I-�f39@J��t�@L]��5={@M�|g@O���oQX@Q���5a@R�`���@S����W@V q'+@U�;W>�7@T������@S�5�dܯ@S�$P�(@T0����@T56u@Tq�5�e�@S�t	X�@S���v�@R�T��(@RQ 8S_�@Q�����@QvF&JG@P����@P�_�|X@P=2�b@O��yE�@Na���D�@M%87}��@L\��]x@KV���|@JR�S�]�@I�B��ct@H�A����@G�h�0l@F���'�K@E��Ț��@E~<N�@D#�W��@C=��@P�@B�1$�s�@B����@B{��@B�I��Q�@Bx�%j�@Ao�
�@A2��H�@@�|4ܮ@A��MY�@@ـ�c}@@�0�=�E@A�ZM@@ˣ9�O@@��TՈ�@@���H��@@�����J@A8ոƑ}@A��=�֛@BT�<���@C[��M�@C��{�@Ea��s@F^�6 (@G�3c��@Ioİ4@KLr��@L�*�͌�@N�t�LT�@P�d��@P�v5
�@Q6'�jF@Q��E/ӹ@R�V���@S6g��O�@S�Τ3�{@S�pb_ö@T'ԓ��@T�Qԣƥ@S�̥}�@O�Oݒ @T���-$�@SC��49e@Sk94��@S��f>�&@S��Z1�%@S�{����@S����`Q@S���@R���jD�@S9?��{@S�H	20E@S����_@S�K�q��@T��|<�@U0l�N�@S��u�/@Q�{�ϼ@M�+C��@F`�}�s�@B�ا�E�@A����@Jn:y�\`@E=E~�p�@Er�?V�@F0��v,@F宸ۅ�@G�����@I>�3� @J��Bq5}@L����@N	�2�w@O�=�@PlbO��@P�xΞ��@Q{_�i�G@R5Ek��@R��o�;@S�qK��@SR�F�@Q��w4�@Q�hq͞@Q�!n�@R��YA�@TΠ�@V9�C�m@W��,qSh@WgV3G+�@UEg,G+@T�B��Wq@T�,��@T�����	@T���
n@UV\u5@To�7-/�@QUoϵ�@N�ڔ@Cp�%P��@G�'W�@N�4g��#@K��\@F���/A�@E�ku� @E��{���@F��v�zo@H4L<�B@J[y��OP@K�R�I@L�S�޻�@Om%�&  @PK�O�Z�@P�h6k@QS�1���@Q�|��?)@Q���<�1@Q����%$@R8����T@R�d_��@R�i�M�@S#�;8E�@S�=��Ӡ@S�gƢPa@TB��~T�@T��Bnc0@T���f�[@Ug��H�@U�'�Z�@VJhJ%6�@V��?+�I@V���f��@V�^@�@UvtȌ"�@U��[�-�@T4E~��@R٣��@RBFAؕ@Rxz�
p�@R�C��@RFԸ��@O@��P�@OB���@O�m-��@N�J�[��@OJ���!#@P�t��kf@R�v�Ӄ�@SUw762@T��o]7@T�n��@U⸐`�D@U����p{@Ue��e8@T�����@S��r�O@Sw�!��@S>om@SG��(��@T� ��@S��e���@Rx(� �=@R)�N�p@Qz�w��M@P��J�s�@PF,��m�@O�4�f�k@N�w�L��@N�����@L���t�@K_�Z*�@Jx�DC��@I��"�E@H�g���@H+��K�@G_n�α�@F���-u�@E�48��@D�0 �@C����O9@C�Y(�U�@C�o���@BzU��4�@A�{"���@A��|��@A��C�8�@B+�՝ջ@B�o��@B) ���K@A��8d�@A�$gh�@Az��(�!@A��x�@@�Э)@A?�a��@ATk���@A�zf���@A*���@A���D}@A�^M#@B���.�@B�A�Q\@CN:���%@D�Lx9@D��8a��@E̗��@FQZؤ��@G�6�pyl@Ipp�vL�@J�!�r@K����Pm@M2�R��@NnI�⿋@OLl`���@P`�FR@Q2��|�@R%5�	�)@R�i���@Sp3��v(@S���1�@T�2w��@P�P��Ԧ@Q3�|�@TUS��?@T�8J9@S�n-/^=@T�%�@S����r�@S��Щ�@S��[�@SL�e@R�xmzs@R�iu@R�#�NX@S��0 -@TӋh��@U��v��@U�b���@T�5}@TZ����@PF�lPT�@GQ^mŏ@G���X�@D7\0Y�@BZ7�>��@E�P��@F�;=ړ@F��L��@G]�mU�g@Hd��z�@H��_��@I�ΐO��@J����@K��0��3@L��&F��@M��vd��@M� g� u@N�LU��@P�I���@P���z:K@P��c��O@Q8�$�N@Qt�����@QĶV`V)@RyVuD @S�0/��@UP��>(@W��� ��@W�W&r_X@WX`�O�@U�DY�/�@Uz"���@U󊼛�@UV`�w1�@U��w�#�@U6Ʀ(�@TX��X{:@S�F򈑋@R�'d-@L���FO(@H�ڪ��@NC�vx�@RS?18��@H�����@E�+3�g�@D�3�R��@D�`RdP�@Eeg��@G'���
�@Im�{�Ja@K��5d@M�#SD@NH����@O��^�<�@Ped��}*@P�@� }3@Q	SSG�@QU~<-?@Q��+�@R�Ɇ5@R�x\U� @S�Wa@StcΡ1�@S�fahw@TM�9l�y@T��]��@U��zR�@U���g4�@V	Cs��@V_����@V��cp'@V���+@V/���4�@Vȼ{�j�@V�\���@T�ܱk�@T����y@THG���@V��2t>�@V����@UN۟t\�@R���S@RBe��د@Q�=���@PK�0u0u@Pq�U�@Qu��+�@RI����@S~�(X��@T�Y�G@T�H2�9@Tdi�/>�@T_,x�@TF�.y�?@TX_Й�@Sޫ3R�@S��3�l\@SJ2B��~@S�R@S�3�/�@R$����_@Qmn:>N�@Q��m@P4w�·@O91���#@N^�ԫq�@M�ǝ�+�@L}�ޙ�;@K�)s�o�@JL���S@I�-���{@H�u���@G��:��@G:�au�@F˥I��@F1l$���@E�&��ϸ@E.��c�F@D2c��p@C�xbfI@C��Ӯx@B��K,`@B���@B7~�2g�@B=\�[G@C(����@CSD���@B��-Z>U@BƳM�c@C���@B�Xq/JK@Bݔ��ؒ@B��N
�@B�����d@Bj���h�@B%\ncWJ@B
E�cc@BHr�<�i@By5k�@B���!��@C@��I�@CgTpλ�@C�gG,�@Dv���@Ef��$@EڞU��@Fm�
DQ@H�`�o�@Iw��?J�@I����@K3�X�Ep@Lg��~��@M�C4��@O�?��@OY��"�@OH�bWe�@P�6���@R���s(@SpF�ci@Tw�%�0�@U�T���@VB�J�@VZ���u@T�m�>�@T��N
�W@T ��v�@Tu2-s@T���
�@TeM�g��@Ss=X��@S�p�Uy@SM����i@R��+�`O@R�L��@PG}Ğ7B@R ����7@SH�l+8W@R���}'[@S���f@T(j�*@Nv�Zk�@C�4���@D�~g�[@H�����Y@Gؼ�x<@G<�9c5 @GA�)���@Gx��x�@Hu���@H�j��@I� x�@J
�ړ�/@J���$��@KJɱy��@K��}�?�@LB�#J�t@L��ޣ@M�d!��a@N�X�_G@P-	+�%|@P�4����@Q8_�Ce�@S,�(X@Sg>�ŷ�@S�� �& @U(Ս��@Uܺ�~�@WD9��@WE���uL@V�ڗ[k[@V*�&Z�@U0ӧ^z�@U^�Dl<�@U\���@U`޸��@U,��
Y@T�+�#�(@T8�)�@S����@LDs1�i @L��"ϑ@KV�hAX�@RJ���i@Sr���@H7'�`@E�0k+�w@D��M@D���a@F6�]0�@G��}�s@I�}��@K����@M^,���_@N��$��@P����@P���4�@P�pW��@QMzr?\@Q�	~@
�@R�a#�;@Rr�bc@R��;Y�'@S1�`=}@S�GS:�W@S����^�@TY�LD��@T�-]?@UP|��'@U��OA�@VY�p��@V�ۄ�g@V>��`�@@V�M�h@W�l��@U�=c�O�@T��	Z�@To$��}@Vf���)�@V�E��A�@VǦ_��@V��j3�@U$�˰y�@S6�죵h@Qa򞾑@P��5�7�@Q���25@Rr�h�@Rx&�2?�@R�9�xg@Sm/K��@S�:�p@Sކdn�@S�e�>�@S�:��@S}K�f��@S5�8��@R�ر���@R�$�?��@RY���1�@QȱJE�Q@Q*��@P��|_�@P>����@N��\�� @M�X�I �@L�P�|�=@K_�)@J���BV�@I��X���@I��_��@H�	Ed�@GI��G�@F���[�u@FYX��@Eq0̟��@D�1
�]@D=�p@D��Όf@CF�tju�@Bx�TTu@Aڅ�N��@AF�
��@AJ�%�O@AlH)e@Ak)��C@BAPO��@B~>�6�@BQ�-�|@B=5m@B$|U�~�@BSؼ�m@A�<��8�@B��}r�@Bvo��@A��#�@B5�Er�W@B��\���@B�+|Oh@CT
�~;@C���~�@Dz�Kl@D���b|@ED+�tt�@F���ǩ@G;�|��g@H����@It��a�@J���I��@K[v���s@L�BT)��@M���2��@O	CYC�@P�	.w!�@QbR�v@Q�M��C�@Q��M��@N!�	�@R~���@U�Vͱ�@V<�� F5@V�W*���@W:��c�K@WW_(Z�@U��i�(w@T��m"�<@Tzv��@T����@U�k� @U1
�a0@T�!*�@S�}����@S_�^��@RSU̴��@Q@V�A�!@O�Ik�zD@QKUH-��@Q�uz`�@PU+UȽ�@K���q�@J������@H����@Itk[zLT@IΜ����@I�6��e@I=���[#@I�d;k�@H��5�>@@H����7e@IН6܈=@J彭@JlJL�#@J�;��S@Kz��@K�Az�6s@L�����@MW$��@N6�1�@OG��3�;@P?�q�R@Q���x@Q�ɣ^��@R���y�n@S�"E�/�@T2�2�M@T��ާ��@U�5�{��@V���JO@Vҁ�i�=@V� �$C�@V6�=��#@U5�j�S@U��#�@T�o�O�5@T��=�>�@Tu�v��@TL��BZ@S���l(@R�3E� �@P)��b��@K�%1�]/@D�x#��@H6�+�>5@Q�~�(i�@SӜ,)@R��V$8@J���fʄ@G�$T��@F�%�U@Fׁ�4#�@G���bU@I	I��5K@J�]��@L��|��@NV�^b�@P�=Y+@P��1s�@QW�Gh8`@Q�T�%6[@R7��+T@Re�%M�@R�um�@R�ώy�'@SN�|�*@S�|�^�@S��ۻ��@T���� @Tw�Gw�@U[���@U�*�4@@VL��tv�@V�:`��@VN��j9�@V�$~��@Vmr���@U�ۭw	�@T��7���@U"{��JP@Uj�L�@V?h1T�w@V\N-@V'�m�R�@T��3�x@Sx�j��@R� ��h@Q5�K�9\@QoQ�s��@Q��9�@R��'0Q@R�t��{@R���x@R��FoS@R�I��Ŕ@R���+@R�R��@R�5���L@R�ybUs�@R�ߚ��@Rk��c@R2h��|@Q��.27�@Q;�{ �@Q&�!b@P�aGB�@P3�]��@O�����@N����E@M�48��w@L�=�T-@LB�S�90@L�ϴ4�@K�8�G@J&�0��W@I����@IQr��!@H��˭��@H~{�@G-����@G��`��@F�!Tc(@FZ��Ŭ@Eҹѱ�@EW�7U@E6�T�G�@E�J,k�@FY�~1�@F�?lq�@G���&#@Gu?�}@F�'�7w�@F�5+p��@G�sTР@Gep?���@Gcc7�v�@G�X��D�@H�P��3@H}[V���@H��Y@H�G�[��@I�X3��@J,��4�@KytO]HQ@L��e*�@L��EļH@N,R@�"}@O��E���@PU����.@P��C��@Q���İ\@R*����E@R�O�uD�@S���]@Tkq۪�@U�>�	@U�a�Q@U���d}@V?-U�@U�>yd;�@U�yܺ��@U�9�҆3@U�([�uS@V�	�/@V2�11�@V.�7J@V��o�@V��ݯy@T��1��@T���V@T��u�@T������@S�7����@S�!�-�@R�o�<f�@R�=�(��@Q���P�m@Pʇ��}�@Q7B@Q�L��&e@J"���@D�? k@FD
�N��@G�c�_@J���0K�@Lm��W)�@MO�6��@N�&ֶTx@O�N�B]@P :��@PM��,s@P���y�y@P��~� @P�8!��@QS�Q�H@Q��ն��@Qڪ���@R*�R��@R[p����@R��(2|@R�e��.@R�Q����@R��0�@R� z�4@S�훷�\@R��О*i@S�W�`Z$@T��^�>�@V^�@V�v�l}@Vo5���H@U�/Ƥ�@T�xb�A@S�Q�tD�@S����C@T
>�k�w@Se��pw@R���@Rc`g#x�@Q���t� @Qm鎑Yi@O�<��@NS���y@EjQ�~c@M����@Q]��T�@Oә� ��@O�{�l��@Qq��A�@H[5���@H��_(P�@G�#s]@G�Wah@H�:�;@KW��%P@L�
�C@N\jl���@P,�+@P����	@Q�#[f&@Rð���@R/ �Q(!@R?��ks�@R�Ȝ*�@S9*q$xe@SH�wq��@S�#,e`@@S��Nw�@T% o��@T�Du��@T��	@U�+��M�@V�G�f�@V/`�G@V��8_Z�@Ud��S$�@V����Ӱ@Tԯ!��;@T7_tO(�@Tav�2�@T�Ъ��@U"_]�@UP���@U�B���@T.�ߣ@SǮn~J8@S�C����@S[o��@R��ä��@R�W:�+l@R��q@R���I�@R�g6�ۋ@R��e���@R�do���@R�le�@R����@S�f�o�@Se}�v�@S,��@R�1��@R�u�!@Rx/!a��@R<�\�@R����@Q���'@QdWL$6�@Q4�\41@P�� �O�@P�L��@P� ��@P`��@PJ{6NU�@P��i��@O�:�k�C@O�s~`�@O,k��@N^�ٻ��@Mؖ���M@Mձ�@s@M���)L5@M;��㺘@M:O"F;@L��*���@L�C�D�@L�n��o@LÊNw@M�ߵz�A@Nc�V�@NR�U��@N����p�@NCVV6�@M�D��a@NE�M)!@N!h���`@N Z��@N� ���X@N�Ib��@OF�_�eh@ON��&m|@OL����@O�ɢ{*h@PY�|L�@P��81��@P�~���@Q:���0@Qӫn@,@R^�|��@R�^V��s@SR��fi@S���2�'@T(YbE+�@T��5�>@U�8	O@Uv�}_;@U��JJs@U�j��@V8����@VU(��I@V]�T�n�@V0*2%xt@V"ΙI7}@VEi)��@VAO��x@V;�~TQ@V�{�Q{@W��!@Vi�,�x@U��+w�@U��<�,h@UX�c�7%@TQ�G�
�@R�K)�X@S<�i �@Q�����K@RK�k��@Q
�\f�@O��z3[�@O(��t�X@O&��wG@EV�oZ�@G0��/�@I*��@K�%�x@M�-�T�@O�щ��@P�T��n�@Ql$8��a@R�����@R�O���@SY���
�@S��>�I@S������@TI� �@T,�7�I�@TM2���@Tzp*Lc@T~��=@T�v��z@U#�V!�@U�%�Q@T��1�@R�����@R��t�/@R���	E�@S(�ol~@T5#sZh@U8���Ύ@V5��_�g@V2�s.�@S��,�@QV�B�9�@Q)m(�5,@P�ppx�@P��Ľ�@Q ���@P�C���7@PIk��s7@O��K��@N��X�]�@P	$`�@PX	&�y@PU^&Y8�@O��W�x�@O[4!�@P��ǩ�@KBW�J�)@I�m���@I�߽p@H��=��/@I2�O䁰@J��ܳtU@I-�K��@IOM6�@K��LDrm@L�ȟ}O@N�#�T�@P=L"��x@P���'p@QK:m��@Q�_�8�y@RA��M%@R�9�'Զ@S>�oy��@S��&B�@S�6���@R��?�l@S����Ҵ@T=����@T�b��%!@U�L�VP@U��� �y@Vyad�C@Vj�D�@U��7��@UZ1�� @Us9CE܀@TpPr�]@T4t;@T�IL�D@U ��R�W@U���y�@U|=��%@S�O/�(�@T�@k@S�����	@S,����@S��-+0�@Sk`�J�x@S�A��vt@S9^'s�@S`�O�X@S26�@S1CC�� @SE�����@S(�;���@S�>�@Sv��ͱ�@Sp����@SYf��@St�*0�)@SwY���@S��%zm@R���q�@S(�)��@R�fC�tx@RA6	��A@R#%�[�@R�AŶ�@R�9�@R)�}��@R7Sr�x�@Ro�utP6@R���/@R��B=�@R��� N�@Rx[�G�@RY�)�r�@RB���$�@RT%�c�@R`�Nͯ@Rx�y_�S@R�/��,@R���tE@Rw�l�@Rl6i�@R����z�@R��
��@S!��@SSa�儝@SXJ[,�@S*ؚC @SXի�@S��
�@S4��=@S�f��@R�5���z@R�̾��@R�:ȧ�@Rү�x�|@R�uh��H@R�+���h@SZ鳾�@S�()�p@R��#�G�@SIDu���@S�p�m_@S�J�bR�@TA��!E@T�!��5�@T�F~��H@T��Af@U1�����@U���N�@U�z�m��@U��q�+@U��ʉK@U�A��@VG�E@V0ɯ�0�@V�j&Q,@U�P�c�@VRu�E@V
�AH�@V=�I�@V����c@W 'J6}@VD:`�@T_�&�LO@U ����@U�+O:o@U	d�&ݝ@R��s�@R��@P�FM�p@R��#9@QZW���@GlO��X@G�8e7@�@H��fAK�@K�.�J�@M�F��n@P.��w׭@Q#%ޮ=(@Qo��5`�@RV"b��@R�T��:�@S4)дW�@S�{�_uH@T���I	@T`#��@T��	�;�@T�O��R[@T��`@TT��-��@T�h{߬@T ty#�@T<�u�5�@T�y�T&@Unǆ;�@U�sc�gc@U�ĩ�Y@VF��P�@U�Z��V1@U�]Ԋ�@@Q�;���@S@��[w�@S�>c!c�@S	��~�Y@R���x@Q�C�@N�;�@L�2]�x@M/��T��@M�sx���@L�2j�)�@K�
��1)@K0��x@J�f�J�@Ln��|Z�@LCt�.9@O���kX@N20�_6@Lߜ���@F� ���9@H�uŠ��@D����e@A�hc��@B:�|~W@@�U0]D�@D�o��}�@L8� ��@LM�M]@K� *�;�@K����h@M��� @N[��
PU@O��4��@P���D�@Q{�w�FT@R0�܆@R��v��1@Sau�
)�@S1)��r�@Rnh���S@S�}�M�@R\���m@Sg���	@T`6���L@T�����@U�c�-C@UW^��0@U�&ӏu@U���5�@T�:]�@U��Q�=�@T�Ƴ%�@T&��k�@Tb�uB(@Tw\����@U�/��<@U�^f��]@UZ�IP��@T�7lR/@T\#&�?@U6�2���@T*��K@T ���@TR|�/�@S�����@S}�F9ѭ@Sw�QP�3@SY_Gp��@Sm�bG %@S������@S�!Ut@S����� @S������@S&�E!B@S^�Eލg@Sr�R�@Sx�I�@Sas,{@S=���Q@R�G�� @R�^?��#@R|�̏@Rn���%y@Rk$ *��@Rg�d<%�@Ro���sj@Ro�F	�@R�k3��@S8`���@R�y��'@R�֒@R���f�@S��專@S�f�j@S0�.�U @SR�F�h/@SpA�_�@S���4�@S�k�UC@S��eR�$@S�L�_0W@S�ø9n�@Ta��,�i@T���z�Y@T��x�1�@T�g#[�A@T��m/w)@U�$>:@T�!�9R�@UI�WB@U�P ��@U�kܷy@U�񯖹@Uy�#�&@U!���@U#3�qf%@U�����@TԖSR�@T���t$�@T�2����@T~g!W2�@Tw�0�@T�e�9�@T���R�@T���M��@T�PYaW@T�q�WO@T̛� �<@T� ��@T�@�?�Z@T��i�@T�����@T^�_�a@Th;��@S���/�@S�b<�|�@T&"!��@Uj���@V�D�@U����@U���o�E@V �,�ϯ@V�Yސ@T{V ᄖ@U*~��@Toj?*�W@Sc ap\�@S�{���@S��^�e�@Q�U�M�%@Q#�����@LӨ���@L�<,C{�@L�}��-�@N�|��+�@P,{���@Qoj�g�@RK�_m�@RO~�h�d@R��6@S'f'�(p@Sa*K�@S�Ei�a@T]�oL�@T-� � )@T@*ء&�@T]�����@TK�ۓһ@T��!�@S��m�@S0O�bc�@R��ш@S�����A@Sw�J�@T��~«^@S�G0���@Rpk�#�@S�%i���@T�^ۺt@S<�t�@N�c�Q�@MVG���M@M°���@O֪aa��@L�Q�O� @J���S�@KS��ʈ@J5��+�7@IJK�
!@H��5��p@HZ��1O�@G"Hh���@F����YK@F�T��ţ@Ha-��Y@HR�q��O@IA�M>��@Jŗ9I�@F�2Z��@C�k[I@>��FY@8�I���@8?'a��@4��}*�{@3@�#���@6�ɌV{@G%��U�[@LXf��ȳ@M�m�8K@M�e��K@M�)p�@N�Q�g@O�Ʃ�?�@P�����@Qf�7��@R��� @Sq��f-@S���$�o@SWY=I�@U���@@R�j����@S�"��|@S�{�|�L@T1ܣ�#@TwW��O�@Tx��1"c@T�����@U%�dZ��@T��͑`@T?}d�/@T���J��@T4����@S��S��@U��m��@SF��|b@U ���$@U��	oI@T��ao�;@T��5Wd@SИ�'�-@T+��<g@S�$jF3@T5�/�hY@S�e�@S�|~��@S{���[@SY����@Sl�`&�a@Sm�jh�/@SgE=�5@SjW^�{@S�7E@SP�}�8�@Sf�0�@SK��x�@S3e��k�@S
mBR5@S6����@R���I@Rc,�w�E@R�dZ'@Q�k�4�@Q�W"а@Q�����@Q�j@@'@Q�+dB�@Q|\Hz$ @Q�lj'1�@Q��GP�k@Q�еG�@Q�-c���@Q�k�?�@Q�nå'+@Q�?�[�@RỖ+�@R���1@R)cy��@R5Ἁ�+@R*����@RL�~�!@RY�����@R�]���M@R���(�@SZ:wՓ�@S���i��@S��$���@S�����w@S��~&�@S�&jѫ�@S��
��@S����@S�U���@S�\@ޕ{@T�1��@THX)lk4@T��qϹP@T�`��o@Tz���@Tp34O�@T^�/��@TC��f��@T0�̼�x@S�����@S�2j�@S����r�@S�{�U+@Sqޙ��`@SZc.z6�@SD�LP-�@S3x�(��@R��:�L�@Rw��l@R_H��!c@R���M@R'�&�RS@R'��' �@Q��X8�@R�<$�h@U�'��-@U���@U�m�,�@U�+%�7@T���@S�b	' n@S1Y%�o=@S�]�p/@R�1�W @P�L�i2�@P� ��@QE�7�@O����@O΍�Y�%@O!�&��_@O�M�8�@PF#�d�@P�j�pcp@QrO�˗@Q�_P�ES@Q�j#��M@R��ȴ@Rn��@R՞�}��@S�ѡ�@SV�|Dc@S��]���@Se�u�ă@S�֨��D@S�1�bU@Sgm����@S���t@Ruqc��[@R.>�9@Qq.Ϧ�H@Q�F�m{@Q9|�@O�D�m3@M�j�>_�@N��{\'�@O%",���@N[��H�@I)�m�@H4ib5h@I>IC[�@H��Da��@F��p}΀@G0�a�|p@E���@D"��b�@D���l9�@Dr�`���@CFiaf�@B���2�@Ac�s��O@A��O�d@C�r#�=�@B�Ω�xu@B�e�/6n@CT�'�?H@A�%;�u�@=:�@o�@;pr5h�@0?鈄8;@A�]�<�@B[_��C@@��1`�@;�s���@D2EO�e@H���,�@L^����@Miw&�2,@NC��3�@N��I�@P	D�%@P�^]�B�@QB��W�@RG�5��@R�Z��,�@Rʥ���@R������@S�'LW@S�0�:�@S���<�	@S�X�N�@S�Р�c@S�����@S�x�$=#@SE�1j��@S�R^Ĩ@SǨ���@R6� ><3@S������@R�*����@S�֪8��@S�C��-@Tk#�"Yi@T�+�@TTp�l�|@T<��|%@S�dx��M@Sz1�M��@R`K,�@S�����(@SA�޽@S��d��i@S@Kcѱ@SF�xX�@R�P��:g@SC�FN�@SUSn@S��X�@R��_�@Rم/_��@R��G�1@R�0��?�@R��%��"@RbX�#��@R%^P�:E@Q� ��o@Q�`��/@@QNF��9'@P��`��O@P�Ԭ��@P����P@P�li�lY@P��:o�4@Py�T�@PI| ��@P��$��@P+|ϳ�q@PO�?jl�@Pg-	?��@P��E�x+@P�|/g�@P�?ϻ:@P���:B�@P��I��)@P�����@P�	b	
�@Q	bn��W@P���
�@Q#2RȘ�@QfϦk�@Q�^
w�v@RkN�8@R62m!� @Rkr�=�@R]�X{�@RW"�r�@Ryx|�"�@RiG���@RK@��8@R@FG���@R]�h�e@R�5g�%�@R�����@R���/�@R�P3pP@R���	��@R����C@R��� ��@R�f{�@@R�3��@R�����@R}�l�v@RWq��@R���M@R��p@R�;���@R^�V�@Q�#��e�@Q^��R(�@P�H��H@P��@.@Q�ￇ�@Q��3��@PPK,��@L֘�T�@Q%j1���@Uj��|{@Tot�G�9@TCI"	�@S��6�u@Sg���<@P�&-*�y@NȚ[��<@MϏ�ō�@N��	kd@K��念@J��1��#@L��E��@O! ��e�@O1+�}�(@N|Q'��W@N�NgS�L@O'�N�X#@O�Ý���@PX���ڊ@P��%��@P�� ���@Q����@Q�ќ�$x@R
e9�2[@R>�Rm}�@R�n�q@R��� ,�@R߱����@Rس����@R�B:��`@S�\Y��@R��c��o@R���@Qp�]��@N�7��@P%9���@MhzT�-�@KJ@��x@JTn�N�@I�輐%@Im,��@H�B!7�u@BT�)�d�@A��mǊe@B-A5ƙX@A�Y��4@AD'���@=��N_��@9{bN�@8�V�@7�&!��@7�W��_�@7u@��.�@6`IE�N|@3�G�3@10��E�"@3�x��@4霬�@6�U���i@7��@7���.1@6�m����@2l���M@<�ܴ�#�@4�Y��9@0%~C�O%@4��Ɲ@@�����g@E){�?�@D!�]��@F�}��@Jژ(��@Lq���&�@M��AmQ�@N�Ԓ#@P�&�@P}�o�X@Q:��_@Q���Y�R@P ^(��_@Qo��Q1@R���%�E@Sz����@R��$OO�@SI�)�Z�@S)�M�\@R�!���@R�s߻@RrV��]�@R!gRYQ�@QzȰ�_@P�G�`�@S����-�@S}`=���@Rޯ�V�5@Q��{�Xk@S��S?�@S��|�@@S-���@S�m�l�@S2�!��@R�/l E@R=c�eGH@TA�i�@SHHD#@R�4��@R����@Rk�J&A�@R?G�\y+@RBZ��@Q� 9f��@R�މ�@R�	��e@Qņ*N+�@Q��ާ�@Q���X�@Q�;���@QS9��-@Q�O�@P�'Ŕ��@P�3�O>@@P9x��O@O�]��}x@O����x@O#���z�@O�*}��@O��@O.����H@N�r��@Nr6ā�;@N:����@M���x@N0�C�K#@N��ֶ��@N���y�(@N��nA]@N���x�@NŢ��$9@N��HG
�@N�f!U\�@O	<��p!@O����@O�3�@P�P��@PQ��w3h@P��t�S`@P���>l@Q#�>�[@Q4�X� 	@Q- �j`�@Q%pFy�@Q'�8P�1@Q����@Q/\GG^D@QR�[?�@QT�'K@QE��3�@QIpc���@Q���	,@Q�w�}�@Q��KV��@Q���-c�@Q�#��v�@Q��"��@Qov�1�W@Q]ٛ���@Q�. �@P��V
��@P�8wN�@P���ޠ@P��y��[@P\z.�?@P:j��'@O�+~& �@O�5��@O��lE@M��qL�e@N_��
�@O}�Ty{�@S�`�@S�Y{=-�@R��+fq@Q�IN�0@QC��o@QπS��@Pb:�e�@O����8@ON�Z�"�@N���"�@MF�#A�@Lo���S@K8x���P@M]�7��@L�>d�� @L����c�@L�9��9`@MQC.�p@M�Z0���@N�ɼ�Q@O��ڃ-@P )<9�@Pi�b��@P�M�<x�@P����@QqG�2��@Q�MӠK�@R@�27Q�@Rf�7�m@Rz�.�27@R>�=.@Q��ȁ:�@R�T
��@Q��̽p�@P���%�;@MN�ި,k@K�$�>�@J�0����@G���	�@F�=jp��@E���ia@Do�H=@CP��'�@5UK��@4
d�c@3Jr-3�5@1�\���w@.Qo��H@)XŐ��@'�V�P;{@'4S���@'|��p�@$��}y�x@"��i�[�@"���P@ P�qn�@!��>6�@!���e�@#p#iKg@$���[@&d��Z1@$�Ѷ��K@*D�n)��@?Uy��_�@C,e5,)1@+o��)@ր�o%�@��>9��@��ҽ�@4xW �h@C�"�*�@Ew�C�@G�t\��4@I�m��@Kz���1m@L����j{@M}t.�I�@Nn:�[@O�$xs@O�t��@M}s�E�@Nј���%@P�qZb�k@RA��
�k@Q�--�-@R`_Y[�@R@$��@RE^簯@Q�9��@Q�<�3@PV�S�@P`d,���@P(8�8,�@R�=�ީ@Q��S݋l@Q3yS[�e@Q��w�]�@S�@#�5@RŮ�5��@R�h��G<@R���� @R?�A�v�@Q �z��@QX'��@T���@R��
Q)�@Q�����@Q��|��@Q�i��`C@Q�\��@P��X5w@Pݴ�F3@P���5X�@P��CC�@P�����@PRIod��@P/ݟ��B@P2�߯��@P�;��q@O�3'mI@O_��"��@N��&�}�@M�9�'�@M�Ӗ�;�@N.S���@M���l~@N�q	
�@M��]�\{@M�d4ݬ@M\t�L�P@Ml]ͽ@M�[��@Lʇu��@L������@M&�N4�@L�G���@L�0��u@L�!b�%@L�q�ǵP@Lp�� �E@LO�Bz�#@L���]@LE{��J @L2x���x@L%.1��<@M A���@N6CMf�@N�Nj0�@O���X�@O��^��@@O��c�F�@P�s+@PA�X���@P1ٮԢ@P[ڐz��@P��ub�|@P�f��+g@P�t,՗G@P�t�[�@P�S6�w@P�qn2m�@P��w�s_@P��ϴ�@Q�GM�"@P����y�@P���)@P]k:���@O����<�@Oj�u�@O]���@N��sĻ@N$��{rI@M*�I� @L"\��c�@K%�{ z�@L�)A6�}@Mk�y0��@P�cM>@R��NA@Q��ʥ@Q�/Z(@QL.�ac@Pa�O�@P�6u@O�ϘEXe@Ow�,q,@O�A��=@O4���%�@N�[w�@M](��N�@L�[椳�@Jͨ���@I�?�W�@@L�$�@K�(��I @KyW�p9Y@K���� @LE��@L�� ��@MS0��@M�B�A�E@NBߌo�@N�7�j��@OPI���@P7_��^@P����]@Qյ;	@Qyh�ϵ@QĿG��-@R��@Pꍄ�-T@P�z/�@Q�RP��@P�ך�@P,�&Ǐ@I�k� @FBn|h��@E"@�9�@D]m�SxQ@A�\��*k@>[���͝@;���XՀ@8¢ׇr�@-��Ht��@,<�Z&�@&%Ӫ��@$,`�^�@%r��w>�@ 7��ݖ�@R�c��@�&���@����ny@����y�@�(K���@D��W�q@K�;x%@�$��G�@�y<@���,@�Q:�@����hk@T[�@�y@5�\x8@F�[C1��@9�<�EA@!�{�?@g��s?@vH6+��@��6�%@�a���@3���7@4��Ē��@C�əVY@F�	�0��@G˙����@H�\�c��@Il�WR @J3Gb��@K��Pp@H�u±@J<zC�@J�9��@L'��X@NG�|"[�@N�?;��@PY�<��~@Q���lt@Q5��@P�w���@P�h��@M��Fڕ@@O����@P�[=�@P�]��VU@P��=3��@O�M���@S�_t`��@P��+�I@Q��1�JG@R��9Lh@R���1��@R`�O�)J@QT7�,HM@NOqYE�@S*�M�?0@Q�
�tZS@Q<��ji@Pю���Y@Pqu+@P
�y@O�<e5X@O@(��@N�iu�t�@N�2"�@NAjׯ4@M�t���@N�ϫ70@M}��-@M`@���@L�y�;��@L�=���@L�����?@K��!s�	@K��34��@L/r�C�@L�D�!�@M3��K@M.v�� @L�y��@L]�j��@K�YK��@K����@L�0�7 @Lx���À@L~��� \@L
�޻>�@L���֐�@L�=�:�@Lɴ��9U@L��R�&Q@L7ka�i@K�u��@K�4�Ɲ�@K�$Թ@JcX�W4@H�[N�Ga@KyĮT<@Lke��M�@L�L�QJ�@M$��y�G@M�Ce�]@N,Z�Np@N�P��(@O��4�@P�%:@Pa��U@P�6�-�[@QFU�5I@QM�J�@Q8�挗e@Q�	*�@Q�)�r�@P���@Q	RW �@P��J =�@PCx�Da7@O{��(@M�1`s�@L�L�[]@L�+�/�@L�(6o@K��OPN�@J��Þ�<@H�}��L@H�رꅠ@Q�'��_P@Q�6�b�@MnU^�30@P�B�~n@P��UL@O���;�+@O2�*��@N�\��}@M@Ŋc�K@Ku�x%��@M�`�=�x@J�]���@I�|�v�@M��V9�5@Jk��S��@K�X��@C@J�H/��@Jp ��0@K &���@K	`�\@J���L��@J�*2u�,@K���@K���K[@K�&���=@K���@L�l��@L�����@M�)Yx�@N9u)��x@O+03�3@O�{���@Py�5�?l@P�Ο�7@QV! $�@Q!ͫ(��@Qgq�
1B@P�]z0�@Oaz�Y�0@L�J!���@EK�-� @;�����@:&����@8r��k�@6��s[Ws@4�z���@3j����S@0���9��@,+��@*rv܏��@&�� @!�X��@ ���jC@��u!�D@M�N�5o@���m��@h�w�^@��4 -�@
iVH>W@	�u*��@����]@��8��@	�E��@-@��P�@�l��--@�	|@���J�q@EZ<�v�M@@wlՓ�@#���#��@���d��@#��@	]"��@(l�	�@���@ �}��@�~U�1@1b�uw��@CC�5�G@D��NqR@E�(~! @FX:�+��@F�~����@D��[z,@C^��ݜ@G7X#�S@G�o6��@Gʝm+�d@H�G��3�@J�2�l\@L����C�@O;M�;�?@O��ΐ�;@O�~v�@LF�)�f�@L���H�@O������@O��jG۝@P[��m�@Pz�����@RP\�Ⱥ`@S@@���@P8��.@QT����@Q��O3�@R�eu�i@Sܭ~�]@RM�37� @Qm���a�@Q�"�He|@P��/��@Pm�9�5@O�~�޸@O*�m�f�@N���+_�@N��*,@M��q']@M;�,�@Lk��D}�@K�!��e@KE���O@K]�o�t�@J�(�|��@JkE,R~3@J@��\W@J"�hI@I��Q�X@I��r��@I�eAL8�@J��pp9/@KB��z)�@KyT,�@KcEA@K�|b*�@Kh���@J�=�qn�@J��8'{@J�� ��m@KE 1ҟ@K3��k^�@K"|HkM�@K��Bb�?@K�Nf{�#@K�@���o@K�����@K���r�@K�����L@KC.�< @J����@F���H@G�n�8@K[���.m@K@Hױ�@K���ʣ@Lc@��@L�92���@Md�����@M�9f�@N��I���@P2BQ@P��V��@Qx�%h%@Q��c��@Q��^���@R,�����@RZ�0�Q�@R4`��M@Q�3�cU@Q��?�]@P��x�@O۞o��@Mn.�BP@Ksȵ�qy@JE�IP@I�aAX�u@JBDy�L@G��]XQx@G ��۽3@GP�9*py@Mg	�4@P�,�@OV��H�O@H��7J��@Ks=b�=@O��ۜ�d@Nkn�{�@NYr���?@N�q�C��@L�Q:dig@HY�#�t@J�7P�Ӑ@Hm���<�@I!t���X@K1KE��@K%�h�@J��/@Jw��z5�@J���9G%@J� ���_@J�|�Y�@Jbn zI@J�!3�a�@J��R��@J����@J��"�S@K3���G@Kx�.A�@K�\^&P@LGh��Ul@L�S��@M���ys@N0����g@N�����@O_��Z'@O�8�q��@P7�ɵ�@P>���m@O�V���@L�-��-�@LQ�q[�e@?�m!@�3@7L��k��@6�)�n�@5 ϙu@4%�^Tt?@3J��J"1@2���0}@/ݗ֊�i@.R��#@+��D���@)b[�V@&��K� 5@!�lq���@�b�y@&s'��@cw]R�E@|A��@��O��@4x\CP@�@ƪ�m@]|y��@�z�@�P�N� @��}<,�@	�DO�P@%-��xw@$쥔��T@A1��{�@#[����E@Q�a(�@��Z!%@yO���e@M�[�e@
���@��z8`�@	�+�`��@	C���u�@=h�0�#@:҂A��3@B�����@C�S��'t@Dm�@ŀ@A� �xz�@?��Ӵ51@CT{��@CV�N�1�@C��)	��@D^$k��@E?��?@G>Y�t�@I��_�@LgZ����@M*)����@Lp ���@Kl��I��@P2�ͼ8�@O \B�H@N�m��w@Pe��Or@QyR]@��@R܊�B1�@SW��`J@@Q�!-��@P�_�ߓ@Pkz����@PU�y{0@P�Yu�@S�%�@P�_��X@Q���s�@Q7QS�,@PgO(�/�@O�i��	@OM��7Y}@N���K�@NL��S@MH�O��@Lcȴ�]�@K�uM��@J��t}P@J�։z��@J=��4�@I����M@I�t�1�e@IU]��i@Ir1h@HZA�tB�@H3ɟU�Y@H�����@IC��,�@I�`�,��@J�v3�#@Ju�|�,@JYZ��S�@JI��3��@J��R@��@JE􉹸c@J)A�0@J#`���h@J`%/��@@J�&v��@J���@J��:=@J��˥Eq@Ji�x��@J���d�%@J,a33/$@H�qO	@F�[V�N8@G�|��Bo@I\[P�@Jsm%��@J�O�A@K.(�}3@K��� ��@Lh�>��@Md����@Nw��Nu@O���=�@Py\
�@P�6V4,@Q��΃@R*Uls�@R���
�7@R�c��%,@S��i#�@S.�l#�@R�l�|��@Q�A��+@P�^>�@N��'���@J�[�V�+@GC�vI@D@�&��@E;iq�js@EY�a�@CI��@DW��C�@I[[�"fx@N����@O+M+�@M������@J�c��[�@G�v�AH@H:?�U��@KH��f>@JuV3&�}@I����\�@KH@�5@J�qw��=@J�]cQ@JHi���@JA� ���@KV�?�Q@K�S(߅@K�%��z1@K�qoS�@K:�1�@K'���#@J��U;�}@J����@J��ۣ@J���\C@J{��]�@J��_I{@Kb���@K�1�w`@K[�.eK@K��AK�@K^�O��@K�g%��@L��[(k@L�����@M!�%�@M����@N<�_��/@NF��r�@N�q�s@K�~�כ@H�F?��}@8̦6a��@56�6��@5��_r� @4!XS(�@2��3�@1�&X��@0�Y���@0�&#=�@-�L�Qe@-�LE�s@-�9�/O�@1'���%�@*j�=�@&Ps���@"k����@>� � @�>���@�kTl@"ˣ�B�@�-�xѽ@
�h�=ka@`��W��@\�G3f�@3����@�o.k�@�d\��@5Gz8�R@1��\)�q@ �<��z�@�_;>�@�GO�@.�dqw@k h,u@I�c�q�@"�)rB��@!m���M@>κ1��@2��͊@<T���+�@A�򁱓@C���>��@B��)��@;�����@7n��7�@=#
��'�@>� ?��@?�~����@@�����I@Bv*����@D�AVeE�@G��S�@KR��/�'@N/˯�F{@NȾ�ƛ�@L%����q@NRk�_��@N�q<�1�@M�����=@P4����@Q9�]�@Q��vxE@R��xEǦ@RCC���D@Qx�.��@P��fS(a@Pn��N@O�����@O�G�	�@Pp���X@R;����@Qs�{�E�@P���`y,@P���@O�[�a�@N�j^�@M���� @M+ď| @L9Oz�u�@K�	>� �@K<���"{@J�.]N��@J ���[1@I�Ug�@Ip*�
�C@H�6~wH@H�����@Hc�[8@G��$��@G���K��@H!�  C�@Iv\��@Jm�n�@J/w�ӝ(@JG��GN�@J^�Ȳ��@J��r`'h@J�M��sl@J�z%O��@K�},e@K+�P(u�@KPaQk@K�#8�^�@K�چ�@J�Z{�@J��]	@Jі3'@J�x�i�@I�`����@I��>Д@I��W���@I��D�@J���!m@J)�}�@J��9'Ф@KzM7�w�@L��ۡ�Q@M����o@Nb'�"�5@O����T@P�s���@QR���W@Q� ��@R�����@R���G��@R�連��@S.�C��@R�a�v�@R}]Y�@Q}�NiL@P5
�r�@KѥMw�@GQ�w��@A5&�}�@>��($��@A�jf�m@C�����@A�93ȁ�@A�K��@D�n�f�@J=�n�@M���l@L����܁@L������@L�̔�@KO�B(�@MY�r�A�@L�(j&�7@J6|@��@K(}R��s@H�
0���@J��m�O@LR\	V@L@�=�@LJK2/X@L
�u]6�@L^UN�r%@L9���Np@L��t�@K������@K�7ђ�@KG}��@K38�S��@Ka�O��@K!bч��@J�?��@@J�!����@J� b�C@J�N��qX@J�R��G@KO]Ji�y@K	�;++@J֒kz8@J��]��m@K8ѿ�@KiK�p��@L:���H@Lc��{|@LI�w���@K���g�@I/v�9�@BI�[k@5�����@5%�
���@45Ҍ�� @3?��B�@1�h���P@0�� N#c@/;R3�@.���5@-{3�ׁ�@.�EKwf�@.�I>[�@/��@)��aq{@&���et�@$��%�F�@"xb3�j�@!Y#m��@>U��@����@O|?[r�@��|7�`@#\���e@�!��@@����?@!A��n-@1�m���@��-2�@$�Muõ@$� {|*�@&(��<��@%�Z�H@#�T���@*h=��@3����6C@3���"r@1�D����@*h~�KQ@!���_��@�g�c@ ��' �	@&sf�@))	l�d`@+y�M��@2?���&n@8@�����@:fm���@>vw_ó�@B�m����@G��j���@KҺߎ��@M��C)y@M(:;���@K�fR�@L^z*��@MmJJۧ@M��#@M��8�<�@M"d=�@N�xvIh@Q��M�O@S�jl&n�@S� ��Ӧ@R�6�Gz:@R���-�@Q?3��W@P�9��P @Ps��<D@P��U��@R�oZ;/@R�|�މ@Q�Pl���@P�sN�q@Pv����@O7?6�#@N����o3@M�-�2�@M=5d�+�@L��g`��@K��hH�@K+��n�@J��o&"�@Jq�M�<@JI���D�@I��#�@Ij�-�7t@I
n�E@H�2'�{�@H���|a@H����Y�@Ih�%b\@J/�;�s@J���,2�@K���@Kbw6�h@J����y�@K7R��Y%@K���	��@L�~9��@L��3���@MH��@Lu��!H@LD�N�@(@K�H ���@L>���z@@LS�I�D@LJ�Q@KBC���Q@J�� ��@Jڏ���@J�|g���@KaA���@K6����@K��Z]��@L<�}J�@L���~�@M�����h@N���?�@O��K��@P����5C@Q*%A@@Qi�CP@Qަ�i�@R~?���@R׃8�+@R�Hv
P@R�� ��@Q�`*��@P~7

c�@M�����[@Ij���l�@@��C�A@7�Y�:O�@::gJ%(�@?�ְ�g@@�2��~�@<��'@?8�zx�8@G!�W�� @K`�EiZ@K�%Y��@L��&�P`@L�S��@L���nVP@M����@M���rԯ@K�,�]�@G��A�2�@L�ZWX�O@J�~��a@M:O�X@MnB�D��@M n�-q�@Mbk�@Mp8���@MA�'�[@M v��҃@M"�:�@L�X3�	�@LuoD0��@L9��Dk�@L�Pap�@L&����@K�_:���@Kk��@K)�u�@J��Z���@J��$w@J��eࡕ@Jr�gr]@J[��|��@J_��ĵ@J*���S@JK:�X @J�-~���@Jcb Z�@J�����@J�z~��x@Jd%�`��@I����$ @G�nނt{@?^��%9�@6?@�@4��=�o@3m�I4@@2Sx
O@1���<!x@0\l�I�\@0��˿��@/����@.L@-���@,3��+!�@+r���B�@*��<I}�@+�F"�@)�[N�+L@)��$h�@&��RYa@"���#�@��IH�@hW���@��]�@:�����@xf^F��@%]�޼V@!��
�\m@!N�Y���@#�=q�@'���� p@)3�+C�@+�"�/@.�򻖬�@7v@WU=�@/���\�@$a;��x@$��� l�@ �<-�@e���@ff �@Y�<rr0@���c�@,
�ה#@(�@�fh@(@.";,a@1N�l{F'@8~��|�@A�����p@E?���B�@F��_�q�@H�:�t4@F��5F�@E�o�L�,@G�:�G@JY`��S@Pc�K��@O4��о@P���@L&�@PX��l�@TNM��N@T�sq�q@T�0�ּ�@SP&*ڌ�@S9 �"�c@Q�~�ۘ�@QDr{#��@P�$Tl�@P�O�5�@P�$�o��@QZ=�}@Q��_u��@Qmh��~�@P��zg?@P�)���t@Pt�}d@O3��� @N�!"@-P@M��m:B�@M��3�h@L� �A}@L`6����@L�9���@K����@K�V�^�A@Kj$��`(@Kc���@J�p�x@J+mo�`@J�1�@K4˸�Ɯ@K�Ai/#s@L
��O��@K����E@LW���@L�ω�@L�v���@L��Dv�[@L�1R�@MRx��	@MNXac@Mr��E/@M}�s��@M���G��@M�_�0P@M�z�>��@M@����]@L��� ##@L�|*�@L@��@K��J�@K��ۣ��@L_���@LX�!w�@L�'��_�@M?wLgO�@M�8��C@Nc��
�@O�8Ҫss@Pub!5��@Q�D�t�@Q�Z/K�c@Q� �"�@R,��!�y@RY�#	��@R��g���@R��W��@P� ÈvQ@ORi��Ƙ@K%��A��@G��#��@7�Ø�+�@6��dA@:c#��&�@=L����E@<V�wh�@<�KA!=7@B���K�@H�0}.�@J����@I$/�&�@I�F��7X@I�h
1�P@Jt��a��@L�|�e�@L�����@G�m[�@K%*:��@MK9!.յ@N*V7��@Ne�@N< ~]�%@NI���j@N^�a�,@@NC��Z�@M����BM@M���q4@M�����@M�ӻ|"s@M�.��@M�(kt@L�E�Hy7@LǩN��@LV��L��@K��s��@K�>�@KvZ��F@K<v&G�@Ks� �@J��{�@J�;r]"�@J��8ɇ@Jʪ�+k�@K1�h��@K'�Λ@J��<�[!@J��2	U�@J��!�	p@I��k]q�@F� <dY@G��7��@F7c�~>�@Ab���VE@6L�B�t�@3�&�Z�@2r�k��@2	
,?=@1Rz�@2�H{��@1��s6H�@0#�۬�@/���1��@0�\�!@0�Ydd@0�ր�ʈ@1U��@1���^mP@4T��-�@2��D���@,d�\��@)6��U{@)E[v��)@+;�c��O@0��a�~@0w`�ި�@'D�*��@%��A�@%�Kw��@'��F�@+*H��)�@.��cҝ@1���ˋ@1��m2J	@3v�}/@06�4��@*Szr	�@+�o6_��@%B[��D�@�O��@��Id/_@�rX��T@ *��:�w@#��$#zI@,T����U@7a$J`+�@8B��TM@=�
��է@B��(ה+@B�X8[�~@@�Uy���@7�_�yqy@8���|@=Oc���@A��P ��@Gf���ܽ@P�*Q��@P��xB�@J��m��@J���.7@P�y��S@V]����@U�AŘ@T�hd���@S&�i��3@S�i.7@Q���+��@P��~Os�@P%	�@Q��J(<&@QQRde@QE�-���@P��Gh�5@RG� ��@QFDo`�'@Q�S�h�@Q'+u��@P��]��@P^�J �@P3z�֔k@O�]H\��@O=_��l@OO���@N�n�/�}@No��SI@N$��gf�@M�{\�A�@Mo���%@MMFB�PK@L�����@M"~=���@M���Bh]@N(��s�@N-bԤ��@N{"�>h�@N[͍�1�@N�6o8@N@����h@N��}_P@NAc�;@N���*�@N�����@Ou|N�@N�,Κz@N垰�J@N���?�@N������@N��)��@M�:���C@M�n��@Mx���@MgiuQE@M|(u0@MF䬤��@MA�a�o�@M�e�bsk@N$��@NQ�k��@N�J�*�@P	Rn>�@P��pb�@Q��Qc@Q}Q��h@Q�=)��@Q�ı��@Q���ߘ@Q�t���@QD[��@@P;xFj/@N	/�ߥU@K闝75@C*:%ʲ5@2?�扞@5ouiǅ@8���>E@:�2�A��@9�ݚ(@=:�6/�@CekE�R�@G������@I�Za���@K(O�Qg1@G���}�@Grѵ�@GH��D��@G�Qs�n}@Gֲ��Q`@G�=����@Ko{`Z�@M�m��؉@O�ԅt�@@Ogn탷@N�����@N�0l�;@OPIt�_@O��?+@Nz�"lC@NAd�7��@N(��j@N\�[��{@N
��T�p@M���5�P@MW�]��X@MrC'�@M*�=-@L�"�˩,@Le:ӝ�m@K��k��	@K�4L|�{@Li3_��@K�����@K��P@K��6SFw@L8D+l!@L+�;;n@K��nʕ@LS�'�0@L�I6Hi�@Lz��1@L*l"��@K�%��@Kۆ6�Y�@K'�=�`@Iy�r6s@B�R���%@7�s��@4�7��d@3]NT�n,@3�K���@7�����@5zW�^��@2�d���@3�5U�@3WIY=9@3�p�4�o@8�5r(R�@;������@B�ޏ��@DqM�$e@AK�+x0�@8�f��O�@;=!��s@@����@B�t��K�@A��af]@@Q���@?W�N���@4�3T5�@,ԫ �@-��f��@.��C�}@3�o=��@5I@\9V�@5�-Pe�@6?qGG�@0�F��@+iK��Q@'��#À�@#?7�H��@'>��>�@&zpY�&�@&W�{z1�@'K�#��@%��r�@0���af�@9��O�@A^`�E�@B{�Q��@B�H��o�@79����@6��TO�@7��8��@:���_@?��4ڽ�@A x@G�fU�h�@M[B��@ME���� @M��j{@M���(@NHJ���@S���گ#@T�c{=G�@S�Nʃ�@Q�`���@Q��XG��@Qº�9J@Q�\�R@Q �3�e@Q��.qU�@O|�p��@O��Y�:�@PZ�*���@QuǺ��@N��>���@PE�mV@Q`}8��@Qu��m�@Q��}���@Q��'i�@Q�t#S�@QN��ꋃ@P�Z &A@P�*ը�T@Py��4�@P�����@PwU8{x�@P"�愮�@Po/�X-@PD=j]�@P����w@P0���X�@Pxc~��@Pl4�=�@Pr2��Y@PT�'?�E@P9�1��@P��޹@P�M�*d@P:���@P5D_A��@PvR�L�7@P]`T���@P�1��q@P���Q��@P���|��@PI�,zK!@P��?@O�菵G4@O3\-���@N��b�Bc@N��t��@N�_�@N�C��x�@N��\j�@@OJ+a�@Oj�ڟN�@O� �Q{�@Pi��Y�@P�e����@Q jG@Q:���E@QpYPC��@Q��Tm4�@Q��Y-��@Q�-�Y{�@Q�{&,�@O����k@M¡�C@LX~;�@H�u
�5�@69f=.�@2+ӽǗ�@5'h���@9bA����@9U�p�@:�f0N�@>�r�@B9D߾�@D�k2v�@G��@H����\@H3�\��@H9g�c�@H��(��@G����@HN���%@H�q�;�;@I�e.�=@JN��O�@PZ&I�5@P�P�s�@P}�d�@Pxd�FQ@P��y@O�c�H�H@O�e�yQ�@O�%�3-@N�nH�@N��W�A@N��b�K@N�f���@N��>q�@NJ�l�s@N*�p�@M�h^�@M��E�B�@M3~�Q@M����@L�u*��@M42�5��@M�"4w$�@M�����@M�HNƛ@M��3t��@M�Jk�@M��V�0@M�$�8�@N���k@N'ƕ��@Ln��@M�te1 @L�X���@J�X�"�@Ej8��$�@?����7@?�Q� "�@9��İ� @8��еu@A��q@@�5�W1@;�y���@;ЛZRÀ@=q�1�@?���u�@E+��x��@H_�s.�@H@��r@H;�X.A@G��Q�@E�Y"T��@B��cmUE@BLLU-@C=�!P�@@���]��@Aū��n@@� �b�@>)��O��@4�ɟP�@2롛�o@3�1��I@8�ڻe@8��k@9�z�6�@8���d@2�Q&s�@-��ϲ��@+E���@,m��m�@0I1�x߈@0ob�G;]@2��y�n@4� �<M@4�Q���@6N}8@9��-I$m@B�ۑ�@G;��(S@E.�$5tx@A���g�@@�;X�<@@bV,��@Bv��@C2훶I�@F�V�B�@G�W���@I�/Ppu@M����@Mr-n�K�@N��R���@L�z�Pн@P"t=4t@R����Z�@Q��?q|�@P�UnfK�@Pb���_@Q�Oٹ�@Qjm�5�@P�v�=�@P��/O�@M�R>��@O����@MR)�a@M��G@O�8Z6�@PW53@O������@P"���g@P���/@R"H���@Sc�v�@R�h-G+�@R�	Fz@R-��d�@R�����@Q�'سF�@Q�#w=:�@Q�g��@Qj�=Qi�@Qj�2��@Q�Mބ:�@Q���@Q��-P��@Q���ns�@R̪�-�@R��K�@Q�*u�[1@Q�P@!?y@Q�ߘ
��@Q�ma�Ђ@QaHF�q@Q����@Q��B�@Q���UR�@Q���6��@Q��
q�j@Q�O�+��@Q}}
�X@Q5ty^`@Q�� p@P���L�@P�u�D˅@P�2��Q�@Pe^�_I@PhBA�3�@Pb�p ��@P�-����@P���@P��C�i@Q;i����@Q��C��@Q���ض@Qԙ��@Q�aL�ո@Qe>HC\�@Q-cՈ�@P�1Xx�@M�3�m@KPjc�@C�����@;��T�l+@3���v��@5-���@8�O�g�@<��L��@>��Q��S@<���ۯ�@>���w�@A�8�>�@D|J9�ޖ@Fǫ���3@G�����@H��2�@H�uH�@I�(�U@I
��v�=@I����$�@H�O�fx @HZ�HC2�@IRO����@I��"^�	@O���?�@QZ��@P�Ħ�a�@Q"w�/��@Q&���7@P��_��@P���8�@PF�[���@P'��\@P(��*@P���@O~�� '�@OmȺx�@OdR�r@N����E@N��/+@N�_��E@N�
<�%0@Ne���@N�&��@N�j�� @OW-��nX@O�aA;��@P#��x@P���@Pw|��@P �w@P"���	T@P=f±�a@P,��|h3@O�N��=@O"���@Mԝ�==@K(<w�+ @F����@C�t��ګ@A���z�@@ezL�}8@F���5%@F)�8��@E��]�Ә@F尖!�@GxJ���@H"Ρ��@I)����@Ir�qW#@I���@Jg�V�@J(���F�@G�@cH�@FO@C�ԡ-n�@@���A�-@@F�J���@@����@@c>���5@A���J�@=�OAh�@:�S?w?@9��Y�H@< $���@>Q��;@>yl�}�@@�l����@D+�$�a�@?F8	���@4�'l�j�@5���Zy@8R��x|@8{hT{N+@7��Q�=@:�x�^�5@<��䆿�@A��XW�0@G��	-S@K��q�u-@Mt��M+@G]%Ӧ�5@C�J1�ˊ@Bnd���@B�5@��@D�Q���@@Fw,oē@H���4@G��
/�@E3|�6�@Es���@H1�łN�@G����J(@K?�N^�@K�99��@M�X�G--@M����_@L�b'@M>�R�q@PL�f��@Q�oO��Q@P9(�I@N�Y�S�@L��F#/p@NC��/@L��|�`L@M��o�׈@O�a��I'@Q���P/@RB��[�s@Q�����@Pp9q��@P� �v<@R�!K��@S�����M@S���ܖ@S�؊�b@S�C�f�@Su�f��I@SREv�@Sb�h�B@R��6�@S�G�s@S+U�c�K@S5��]�@SK|�'9�@SEE�臭@SF�2d�a@SK��E�@SW;�S@S:k)RP�@SE��X$@S+!����@S�<p��@S�+�@S:��U�@R��y"f@R��9��@R��#nP@R�Kԃ��@R�i���S@Rx󵍡�@RF�vv��@R1��S_�@Q��QmVa@Q�̸[�t@Q��a�=�@Q��"B0@Q�~��1@Q���E�-@Q�f�~�@Q����@R8�d@R)�A;��@Q�o%�*@Q�@�� @Q�
�&�@QS�:A�.@P�謀ï@N����os@L� ���@F�"�m@<�zHv^�@7���I�@6�����@9@���[L@<%s-�&�@=HS�Fw@@4�J���@A`WuSSe@>����C@A��6��@D3�<bLq@G�
��5�@G���,h@HeG1��@I����@K��u�{�@J���qP@K[���@J��� �@Jy3#�	�@J 3��vL@J��c��@Jy���(@QP�Nlt@R3��P6i@RP��@RI�q�@R%&�Y8�@Q٧X���@Q���]�@Qnxs^�@Q"n���@Q�?��-@P��\�(@P��m�#}@P�M!	�@P��u=m@P�V�䇳@PW�$�`@P^V�@@PF���KT@PE����@PiD���@Prsz���@P�H��e@P�I�Z<@P̍NVn�@P��'��)@P�j���@Q��y��@Q+$�[1@Qx	��@P�9*�r+@P|���@N�i���@KE�����@GQ�5k5�@G�����@H#k�� �@G1��a��@Iw���]@K>����@Lsrl�T�@L����@K�n����@J=��u=t@J�I���@JiT��Y@J���N�@K�TXM�M@I� ��A(@H>뼹T@G�	&�B9@C��O)��@B:��Q�@B�C��@C�F�5�X@Cd(��{@B�lC�;@@�tP�k@?_�{?��@A1����@C;��6��@A�����@E�ge�C-@O]{xs@H;?���@B|s��4�@B��K%{@@}� '@?�s%�;@=P��o�@<B��Q�@@t�t�#@Bp�\��@D�1/��@IquhČ|@G���Rg�@Fr��P�@@�m���@=k�р�@:�'U�@;DW����@@��.���@Bá� �+@B�_��H@@eY�K�@=T����@E�$��8�@H�(%B�@H�[��@H��#�7g@E]"��?�@H�l<��@H�k��@IX�R��@I��"�,�@L��zG�@Q�wi�@N	4&<6�@J�RXĮ�@K��]ս�@K7C�e8g@L��S��@M6��N��@P_U�yo�@Q��'N��@RA�"�;�@Rc�ϳ@Q��'�@Ra0���D@Q���-�@R怈�o@Sy-��7@S��T�>s@T��W@T=�y@T���O@TJ|ɿ�Q@Tw�0��G@T`*?��@T�<�\?�@T�����@T�v��8�@T�ַKU�@T|���@Tm��C�@T���*�)@Td$�/wt@T�)��@T��nLM@TzB�ǹ�@Tl��A��@T@��L0@T�筵@T��&j@T/���_@T0Fƺi@T��+e-@S��]�@S�91���@SV��r7�@S��h0�@R�+��1@R��,�Ƈ@R�E�[F�@R��۟K�@R�cO��3@R�tfB�@R�G _�@R�#&;��@R�	;@R��2���@R�Ϊ`�@R)u]k8l@QV�I�G@O���3��@L��t�U�@JHQ)w@@���4@?Y'k��M@<o�tu@=��.%X@@k���@Bm��vċ@@#�9v�@E��z+�@D�)
��=@A�=*1B�@C*�W���@E��d��x@H)�����@I/3E �@J,�ĢN<@I�.��I@KR@^�Y@MV��|@M��wZ�@Mj��Q�@L���zl@L��X�@K��Ăn�@J���^H�@M��t���@Q��bL�*@R��u���@SS��S�@Sl��P�;@S{	�+�h@S���$�@Rո�b_�@R�7�M@R�5����@RzP��i@R`��rj�@RsNh�@R=8�ك�@Q��"`�@Q�Ҵ��@Q�=�@Q��pA�]@Q{���-�@Q{����Q@Q�>���@Qi�I�u@Q8�	�+<@QBd�n��@Qg_�44@Q�B{��@Q�n/3i@Q鍦�A�@Q����h-@Q�(M��@QJt�#�@P_�{��@K^�@	@G��	@Gq�L��@Gұ��_�@G���Ym@I];�R�@K���,`�@M�}n~-�@M�]�Q�@KcR!��@KFͼ��/@L@�/˩5@Jٸ����@L0K�@J��1Fs@J!W��w@K�2����@J��o��5@Hd�?J3K@Iܱ���@H�� #@GJ�Qx@F�YܐG@GI-M�x@@HGQ3ic�@H[�F�#@FJ�<� @Fg�r�a�@I�Rr˺�@M/�Q�� @K��Ѯ��@F@!Xb@B��F�s=@B� �xV�@A��aO�@@+��o�@?uН�t�@@���p�9@A��V �@Evr�@G�z��|[@H�v�[@I�d�m�@HD����0@D�u�S�@CC^�	�@@�9�Z]�@>JN� �@;�!�f@?Eɝ��@@ z?��@=Y�=H@@��E�p@C�?��D@D��v�$@@�g�2u�@@oM����@C
\�]�S@Dr�b?�@F&�ѭ@G���eX@HH�J��@H�@�se@K S��Q@L$���9;@Hg���oM@Js���@Jh��$q�@KM�M��5@K(᪠�@Oӳa��@P���+�@PΪ���@Q(_��@R\�/h�@R�ش#w@Q��n{]@R��<�9@S�|N\�G@S��m�A@T(�l��@T��1_��@T��ӷD�@T�Ү�ˠ@T��[�|�@U6)<��9@Ud�^60a@U{��G0@U�;@���@U�C˺�@UqB!��@U]��D�@Uz8���@UY3�aH@UA�U}��@UPy�\@U3��81�@U/��+H@Uqɿ�h@U-��u��@U-��g��@U3����@U;�E@T�N����@T��,S��@T���\H�@T���gh@TXZT��@T6���J@Sᜰ��\@S�W��E�@S� ̔4v@S�f�b��@S�U��o�@S������@S�5��H@S��)	@SV�Kw�@S$^�L�@R���/@Q��FO�(@PE�+�U3@M縨l�@G%�H�Y�@@���k�@A�d���@BXL���<@D!�R\e@E�z��9@F�՛�?�@F��*��@HRx�5�E@J(rY$@DS�v�@F.�ve�@H&����@I�f�N�@J� x[y�@KȎr%L/@L#��O@M"�����@N��y8�@P!�G�=�@Pw�5�8@Oّ��@P)kF���@O�8���@N�5��u�@L��y��@N�CU��c@PT$@Q[�W~0�@R�[mED@S�~�Ά�@S��6Q�@S����{�@S�s����@S�4$,�@S���$��@S������@S�o��@S�Mz�9�@S4ͅ��E@S)-��G@S��m�*@R�J����@R���vNx@R�w�:�@R��=�B�@R�7*~M@R���ZM@RK�[�@Rd�wW�#@R�m���@R��F`�@R��@R���\�@R��iا�@R ����w@P�|��@L;|���@IIk�>�@H���w=�@Hd銋�5@H��`��@K����;�@K�_nU@ML�2�؍@L�K}��@K9)�&ν@K�Z�'$�@L! H��@M�ܰ�m@J�F�/��@KIP7@L�ږ�ʫ@L��+�Ơ@L��G�W@L�*Rg��@NՐKi�@P�m~U@M�u�z�w@L�S���@@M��J�@N��ԭV�@N�.%��`@L�����@LӪ����@La��PE@Mܙ*�u@N�F:�@G03�V�@D�N��;@G3^����@Ed{q��@FXn�9�@B��1�ރ@Aҝ�p(`@B8�*Yы@EL��s/@G�x��@I%(G�@J���L%@J��`Q�k@L/�����@K�~�su@J��P�qU@H���J�@E�����_@A��7��@?W&��{�@>J�L0@A�,��@Av��6�@@�����@@�AOۢ@?�#�Y��@@�)u���@B���_�5@D���Wi�@Et�n�@E��Get�@F��̺l@G�N�+@G���Vt@G�cJUa@J�`�1�@K��>=l@L)�?B�@L>��m@J��9�@M�ۈ��}@ME+	ɵs@N�_��@Q�0�$�w@RĒ�Q|�@R,j����@Q ��}2�@Q���v�@S	��{@S]S��}@T`rw��@T�X[��6@U&L��@UZLWA�!@U�[V"�@U�3�D�@Un�k @U� �Y`@U���2#�@Uܻy+�@U�`�z�@U�l!��@U�Y��%�@U���~3@U�$}{�@U\��%��@UqP����@U�����@U�=x�@U�x_��@U�ͽ��@U���i�@U~���PH@UlՀ�@US`�ӕ@U^s�[|�@UV���@U%���\c@T�(	²h@T��� �@T�_�N�L@T��&m�@T�E-��=@T}���;@T{pʟ��@T]� �F�@T���'�@S��]y-{@S�����@R��
M@QJ ��k[@O����@I������@Em�op!�@Fx���qe@Ff�v���@Gj��G|P@H_D��~�@In"���@I�I�}@H���1@@I�:eB�Q@H�*��@G^�J��)@H�1t �S@Ky�a��q@L��GA��@N3v�KN+@Oa����@O��բt@O?��H�@Pt��U�@Q�^}�h@PF�hDr.@P��5#�@Q��E&�@Q?���@O��M@M6Z��@M/�V�_@Ph�wD�@Qw#p�x@R����@S<�� '�@S�>��ن@Sٰ&�ܴ@T*���$@TA�R#D�@T��'�{�@Uh9'"t�@T��	B�i@Th�fW@T�L�g�@T;�s�Zx@Tj���@S�Τ�0@S�4�%�@S�7Q��@S�A�M��@S��=:@Svz`J6@Se����@SA qa�@S6]�j��@SR%=_7@SsdA2)�@S�Y	p�@SI����@Q�Y�3o@N"%����@LL[��@K!bYc@LᏐ=�c@M`C�#��@PB�_U�4@P32��{@Mi]��@K��a�y�@MǅMP5@NqN�V7�@O׹�|IL@L��h���@N�}|�@O�$\`@Oj��#	�@Oc9_�N @N�X�˹7@M�="�u�@NX��z@O�2����@P]q�~�@O7j�x�@Ol���@M�V��ܰ@L��g��@MGNJs@Pln�oN�@P7��&n�@K�f^�@I���*Z�@Lcƚ�@J�Fa�%M@Igg^Eñ@J
p�o}�@M/���@G�`~׹@Eܲ��ѓ@E� 6цK@Fw�-?@@G/K��@G?��M�@G���
4@H�Җ)'�@I'����7@J۹L�h�@J�����{@M��d�x@Kk��b��@G�_L8�@Ee�<@C�p����@C�qmQw~@A1�\��@A =�h��@Aދ���@B�����I@Cj)҈��@C?�'Rl@C7�.��@D=�^6]@D�"��@ES�K�@GZ��[Y�@H�ϧ�@F��C�}@G�ݧ| �@Kn1#{�@L�H���P@MT���@LZ��3R@K�����@L�61~�u@K��I�'@O��kL@R7��׹@S<�-�@Q!ݮ�@Q�B�V�@S�j�w�@R���b��@Ss꣋�@T2�����@T޾Q3�<@US��5@U�h7T�@U���ƫ@U���5K@U��^=@U2�Q��@Uc���l@U���-?@U�O�+��@U�
k{�@U����ݟ@U����@U]E��m8@Ud_X�]C@Uv���A@U�
S�M@U��7(ܛ@U�S���X@U�y��N�@U�,(0�@U�h��B�@U�L3��G@U�W,l�a@U��ċ@U��N�@U]�jj�@U=�ۂą@U8#6���@U#`]��%@U఺��@T�WR&L@U*ί�v@T��S+g@T��t���@T\��^@T
�<�)@Sa�5}�%@R]�ɯ� @P�	?�u@N�#>@J�ON@�@I�#5k�@I�j���}@Jks���q@J�@�t� @L~�(@N ��ɧ�@J�)gBi{@I�-K0]@I�7�BB@JF�5�@Ko�eC�[@Mf�F;�@N��3�@O��F���@P`G�¬)@PӮ�G�@P;{��'@P����@QP��@P�m���%@Q����`@Q��A=@Qa �
O@P�k7�=@P�"UZ�4@M����#@Nx�'x��@O�
6���@Pu7C�m@Q~�Hr��@R@�;@R�Ҩ�@S�&@�'@S�$"4MS@Ss�3�+g@SQ�#R�@T��p�@US�̞[@U�a*D�@Ux���R{@U¢��i@T}�4jH!@Ta���T�@TSa+<@TT%�mQ�@TF��N�@T*#��H�@T4i���@T&��I�g@T��w��@T���h=@T,��=@S��<��|@T�a�?'@ST(�Z��@R����@Qa+����@Q::�U=!@P�YN.}�@P,�6Z�@Qs�Nd/@QM��j3_@Q�R��@P��;4��@Ph)lD@P{k���W@P�`�A@Pw](E�b@P�"^�@P[�7<�@N�2���@O�>��>�@P%'zw@O�{���-@O�3��(�@N��7��@N@e��@N��g��@L�
�bu@L����@M�+� �U@O �b��3@Pw��Q��@N��z~@K�9�EW@G�m�aL�@G��ڡ�@N2�t�@K*W���@K]����O@Na�>y�i@Kn���b�@I�����@IW~��m@H�ѻ�@H�����G@I)ﾷ+�@G�_'��m@H�dÙΈ@IX2�]��@J��sh{�@J$����0@K&+r'��@I��#�N�@J]��m�@GS�솂�@G��	��#@GE̫,��@F�es���@E֙G���@E�̪p�@Gr�B��0@FLי�c@EM����@E(���4@E�T �Л@EĞ&�#@G^YQ�O@Hg�ȏ��@H�L9��s@I@�!�qP@G�5S:0@L
��x¬@LLQ|�W�@N
�K���@N:7����@N.�3�ϸ@N�Ր�=@O��� Z�@L�Z�q,�@Pz��y��@Q�=��}@QY���A�@R��� �O@SWE���a@Tm}��C�@S�"���{@S�/ͣk�@T��JND@U�A@U����a@U�{�Mg@U�V��ʕ@Uh�`3�@UF)���@U��1@Uqw)<�@U\��=u�@Uh��@UQf7sY=@UY�8�@U27�|}@U����7@U%r���@UO��!)@UXql��#@U��X���@U�9�D @U���~-�@U�S@U��ڒ��@U��\[{�@U�0���@U��B/	M@U��R��@U��i�S@U�p���=@Un�ʘk�@UK�~�Y@U9�a��S@UH�r�@UA��C��@U����@T�tvm!_@Ta�<��@S�E�z(@S	�44n'@RV����@P�O^��@O ��Z��@L�t��@M��36�@N��G���@Ow�ٸ�@N�l�,�@N:q���@L��(�@K�#���@Kb6�# @K��Ɍ{�@M�6���#@OL��B-�@P�Z@P@F6�@P��\-��@Q"�X�e@Qu�v�H�@QJ��u]�@Qq��q/�@QXȾQ@Q��{�Э@Q�T-�RU@Q���Jo@Q�݌���@RL�0@Q���M�@P��\�a@P~�JD@P�ݬw9M@Q�@]L6�@R���@R�r��ӓ@R���gg�@R�Pk;p@S���@S�zK�O@TN@�^N@U�M"�@U� ���@V.�b8�p@U��@�@Ua��s�@T�TK@T�*ϒ"�@T�W���u@T�7��@T��ҽ�@T�P�.�}@T�N>'�@T�b�G@T��[�G@T�N�� @Tn�U��(@TH4x�-^@T�>�2�@S��&P�w@S��Y@Re̢�@QAS��@OO	ԁ�@R���j�@R���-��@R��^�#@R]�k.�*@R���' @Q��� �@Q����@Q�řf�x@Q�^%�@Q$�4Ȇ@P�swn�@P���W�@P�3�)@Q�GѼ�@Q"���	@P��`@��@P[�&���@O��0��@OMtɃU�@O��^qͅ@P�0�f�@Pi[Lae{@P�=���@PA�����@Nr�}?a�@M��K_�e@Osض_Qi@N>{8�W@NPz
� @MZ���t@Lxʔe�@L�!��@Kᑣd�@K����3@Lc�l�@L����u@L!�߅yP@K���Փ@K�;�:$�@K׻4�P�@LzA�×@L��toB[@Li��VK@L�g���l@L��l��8@M���'��@J/W@J�E@HFygS�@I�S��@L��wUBq@M$�Qް @I`�J	%@H7��v�@IA��D�@K�\x�W�@I�k�%a@H�����9@H�7g�V|@H�bE�9@It�;$��@M��7|0�@Kܚ2�wd@KTn��@K����x@N݊�ك@N2.�'v/@M�)�:l�@N����߈@P�zG�Q@P�>0=5@N1Ƶ~V�@Q'�V��5@Pe�yY'�@Rz�/+"p@Sn~�DP�@S�h�o@Ty���Y�@T�nJ�6�@T;d����@T�̜�dP@U,;3"��@U�:㭐�@Uo�f�ރ@UOȟܝ�@U��|��@U^�	�a@U$���;@U&�ѧ�@U4��Q@UP=�ӯ,@UP	� #@U�hlw�@UYh��)@U����@UN�,�@U\�	hc@U�D�.��@U���9@U���*8@U�O��T�@U���O�@U�Q�4�O@U�0/�@U�@W�?�@U�*]�̠@U�f���@U�g��@Uzǖ��@Ub`��61@U;�M^pO@UK�P�q1@UP�l|ب@U)n��@T����@T��^/�@Tť*�`@R�؏O	-@Q����*
@P���n�[@Q)H+|�@N�֢�O@N�ٖ��=@P��ԃE@Q&xag�;@O��d@N�T���@M�R�t�t@M�4�
�@N1  :�@O'wZ�@PL"4��@P�Mu@��@Q5��΃@Q\nD��@Q�&�Da�@Q��dʳ(@R?9���@R���|@S����@S8I�X,h@S�l�ʜ@S7����h@S*�\���@SJ;�	l�@SD����@Rq�E\��@Ro��pu@Q��NS#@P����T@Q��,�9V@S4�`��L@S>9~}�@@R­g3�@R�hr�,N@S3~e@S�b�>s@T��-���@U��,�[@U�a{��@Vm��2�@Vgk+�Zc@V;�ֵ@U���	@Us�^�,H@Usf�)@Uc�ښ�@UAc�;(�@U'3�MW@U7:ڳY�@UEf��k@U]s�e'@U)N#}�@U�,N�G@T����1@T�׈�V!@T	�,�@SN�H4@Q�s���@Qa���h�@R�~�1@R[�'e@Sbp/��F@S��kHM@S`��{@�@SO�eM�@SP��i@S<�n���@S(F�y�@S(]`�~�@Rxz�r��@Rx9���@R��8@RF¸I@RD����@Ri��i�C@R�0�X@Q՞&�o@QȪ��@Qus�d�O@QX�c��@QE���f�@Q����y@P�ÆG"�@P���l�@P�,,E�@P���]�7@PSYb?�o@Pd?�Ϻ@P���%�@P�Wm1ї@PF"�@O����@Nw�Ym�@N��N�@Oa���$@O�_-dQ@O�����@O�[�,Ho@P+���`5@P.l���@Oto��@O���s@O��՗@PF̪�=@P&���V@N��8�n#@N�`T:��@N_����@O�]O�@P���W@M��ܥ��@N	/�"h@NԻ�x.�@M����3k@P���~�@QL�d0+@OÞ��5@L���{@K���@ �@K�ƦA_�@M@t��@P	�)��@M�}�%@N�T�m@M�p.e�[@O�ae䭨@P�����U@PJj���]@P2�x- �@R!/�,@P�ަ��5@Q�C�c��@P��_@R��Yx�@T ��0�@TX>Ȍ��@T����@TȒk�O�@S�mS#��@S$�*c�@S�>�p"[@Ts����@T�'�(J�@T�$����@T�hʜ@T�Q��k@TףD�@T��ޱR�@U/O��@U__�#�@UeJ�@U\�DA)@Uo}���e@U�<'��@U��u���@U�H:sq@U�����5@U� "�U�@U��?��@U�R:Le@U�wjB�y@U�Ի���@U�g����@U�'x+�@U�Hvi@Ut���X\@U��W��c@U�����[@U~��o�@U^�"��|@UW�X^Am@UY���g{@UR
���u@T�7a
��@T��E�Y@S��@���@R�E+�É@Q���P�@R
�[g�@Q�Ʊy\@Q?M�U#`@R^|���@R�5�0@P_Q��@OհI8@N�d���@O1���@O�񙺯�@P�O�L�@P٢���@QZ�k�d@Q����@Q�{�}@RK�oc`@R�<�a@S0"
��@SQ��a�@Sr���%@Sv�h��@Sx5�]Ϲ@S����q@T[�`@T7k���@Tl�G@T|����@T!"�+7@S1�����@R-�4�@Q��"bW@Q30�:�@Q� U�,@R�5	@S���Q@S*����@T�y_1�@T��A/��@U���Q�@Va�o%�@V�%��>k@V�9�˛�@V���ńc@V0-�'�@V"��@U�O���,@Uˍ�S�@U�'�n�@U�h�i��@U�����@Ua7�D�@Uo���Ȼ@U�M���@U}�qj�@UM'���t@T�M`���@T����@S�F>-�8@S]܆��@R�ϧ�#@Rr����@R[x�_[�@S]N=H��@Q�S��^@R��,hC�@R���;�@SrB���g@S����@S��o]�@R�����(@R����@R���T@R��{J�@R�1r @RԾ����@RԴ��8]@R�
�?�@R�~��@@S,��(��@S+B��ѓ@S�u���@R��n|ٙ@R�ĸ�S�@Rf�C��Y@R@])��@RFS@Q��T�@R��ɉ@@Q�آa�%@Q�jD��@R6~�K*]@RVEH��@Q�����6@Q#[,@P��@*2�@Q��6��@Q×��h@Q�]E��@Q���cca@Q��앋@Q`���@P��!�[@P��U�@QA�s�o@Q~2s@Q|�x���@Q�Sy��u@Q�1Q�ى@Q�Y7�Z@Q��T�@R!,){�@R��B�q@R��fř@Qs���@P�A�]/o@P��
�d�@Qk��'2~@Q��\��@QL�/U�@PFA4dnd@O[�#oʻ@P=�L篱@P@�h{�@Q3� @P��]��@PIf��@OǾ�j@P���W�A@R<�]��l@R��� �@P��gٻ,@Q2�[]��@Qi�P@Q�p�7v]@Q�<p���@T#c�S@Tɰ͞ra@T�F�6i@U��e�c@U��W�@TuK'��f@R��_���@QH��F
�@R�vb�G@T!5��(@T��y��C@U^�Q�.@U,L����@U	�GH�@T��8�ho@T�3`��@U��G��@U�����@U#���R�@UWoB}@UiM��K@Um��S��@U����+h@U�8��:/@U����HO@U�]
^�@U����.4@U��?�@U�9����@U���Ɨ@U��s�@U���-�@UtZH�;+@UoY/ڞ�@U���X@Uo?�u�@UL���@U[���U;@UnK�h�@UY�x�D@T��l�d@S�i��p@SE
U� �@S�t���,@SY�iu�@Q����@Q�&�ڏ@S9ɞƆ�@S۷o���@Q�~Ї@P܌��@P��V���@Pu��{a�@P�i#��@Q2X�[�d@Q��.��-@Q�����@Q�ڴD��@R��Mm�@R����I@SVOGz9�@S��,n�3@S��Nq[g@S�`�%[+@S���
�@S�j\zh�@S�0�e�U@S�JcI�@T�9�m@T�K���!@Up�T}t@U-���	@U#��$۰@U;;�Q�@T��U���@Ts~���@S�m1�q@SD�6��@R�P����@R����<I@S�E��?@T�n[4��@U��Gt�@V��7���@V�Xk��@V�U&*NE@V���7�@VNNBp�0@V}z5M@U�PFmՉ@VP����@VKۈ�C@U�.�z�-@U��>�0�@U�4�@U�'����@U��@pf�@U����=@U�h7��@Ul�	ߓ@UZ
��@Tɇ����@S�7��=@S}>=5M@R���@S���~�n@T6�lҹ@R�4��hZ@RטX�@S:N��7@SB4���@SnX��@Sc\M�@R����1@R��N]�@R羦U�:@S�	�-�@R�Z�y9�@SOP��?@S�[���3@S�͖��@T ��kO_@T0� :��@TF����@T�L�5�@T*;��@T#��R @S�3���@S�J�S@Sōr3z�@S���@�@Sj�s�L�@SHd D5�@S{���@S�J� ;�@S�x�P��@S�%�H[@SZ'�r�@R�`H5��@R�QWw�@R�Δ?r9@R�x�]�s@R�m�eFH@R�$�hU9@R����@Rzk	ku9@RoRf�@R��Z@÷@R�=&�@R�y���@R�e�	n]@S˅q@S}��%�@S+�~���@SF�f��	@S����� @SS��+@S��79
@R����Y�@RΙ�FZY@S*��TA@Rl��c@R���-�@Rd��K:M@Q�,N1�4@Q�����<@Q�LT>5O@Q�c��@Q�թ���@Qx�u�m@Qc�����@QtN��@Q���K�@RAŽ�iK@R����@QG�r@Qj�}�@R��+�w@Sg�G�@S�ML(��@T�=oR-�@T���Ӕ�@UE��R�@U@�t�U@UU�&ߣl@T"]
L�@SMh�BA@P��+��D@Q�C��u�@S�}1�@T�`f�9�@T���43@UU�Ҡ.@U����@Uz��>O@U�爍m@U��W-�1@U��
��@U҇| �@U�(����@U�1(2�U@U���Gl@U��,T��@U�}�~�@UH"f0��@T�-�`�e@T�Mk�@T�V�e@T�-��[@UPd�(d�@U���l@Uw@�'�@UW��sE@UM�����@Ul,�C`@U��m��@Un����@UaR�fr%@UG9I�N)@U�V�$)@T�7�@S������@T&U �"�@Tx�O�Pi@S9 ��H@R��H�)@Sx�m�g�@SK5~(}�@Q������@Q=�?Y@Q��ݡ��@Q���7e@Q����;e@Q�E.s�9@R�Y��@RJi`�Q�@Re���ػ@Rs�����@R���r@S*ؑ��@S|y��*@S�6+=��@T+�FO3U@T9E@�<@T(��y�@T$�t߶k@Sݗ�J@T�P�_��@UUIb�@@U2A�O�@U\dK@U}�:J	�@U����^�@U��B%�@U�Ƙ��@T�2��k@T1Qh��@S�k <_�@Sl>���S@S�A���@T�e���@U��n��@V�ܳa@V�Ѷ�*�@V����='@V�O�Z[I@Vw���8Y@VWF�;�]@V^]fT�@VVd�Z�@V?(4�?[@VH��?-�@V70��O�@V�*M?@V�ר�@U��J�K@U�^�8Tm@U�Y����@U�$'�u@U���0@UfY|g�@T�Ѐ�c�@TB�͕^@TQ
o���@S���c�o@SP��L�+@T>����@R��>>��@SU M��!@S{:xG"�@S����i�@S'��F:@R�̙���@Ro�m��@R����.�@RM��:��@R �L+@R�z�p@SeROQ��@S�O.ְ@T0�v�@TK�z�|�@T������@T�a��@T�棨so@T��u�@T�}`�LU@T������@T���*��@T�Z��3t@T�"\��@T�0*9�@T}L�y�@T�Ӆ�`�@T���6�@T�^8�z�@T���U@T��G1h@T#��E[@S�Oǃq�@S���ꔣ@T��@T
屲}@T����@T	<�O0@T	�B�+�@T� ��@T(8e�/@T5����@T1,Po@T 9�@T0�}�e@Tv'�T�|@TnrƙEe@T��a8@T4(���@TN��=ؑ@TG�=#@TH�ׇu8@TR�̼�@TZ�$�;@TK�/��@S�qHE@S�����@S����@S_�����@R���DM@R��gŘ@SZ8;�4@S:�N=@SN�~9@R��>��@RβD���@Ss7��M�@S����?@R���X�K@P�-
c|�@QF)�"E�@Sa��7�W@T�N��=g@U�.�q1�@U�n���@U62y0w@Ud�JyRp@U\`��@TD�cK�e@Tu:�L@S�\D_k@R4��Z�@STf�>
@T��n'�@UQ�p��@U�%吕@U�\��@Uz}�@U����@U���.�@V"%��{@VBk���k@V( �B��@V.Kǭq�@V"��q�@U�̵��5@V(��@U�H̏,P@U�0]8�@UK����@T�:�&W@SC�����@S<2YL��@S�K�I@S�?�A@Tɠ��� @Uo�,�X@U%>�Q�@UJ��-us@Ua�tk^�@U3>Qԯ@U�45v�@T�m��g'@T����9�@T���S�M@T�>�[��@T�c��x@T`v�\��@T&��/�@R��ׂ�@Q�0M��/@Q�c/ yL@Q3ֈ�o5@Q)Cs��@Q�/#ߝ@Q׌���6@RnA#��$@R���W@S22ꭎ�@So�P��@Sf�o��@Sjo����@Sj��7�x@S��0��@TI�?t@T�}�XQT@T���C@U,�~��@UL�$��@UxSc��{@U~qo_�@UgN��D�@US)Y��K@Udr���@U��2�p@U�U���@U�ZpZm@U����1;@U"�7¾�@S�����@S�_��@TN���)�@U����3@VAz��c�@V���	�e@V�ʙ4�E@V�g��P@V���,/t@V�ۀ�	K@V�3��S@V�?�J|'@V�\�f�4@V�����@V� ��qy@V���)@V�P��%@Vc��]Z�@V[R�\�@VE��`vk@V9�׾F�@V�ڗ�@U�ݹ��@Uwh�%p@U�6���#@U�9��3@UDC'��@Tq�K5aD@TL���@T�����@S/:-��@S�KB:��@T��y�]@Tb����@S�Ł�B@R�����@R����@RC���@R�@R��b���@Q�mO�r@R�7-[�}@SZ�֏�@S=S<u5�@Tf���0W@Tm��� �@T�J�v�.@U<t%�@UM�pȎ}@U^`�7z@U2�%i�@Uqh/ǉ@UdE�L(@Ua��Ը@Uge|��p@UZ�\D�@UL�Yzc@Uj+,h�;@U_�w��@Uop��e@U�,���@U	��Nk�@T�;,�8]@T&�#���@T1xN�N}@T,V�<E@T: �w�@TB�}���@T����@T�L`N�@T��X� K@T��l�@Ty��d�@Tu��i�@T�>��٢@T�V�?@UC��>@T�c�d�@T��Blk�@T�J�<tI@T�����P@T�-��@T��h��@T�]���@T�0�*��@T��0�]@TcX{�@T����W@T�+Gm��@T�w��@T��5R@Tf�"e��@T��7A}@T��ؒT@TZ��U@E@Tb�Ē}@S�D@�Vt@T9�x�@T}��W�@T�)٘�@S�1$�=@Pc����@P�&�@{@Ru��i @Sd�V@St�ȧ'@S�81�'@T!�?ǁ@T���fu�@T����|@TNЭ���@Tk�q��@R��j��-@S��'��@T��kvX@U5,2��!@Uo�ԛ�@U�o�ʛ�@U�x��7@V?�e���@Vu�`(�@V��j���@V�U�{@V��Cn8@V}аo+@V\4�V�@U�=�~��@Ub�ض�@Uo2=�@UX�	��@T��|��@S�v<�@Sk�6��@S��gІT@S-��D@R, �s�@S+���a�@Tn��}@T�dӪ�@U7�f� @U�rs�@U �_���@T��)�ݼ@T�Pّ��@U&�O%K@Tt�|I�@Tq8 s/�@TޣT"�x@TԀ����@R���X@QUV��=@Q(MT��D@QC��mo@Q[Ъ�]b@Qw��G�@Ro:�v6@R��F��a@Si�,���@S�@� ��@S��f�@S�O�(�@S�>$�}@S篟q8�@S�l�Ov�@T�i{@U-Hq�@U���j�@V1�D��@VE�����@V��+A��@Vn9�@U��L��@U?�8�3�@U#Z��@UF�p�OP@Uo�*ˣ@Usop�%�@U��E,@U�e��m@UqF�ޓ@S�|���@T�U�ҁL@VZk�i�@V��5U�w@V����Ä@V���e�@V��U8@Vx��-�@Vr�9@VGnggƓ@Vxكv	@V+)�!i�@V�p�RB[@V��pZ,�@V�*3��K@V�����@V��}�s@V�v��@Vx{CQ��@Vv&dB�%@VT�m��@V8<�~�@U�Wg@U˲�[�@U�-�� @Uꍟ� �@U�
)ac@U�eS� @T�N�׵@T.\g�u/@S�A�wY�@T��!�1@Tx�?�O@T��Q�+@S�v�fs�@S�bF��@Q��5b^@R+�MV>@R^�H�=�@RK��(@RU��8k@Rky}7�@S2�i�@S�u݌��@S��)�*�@TM+�\[@T���� @T:�ΐ�y@Ub�V�.U@U�i6��@U�i���@U���Cn=@U�:�@U�]R�t@U��T�Vu@U�s#�^�@U�5|��@U�;%u)W@U�g�D�@U��ߨc�@U�e�a�@T���%r@S�ԩ�Jk@S���M�3@S�Y����@Sַ��@T4�>X��@TL�3�+@Tr$\���@T���<��@T����@Tt�_mX�@T���M@T�J�>0�@T������@T�Ib��@T��ܽ�'@T�����@T߁s��@T��fPf�@T��a��@T`���@T>�wsm/@Tb�i�7
@T��H��@Tct�3�Q@TZ*�wi�@TR��MM�@TW�H��@TvW�=9�@T���@T���@T��r�@TR�#�r�@Td%c�P@T=��@S��қ�@Sq�x�;!@S�Ԅ(k�@S��7C�@Rn�iG@P��θ�d@P1��ڤ@Pg�I39�@P�j���@Q< �O@Q|���͸@R'��i@RK�*��@S2�ߡ�W@TWtKO {@S̍��"u@T�椿@S).e�@R��v��@R�͘�k@SS����3@T]�G�d+@Un�o~e@V7
�)��@V�u��@V��\��@V���9��@Vr3!�
=@VSO��#�@U���Ӭ@U��E�7�@U�l��;@T̺C�c@T� ��a@S�ÜJ��@S�l�.q�@SgC�f@SE�}QU@S�I�V;@R� W�@R���Zq�@SGu:�@S�Īmm@S��r�)@S��`���@R��Z��=@S)��*@T[AT'@S��J�x�@S�q[H�p@S��ٶ@R�R��k�@RjJ��m@Q��8Т�@P�2]��@PʃoaA@Q*���@Q�����a@Rd���@S0)��@S|An��@S�&��u@S��=O�5@Sۓ�kZ�@S�o�/�!@T�C̑@S�L��@SCj:Q�P@T��9W@V *�sF@V�\aƀ?@V��KR��@V�0��5�@Vހ���@V�2�@V�;�h@U�7��My@T��]�n�@U ��|G@T�$�K�@T�'9ٱ�@U�D����@U����@U�{<��4@U����:x@V���F̈@W/�8B�+@W5��M@V�~	0��@V�:bۤ�@V%dE�U@T�wV��@Rk����@Q|�5��K@S�ӏ,n�@T�M K�8@U���@V'��]@Vi�6*�@V�	ئ�@V���ܰ@V�-7�@V��	�� @VnbR��,@Va7 ֻ@VE�bz�@VC}�d�@V�bV��@V&>��]@Vʴ���@U�Տ8��@U��Mj��@Un5�@UR��q4�@T������@U�Wf�K�@U�\�w��@U\h��"@S��֖�@SBعB�@R��j�T@Sd�F�=@R���Ԭ/@Q���@Qx�o@RH�Esi�@S'�-)��@S����@T��,��@TCk��w@Teš��}@T�߷�Y3@T���= @T�����@U��_zC@U����m@U�Cy@U�+�Y�@U��d�@�@U�晊S�@U�z�Ky�@U��� ��@U��� @U�x�B�h@U�mb��@T��(�@S�#����@Ss^��@S�
`gy@S�1=��@S��M��@TJ~X@TRt=��@Th�E�I�@TW�W��@T7�:(<h@T=w�`@TDe�v@Td����'@Tgl��N�@Tz[A��@Tuz�S_@Tp1 �֠@T}ia�!;@T}�0�:�@T=�d��y@T܆+x�@S��j3\�@S��%��@S�f�f@S��F/K@S¡�ʔ�@S���ַq@S~_-l@S>+�6�@SO����@Sq����@S�m���p@S�RM�e@RՔ�:{@Ràb0�@R��}���@Rs�-���@R�%{�@Q�5�ds@P�/��@P��~��o@R����o@Q�ȼ"dm@Q�*b�!G@R�r��c@R��^�M@S74�%�@Ru�&���@R8nZp�@R-Z�,ڤ@R���@R�Ҟ���@R�!D�@R�`�>�@R{D����@R���aԥ@R��:&+�@S[쀃C@To�U��@U�޳֛�@V��9�U@V�9^x�@Vy�����@Vh�41{@U�(�O�@U�F��XW@T�`�v�@S���$m&@S;+��@R�i��A@S	����a@S���@R����@Q��,7�@RV'��C@R4�
O{�@R�a�f@RA�׺e�@R7��R�@QBD�zi@Q�d@���@Rk�C�@S�[�n@SEč���@S����#@S������@QGSr��S@Q*,`o@Q�Pk��@Q��"�@RHd�w_�@R����C�@S�eyRN@Sr/<�o@S� >|�@S��ō=�@S�1l�@S�騌D,@S�ä9��@S����X5@S��2S�g@Si�Kd`o@SG3��(@T��88@V[����`@V�_b~uK@V�@qʫ�@V�X�6t�@V�vx���@V��5H�@V'���@Uɋ�*w@U����/�@U��
�P@U/�hDJ�@T�\�N��@T[R���l@Tؒ'Jj@Vjw�.{�@W)n�k��@W_�)�@WN���U@V�z�1�@U~XNx`-@R= w���@L;�:n!k@Jq�0�s�@JwZ\9'�@R.��v|�@TX�R(*q@Ut���$�@V]|�0;@Vc�pf@V�2�-@V����@V�m ��'@V��ǻ�+@VeJ#1�K@V<��tqc@V"pi�#@VGQ9�@V3- |��@VO|�*0@Vz�3^�@Vq��ؽm@U�����@U�i �9�@U��D�{�@U���j�'@Vsı�W�@V_D+��@U��[`B@UN���U@T<����@R�y_ �@R�M
�Jo@S�K��c@S��z��@RF�P_�@Q��v�yG@R���ZFO@Sq��#7�@S�V!���@TyCV���@T�!�#l�@T�r ���@T{��I��@T��;���@T��+�)k@U-�377O@UK#�kR�@U���#@U�qk�2@U��E���@U�$S�݀@U�@�d�@U������@U��Cs@U�oh��D@TDAY(�@SJ���a@Se����@S�:�c�@S�(��@TJC�X�@Te=�?�@TG�Dј@TjO���@T1�3�|�@T0ᵆ��@T1�\�W@T��$2@T`f��@T�J��@T����@T9��(��@T�SP@S��C�@T����@S�b�+]@S�:��TK@S��r��8@S�L�j��@S������@SX����@S<��v�@SI��B@S �~e�@R�Y)��7@Rw_�c�4@RKտM�C@R5E6�S�@R*R���>@Q�c�lv@Q�>3t�@Q�(��W@Q�)���@Q�s��@Q���p[@Q����@Q�*����@Q��'+s@Q��2��@Q���V�@Q���8pa@R�m�L@R����ǿ@R��t�a@R�����@R���@�@S���T�@R�g��sq@R�[kC�@R~~{>�@R����@SH����@S�OV��@R�2s���@R�4��?_@T�����?@U�t���-@U7	���s@Tnʅ/x�@U8u~��@U�b�b��@U�=��@S��L�s@R�J	V5I@R���XP�@Rx:����@RT4z�{@R6R]�@RǕ{a�@R0�{���@Q�E�+@R$��F��@Q�KxS�@R%��~{@Rq���@RGG�@[@Rf0FA1@R����p@R���k6@SR��"��@S `�&@R(�OU�3@QA�^?S@Q�u˥I�@R� DU@S71b\�s@Sr܂8��@S��JzL�@S�~���@T+��ߏ@T,���@T �P��@S�e����@T���B@T(CG	u@Tv��ĥ@T*9�lG@S�=�;��@SI�S��@R�e%Ei@S3*�j<@T�FF��@UG�3Tz�@T�u��@Un�*�K�@V�f%)2�@V>@��s@U�
Kj@@U�4o�W�@U��d��@T����@TQn�|G%@S��$�H@T|N���O@U��(l�@Vh�ak[@W���!@V�p��@UlQ�&�a@Q���%@O:y��m�@JVi���P@K� �]��@J�����@Lp��H�5@SwH	�Յ@UC�]V�l@V�ډl�@V�;�X+�@V��g@V�;��O@V�ךr�@V�/��@U�%���`@T9(k/�@SγX��@SK�+�*�@SĻ0�SW@T�烝�%@VJ|v
VP@V�p���@V�čH�<@Vmx�Z�3@VcoLe�}@Vt_ִ�@V�l;�@V������@Vu�i��c@V%��/)�@U��$�@U)1�N&�@Sð�]@S��)NQ@S�¿��D@R�5�_;@Q��%�t@RG^�OJ�@S�5�@S�����@TV5խ�F@T2b`2��@S����@S�P>jz]@T�	��C@T�	�*��@T��*n@T�]��@T�[Ge�)@U �x��3@U}?��0@U������@Ue�����@US��q�@UJҏxi@U���/@U%R�H@U��״@T���A�@T3�����@T$2d\w�@TV�.'�q@T>ZW$@T5�OY<�@T<긳��@T8��˱@T#����@S�fm�o@S��8��@S�г�u'@S�Vq��P@S��9s^�@S�$^i)@T �
�j@Txqw�@Sܒ��}@S�;*�0@S��ZJ��@S��+>��@Sz�����@S@f�G�@S.�A�+A@S���)@S;�ORY@S3�i"�@R�O-@�w@R�U��d�@RE�����@Rm'�|�!@Q���@Q_4�33@Q�n!V]@Rw1�K�^@R4�G�=T@R׾��?@Q��J�@Q6��f�@P�G`�ɚ@P����8E@P���j͐@Q*d~�p'@R<eF�=�@R�r���=@R��@�0[@R�pK%}y@R�P��s�@R�}C��@R�3Mp_@S�V�S@R�h�v@R�6ӿcx@Rս�K`�@R����C�@R-����J@Qг���@R�!O @R�)q�#@S��&7��@Tmv�;[@T����@T\0�w:�@U�S���@T��}�[@Sw��R�7@Rtt��a@Q��R��@Q�&��o(@QYb�i9�@QZU�B@Qh���p@Q��N���@RB�=n�O@Q�)��I@Q[�?�U@Qd��kR@Qn�e��@Q�9�N�9@QÃ���@R �-@R%�#��@Q��ő.@Q�vᓥ�@RwT��@R���Bj@SJ�_�'@S����s�@S�,@S�v(�8@S뉫'�@Tk�9@T�[���@TWG� @To�D��y@T_\�W�@T8�G^_�@Ty�O �H@Tj���D@T~)���7@T�i�f@TSӀ��g@T�z
95@S��M���@S��Ǐt�@T7;;!@Tv�}�E@U���?�;@V���Ζ�@Vd�W؟@U�4P��@UexW��@T����"g@TR�w
�3@S��g�;p@S�(�:�@Q�:X��
@S(x��%@V�D0�@V����|@Vv)l��S@Rp�]D�@Oa�~��@M���G@J,��r�@K�Q/�(�@K�)��1s@I:�ʢa{@LbPj0O�@Q6�租�@R��х@U�*M@Vn�y��@V�ԥ��@WuCa	��@W$�xؼ@Ue@UXײ^�Y@U>\ϐ,�@T�[�*�_@T�g2��x@UY�J�]@V�Q!�q�@V�B��[@V��F���@W��Ѕ@W<���p@W�>5�@Wy0+�p@W;#U:��@W�� @V�U|�k@V�����;@VZ�<k��@Ua�_Ro@TlG걕@S�h_*@S21S��@Sד�ՠ@R�[1�@S�u�{@Sfbf�@S�Z.���@T*"zU@T:�?|V1@T!���3@T3c�#�@TA��Q�!@T�i-2� @UL^L@T����_6@T����E@UD����@U���@T�cM�@T��rGQ;@T��[vu@T�,5(��@T�J)
Y@T�`�=�@T�E��2-@Tk��r�@TI�F��T@T4��ߟ@T6�{��\@TH�k�ؕ@S���ch�@S�j�6�@S�hT�>A@S�%r �@S��
�@S|��k@S\~����@S��A�1'@S��񚻘@T��u4@S�CK<�\@Se@2 @S7#�� �@R��.u�x@R�GS)GJ@R��K�V�@R�Y�T�@Rg�=��@R[KV~J!@R�ʹzz�@R����[@RrSY�@Q�P5��@R�Ch@RK���#@Q���@c�@Q;k���?@Q�]��%@Re��-�@R+�YH�%@R'��JY@Q����3/@Q���R)@R'W�(��@Q��M�	�@R[R��9@Ro��<�@R�iZH@R��[r�@R�J޲�7@R��v&h�@R��-_��@R�VzZH_@R�z-2@Rp���R�@R��AYZ$@R���3�@R������@S2`p�7@R��Mi�@Rh��>E�@RUE0t��@R�q.���@S�g�g@T�b8sn�@U��Ј��@VeMV@V.\��@UJ �#`@R� ��@Q>�<�a@QB<U�@Q��ޅ@R
��R�+@Q�0�	&1@QQu�DU�@QJ�\��k@Q/
��m�@QK*p[�@P��D19@P�a��>�@Qe(��@Qͱ��Ր@Q����9�@R��ht�W@R�X��3�@R!��M �@R�ԖW�@R����@S1G��!�@SS���A@Su�rB��@S[�;�TP@Sɪ$y�M@T1��V:p@T�U���@T��a@T�ݺ11m@T��Pj��@T"Q5KWC@TR)Rl�@T|��D@T��|o�@TU��<�\@TJ�n��@Tt�i>[@T��Q;Б@Tr�B�f@Ty�mi&x@T��5,ۯ@SB�A[�@R��>=�@U9ng-E@U[B�8�@T-10L�@S��ʂ��@R�ʕ��h@R�)1�t@S4ȯI�{@S��(��T@T�j���=@V�
7@W)���(�@W9&�Fm@V@@��7@S���!@Q���� �@N|:�Y}�@JHi��Y@J�M �.�@K��:�c�@K��p�@J���n��@J��]��@J���-;�@J�6���@Q�]z��@S	B
�f@T�(�<�@U��R�@V��W��`@V������@WV�`��@WA�S�8@W]����@WZ�n���@Wz-�J�@W����=�@W��Ɲ@W���`@W�*Rd��@W�)�EHH@W�� �},@W���	�@W�n��d�@Ww�k`@WA��X@W���c@V�T��8@Vf�|G�@U�����@T`��V@S��0
5C@S6�n�@SOe��( @SSv�r-�@S/I�J��@S����H@U#�.捚@U�E)߽�@V
!&�<U@Vp�6�:�@V~�+�u=@V�!�:5@V4lco�@Vn֦��@V)�T> Y@V
,MU8�@VC�KS<L@Uݼ�K��@U�Y�nB�@U\I�F��@U{#��i@VL�#��@U�lB;�@UO܁dyO@TL��4�C@T/�-���@T3��� @TEE�MT�@S�9sR�@S����`@T���$m@T�H;e@S�-TV;H@S��C�$@Ss^o�J�@S ��U>�@R�pZ9vU@RԸ�M�{@R�Ⲓ�@R�,�@RR����@RuS��M�@R#i.FQ$@R\䘩�[@R�e�"@R0vCe�<@R�onB�@R4y��L�@R��
6�@R#�`�@Q��B�@Q���B@QɦH�9@R8-Dg�@Q��.\��@Q�-��4@Q�T�tk@Q���
�h@Q��X@Q��蠔�@Q�.9��o@Q�shr�M@Q���@Q�)���D@RC��گ@R��|�)@S#&&��k@S/dc��i@S$$��@S#�a��@Sm��N \@Ss�����@S���9�@S��=�/@S�$�G��@S�""��@S��N���@TIkҥ@T^e�9�@T�S���@Uv�O�ǅ@V��qI�@W���"�@W7pPM@W1���@WNՊ�!�@WM"���-@V���xx@UE���-@S��~?1@S�LEb1@S��ϔ�@T>kF<�@TDs���5@T�-�@S�;=�F�@Sb�x�@Rˋ�t��@R�C��@S?㈲��@S�"zc@T�Я%��@T��C	h@Tdժ$;@T8�V�*�@T�!e%v@Tj�xT�@U��,�@U�~�0@U�Ļ�L@UaqL�Y�@U�l���0@T�F9��@Tx؝��}@T{"�ԏ@Sn2��o0@S7�T�#@S}	����@S�񽀡�@SvEO[�L@S���_@S�3�y,@S�0Uǳ@R�_�@�s@S�{G�/@T`!���F@Tr�Hh�@T&�3��|@Sb����x@R_���T?@R�AD~��@R����_@Ro�1�\@Q�ڙ�@R:�F@Rޭ�0�@S������@VH�l@W�ʆ0@W���x�9@W~��R�S@W��Z�@UW����@Q��o�@R9�l���@MR�&ߊ�@I�%�C�9@I���v]@Jet(&p@Kt�d�E�@L�V���,@M�$Z�D�@Ky�B*�@H�v_�Z#@G���?@G����q@K�_�@M��<Y@Q�[�!e@S���
s@V>!�@W�3�`@W�&���X@W�~�M@W��j�\@W�մ@W�Ea��@XX�Ҹ@X��؜1@W���@XQ�^�@X�=�kz@W�f��@W��=z�<@W�A�D�@WL&��<@W0����@WC�:�c�@W<>'�@V��AY��@V��j%�@V������@V�bZI`�@V��y�!(@V���@W ��a�@W"o�R@W8��g�d@W2��7@W-���Ӿ@Weq�t@Wp����F@W���4@WJm*��@W
�_� @V���r@U!q���j@T�KZU=@T��GE"
@Vs;?�
@V�QQ�@V.3��@Vt����@V�ۗ��@U�NxJM�@U`	�1v@Uj�i�� @U�{�l��@Ua<�)z�@UN��b@UF|L�*�@U@��1CZ@U)��haX@U��_X�@T��)��@T����lx@TXR�zX@T^{u�.@S�[�kND@Sy�<74b@S|#�R��@S�O<M�@S�&)Ǵ\@S���j�@S�c����@S��^@T�C��Z@T#�y�'�@T(����@T
�!��@T=���@T��y@TQ��=>@T3���F@T��E)��@T�H�D@T�3�@Th�u�{M@T.��qi@T�m�jA@S�����@TR��*hP@T�H�g��@T�X�$��@UQ����@U��V��@U���?��@VDcX\[@Vj(S@V���|�@V�e�L�@V�,��@V��A�J@W �7�F@W��	2�@W�Wb�@W-��`@WE{7��@W?w� V@V�F<�B@V���Œ@V��|��@W��D�h2@WĬ��^�@W�f@�N�@W�փ��@W�g��@W�hJ��@W�ӁR��@W��:��@W��tǒ�@W��f��@W����^@W�6��@W����D@W���+Z6@Wy�þ5p@WO��A�@Wr�[�x@V�n`�a�@Vn�.![�@V*�D�9@U�*��@U���VO�@U����6@V8�L�|&@V�&|U�@Uނ��:�@T^���}@T�����@Ub��q�@T���(@TAQ�RG@T�x�o�b@T���7��@T���8�@U�4���@T�~�2�@US&�i@UgȪ�$X@UD\�@U#-s|�@U�Ì��@T����n�@Ux�!�@U�UCqY@TZ8�^��@S�6�&�@Sv����-@S�3���@Sw*w�@S��%m�@S�(d@U*�n��z@U�vo�@@V���U��@Wo�`�`@W���;�c@W���@WR�,�@W�kDz@VH,e��@S[�����@Oʕ#et�@L�6��/@Iã��'�@Jb� )�@KM���@Lʿ-o*�@N5j�@O"��DTh@Oᆎi�'@MVFzA@Isq-k @G1;�b2�@F��a��t@Jw�bO@MN�Y�T@O�V�d;�@Qdg�%��@T6uv`e@U�1��@V�(y@@WH9t"@W�T����@W�!��x@W�Q��Dd@W�9y3, @W�)QP@W�O���@X6h�2��@X5�_hF�@X+,@qt@X(�q>0d@X(Ο�@X!t��R@W��*��~@XЈ���@W�KSa�@WM�IqV�@V���j�@W3aD���@W�x��c�@W�	�]�@W�Hl���@W��78��@Wזu�2�@W�q[i�V@W����g@W��%��@W�Tb�x@W읍j&�@X[����@Xp�O�x@X�	��@W�c��)�@V���[B�@U���p�@T�y�� �@Tܻ�k�@U�FCPd@V0H]~@V!/zǵ�@Vz��{�E@V��g|�$@V}A�x�R@V�1,,@VǷd��:@V�x��{f@V�"�G�@V��=ٷ�@V,ΐ��J@U�|��`@UH�+�ks@T���`�@T��%�b@T���@T��Q�R@T�It�T@T�X(K`@T�Nt n@TC�K�[@T)d|��@Tq�ۏ8@S��@�7f@S�r�@TG7��ia@U,5��@UZ����@U}�����@U�z-{�@Uڦ��gB@U�:�'P@U���1�f@U����T@V���|!@V�.�4$�@V������@V�2K��@VC滓��@U�2t[��@U�k�h@Vj����n@V���'�\@V�H?�@V�j���h@W �X�@WD*'4.P@WCMbMX�@W0Z��HE@W9zW�M�@W���?�@W��V!@W|[���@W	i�
O@W"�V��@W��#�@W=�����@Ww㧕4v@W��k�@W���-B�@W�M��@W��w4-6@W����@W���r@X8V�}�@X&lӥ%s@XOZ)&9@Xe�:�@W��RQͼ@W��.4�8@Wm̑꺟@W%\�`��@V�L53��@V����@VA<��I@V 
n�?@U���PQ@U��r#ݞ@Ua'%�S�@T�R����@T���y9�@T)}�Û�@SԲ��A�@S��|�t�@S��Q}8-@T-+�^,�@T�S4B�@S�-�R
�@T	����@TVl�#�@T�0���@T�q"�!6@T{`�/�@T�����p@T�s�ME�@T��<@TvgX��x@T��?�j@U4��r+@U+I�B0q@UP�6�@U���?��@T�f�,D@U"��s�@U:��{�+@T�K���@T���-��@Tj3!��,@TI@T���p�D@UDi̖c6@V�����@WR�2�c @WxȽ�9@W�v�ޔ�@WW!�Ɨ^@W0�@V�n�ʯH@Vm����@U�<�el@T]���@O�����g@G07�S�@Fz&�N��@GY�@I��1���@K�1q/A8@MJ���c]@N_?����@N=��	@M�e8@M�l�8l�@L!����@H��[�!�@F�,aJ�R@Hg�;b�@J���Ȇ"@L�ê�@N|$�+�`@Q'����@S@>1�=T@T�lOG9�@V�R}@W���A�@W�I���@W�h�j� @XD�|@X"�'�@X*t�z@XI�hV͢@XS�zU1R@XV�T���@XXK�72�@Xdٷ҉j@X[��r2@XM�;%�@W�d��>r@W-'�0��@V��;/;�@V����$�@V��zTx.@V��-Ec@W,�|7��@W�^�p�@X(Z�z�@X;Q0��@XZ����@X�f"�D@X0ޚ��E@X)�[�2@X/�^;@XC��5O@XN��9.�@X?����*@X���	@W�ݍ~��@W283KVx@Vh�����@Uf7(o(@U2�H��@U�Z���@U�9����@U�Q�k$@VTT����@W�t��@W�1��Y�@W����i�@W�5�?�@W��wQ�@W}���)@WV|����@WN�ٛ��@W1���kD@V�+��@V\D]-�@V�8eC@U�^����@Uv�T��@Uv-�8˜@U�	��@T~'�/�@TuX��V@T$���@T��K@T ��M"�@T�Z~+�@V1��e�@V�jA�E�@Vԇha�f@V���n�@W
!�C@W'|B��@WM煂��@W`�YNQ7@WgדMw@W�g��F@W���/�@W,!L�@VE�����@V0�:� �@V �]�=:@V���L�@V�n�f�(@V�s]��@W��<�@WC����@W.��HS@W	��*@V�Гl�@V�B��bJ@V�x��5@V�_6r;�@V�>���@V�Q.�t@V���հ@V��Bt�@V۸�!\�@V��?�@W$O,߿@W7w��\�@W)�J��@Wuwξ�@W+
H7�@W￭Ɛ@W4�}�@W"����@W$��MHn@V�kt�1�@V���2��@V��6ي@V��h1@V��ye@U��j�<@U�/���@U�Y�LQ@Ul�E'��@U$)���@T���%�p@T+G��@@S��r!�@Sz�L@S˅.��@R�;���@RJ�5뱼@R!E&�@R3���w@R_^����@R۵ؗ��@S\1:�Z�@SӖ�}�>@T��uL@S�?��@S��~�p@S]M�@S�����@S���dB@SH=��J@SƓd��@T�'T�@S�:v��@S�BՔ#@Te�e5��@Ts���Ș@T87�}�@T:T��@TH*�=F@S����"@S
l��Ar@R�����,@R��9�;�@T��Ȕ@U�� �|@V`�}
�@Uܝ�@�@T�q
@R��\2@Q�E�a��@Q����c�@Q���u�@PY�	�rN@J����@FO��$	N@E���/0@F��'�@Hsm��Z@J0X���@K��+��@L l���@K���|�@I���G4@I����@H��Ł�@G(��&��@FA���7�@D����3�@C��4�5b@D����@J�58�q@Lc��?�$@PNq	/6@P&�{x�@R���@S���:��@Tɶ�P�X@U�-�\J@V��J�@Wv~�t>t@W�%�"@X�3�@X����@XJ��@XC8�w�@X5)�ۦh@X�y���@WM%R@U�5�>@T@f��<@T'7���@SҤ hR@T����&=@T��&Ayh@U�zɆ`J@V�!ҡv@Wv���-@W��SlÐ@Wŕ��<�@W�7˜�`@W�=_�a@Xu|53@XI���I�@Xa�QO�@XsN�+t�@X}v(�9@Xx ��t�@Xq��Bj@X]v}�3N@XE0�J�@X*$�͸@W��p�c�@X1V`ܱ@W���<^�@W��A#�@W�c��~�@X��@X&�L�h�@XM\~s��@Xb����6@XPo�hx@X&���@W׋���R@W�0g~�@W���7/�@W�A>0�p@W��2*�~@W�̅ }@V��Y傠@V_���@V0�07� @U�)3�D@U��6گ�@U�ьƄ@UB�ǋ�@VO����p@V��+r,@V��4�V@W��Z] @W��HZ@W�,%�p@W0�g��M@W2*
*��@WF� +n@WK��Ѹ@Wod�-�@W����@W��~g @W��4�s�@W�#ȥ�@W����&�@W��L���@W���S��@W����+X@Wt�Kf�@W~�D7@Ws��?�@W/$�@V�y���@VuLN�L@V���y^@U��$�Ͱ@U�1�G�@U�ΧD�n@U���cq@U��%���@U{��&$z@Up�])�@U�`G��@U�A&�8@U{���@Uk"$�T{@U�����@U�5����@U��ha�b@U��l�@U�L��W@U����'�@U�lQ4@U�I&�+`@U����@U���k8w@U~Uɼjj@U,�ɟA�@T��z�&�@TӾ�� �@T��3��P@TNS�EY@S��i5`@SW-oL}i@R��w�@R�w���@R�W��k�@R�6��@R��٪�@Rp��`��@RK��@RZ����@R`E����@Rw	r�%@R����I�@R3�˰�@R�S�Rk�@R|{��@RgHX2E�@R�%�od"@R��A��j@R���
{�@Q�� .kp@R+�o�}@R��:�@Rߕ�K�@R��M��@R�}r�/@R��a�Z@R[�$DN@R�ɮ��@R:8̾^�@S�;�@R.@s�@Q�h����@Q���6D@O��ܖ|@OV�(���@Q֟�O�@T�)��@Q�)�k��@O����F@L�>���@I�y/) �@D�|dPI�@D�Eܩ͜@E���zI�@F%�T�7`@Fw.����@Fa8RaŐ@F���a�2@GM����@H0�B�(�@H��t�@H�����@Gh����@E��"�@@DM5�]�8@B� �@B��P�p@A�V��r�@@��L�rW@@z�3�@A&���;�@Gz� t�@K��!��@K�`:qK@O^���a�@Q O���K@R���"j@S��U�ۃ@T�,/��@T~�F,K@U��J�@V�7f�8@W\�5y,@T��F�@U��WYW@Vű��tJ@Wf�kq^@W����b@V�iI99Z@U�Na�{�@UY���iN@U_Q�
@U���pj@UD�zG@Ue� �@T�/��5�@UB7��fz@V�[��TS@W[/-��$@V����}@WFu�Z,@Wsfc��@W��q�2J@W��|mZ@X��O�@X���ZC@W��̱?@W+pQ�@WN�b,~@W�G��@W�eaM�@W!	蹎-@W ����w@Wq�I2*@W�J�'@W\?��@W��Ү~@W����@X5���@XEh�Dz�@X=wN�@W�3l�0@W����X@W�bgW&@W�k5|/�@W��D��Z@W��#�=,@W���;Ĭ@W2��]�@U�����@T+��%�>@S��)��@T�J�1�@U�sp�r�@U�G�@!&@V(��-�@V���0@U�ؗ�@U�i8�@U�%�Ud@U��߭<@U������@V>�9��t@V����L@V��ы{ @V���C/@V�V��\E@V̲���@Vƹ�nb�@V�7�J�@W��\�@W%NF>@W1��T9@Wn?��@V�����@V���H@V~� ^@V^��u|o@U��x��R@U�v�gi�@U�u4b�Q@UNi @U��td�@T��jñ{@T�
~>8@Tã�2@Tٞ�9�@T�Xֳ(O@T�_����@T��T��@Th���i�@TU�MG�@TH;ZNe@T\*E�<@TDdh���@T%*���@T�vJ`d@Sࡳ��s@S�);�@S�]��@S�i��@Tq��h@Tv���@S�D�B@S�����P@S��T��@S���Q@S~u"[^@ST����:@S���Q�@R��J_P�@R{�l��R@R���ug�@R��]��d@Rs�3v�@RP�K�t�@R,�+wG.@R+���)@R]^�K
@R�c��X@R�t��Κ@R�Z'c�\@R䞍��p@R��gm�@R�,�U@Re�	:��@RN��̨@R@5ضI@Q�E���@QΥF���@Q����T�@Q�vaTR@QZcU�*@P���@P�P�]B@P���E@Oe��g�t@M�" @O�&���@Q#��3�@Q���Rv�@Q|���:@Q� �1�k@P7q���@P9����@P6]�/@P�� �=@Q��t/(@Q�jn�g�@R�a�2{�@P�_\G]@I�\�e��@HQMWG�@F��9�@B� N}r�@B�q�YO�@B�C>��4@C$��Њ�@C���<|@D� ��-@ESUF-�T@FJ�ܨ�@F���%��@E����@D��Uk�r@D�!�@C��neÃ@CR��K#$@B�H\Z&@CPƍqL�@F^����A@H����^@JW��~bR@M��;�H@O#�񬰌@QX�'��8@RN�Q�~@RˋZ��@S1�Ղ@S��g�N@Sb�-y�8@S�+g�%@T< ��J�@SSS����@S���`�@Sѧ�>�%@TEkn@T)V����@T\��MO�@T�?uw@T��aq*�@U's|y;�@U`���h�@U��~�@U����:�@U�ݎ�R@U��

�@U�ۺ���@U���C�@V	ْյ�@V*��v�!@V=�Cc�L@VJ��W��@V_�;z1�@V��n�2@V�l���@V�eU���@V��R�7�@V��y%@V���PeT@V�av7�@V�t	��@VP@S���@V��W7��@V���uf�@Vm���b�@V�=��q@V�_�tr�@V����@V�Kwk�
@W%)d&�V@W�p�b@W�a�%�@V�����@VɁc,-b@V�&Dtß@VԀ�K��@V��JH��@Vd�=8I@VB�H]g�@V0�$=@U�4�K�@U����U�@UxC�-�@U+)t��@T��?J*�@T����F@U-~��@U,�L�@U;P���K@U>%���@UBջ�u�@U_V* �N@U~cYC��@U���"��@U�u���@U�Ƙ�{@U�����@U�!�n�)@U��J�@U���@U@U�KZ,�B@U�l�.��@Tv���d@Uix����@T� ��KR@T/h���@U�қ�P@T���o@T�aZ�n�@Th�dg
�@T�c��j@S��̩ժ@UW�@U/�,HB@T�GV��@T)o0�@T��~��@T���J'�@Ty�mr�@SSAMWF2@T9�2l@Q�@Sd��f	@S��&��0@S�Ҿ�5@S����+r@S���8H@S��m2@S��3Yu�@ST��;�@S,����P@S*��j��@S��(E@R�SW��@R鿮�#E@R�6<�C�@R�5<rN@R۔���@R����2@R����1�@R����@R���<@R�_$F@V@R�����M@R�sU-�L@R��9�@R���P�@R�Ɠ�|�@R��'�8@R�W��py@R��$��@R��}�h@R�.�wk�@Rڳ̹_�@R��[��@R�-��?�@R��@�A�@Rg���[@R:����@R#����@R���<�@RKS�(@R)=��@R+�Qo@R 	*��i@R<f�9l�@R?��k@Rj7��@Q�ѭ�9@QKBj��3@P�wA�'�@PW�/��@P&2�sV�@POl�p�-@PZ�Ŏa`@P<��&�u@P�?_�I@PM���V@OMԐ�L�@O��%r@P?B�B@P�n�'B@N����V�@M�XTK��@L�H�rr@M���Ͽ�@Mi&��]@M���A@Lb��Y@L�����Z@IiX	�{�@H��ۣ`@HQ�3͡�@Gl��G��@Jt_�~�@L�"�p�@L����2@L�s!r�o@L�Ʃ��@M�E�ie@N��� �@OB=�N@O�;9r�@O}&Q�!8@OSEL�B�@PF/_�e@Qo����@@RJ��O@R��̏�L@R���ێ@Rֶ{�d(@S�nl٩@R� >�ܜ@S]w��@S�PEUU@S'�33h@SEr>d�@SR��/��@SUr\��o@SJ�gV�K@S]U6��a@S�P��rY@S�g-�_�@S�b��e{@T^��D�@T�S�@T2��X�@T7�Ie�@TCu��{�@TTW���`@T]�ZyZ�@T{"�C�@T|��Ϸ�@T��L��@T�/�EZ@T�j�fZ@T�6A�1@T��u@T���-@T����)|@T����-@@T�m��@T�Q�x�@U WCB<�@U���L�@T�J=:�@T�ۣ�ZS@T�$zna@T��[��@T��Ѝ�@T����4�@T��9�U�@T�?�3V@T�Avj��@T��4�K@T��	R��@TX�M�%@Tc[�j6@T^�+Q�q@TT���<�@T>c~��\@T!kJ��@T�畢@T�p�@TFl{�e@T!ȸ��1@T*:���q@T8���7�@TG���@TPt���i@Ti�6�@T�q�2�@T�܂��k@T���?�E@T�D�-@T���1:@T�©+��@T�!�߱.@T���"F�@T�<�a@T~~ƶUe@Tg�io\@TXE^�u�@TL���A@TIi��@T@����@T<V��p�@TX�ZNg@TJ:����@T@vY5U:@TI��	@T<C#C�@T"U�i@T"�M@S���ik@S憐�@S� ���@S�Δ��>@Sנw<�@S�t���4@S�l�CV�@S��X'B8@S��@S��y��@S��l3I@S��w�*@S�jLYί@S�;t� �@S���7�@S�՜�2I@S{�����@Sxu0�1@S���J��@Sp~[��@Sp}8w@Sws7�p�@St��gw�@Sh��sE�@S���5`�@S����{T@S{t�;@StQ ��@Ssk�9��@Si2�hFo@S_߀�;'@S^�̔@Sv�4]�,@SrF��̻@Sq��@Su �t��@Sq�C�*(@St���A@Smu�g��@Sh
��@Sv�߁��@Su!�i$G@SvZ�*�2@Sq��3�@Sp�|<��@Sk���@S]0��@SB����@S2��(2@S.���@SV1'U@SZ{ ��@R�>���8@Rכw]�_@R����0@R�T�!W@R���3A�@RI�*� }@R�e�.�@Q⃯Ab'@Q�G�wMV@Q�W @Q�Lhч�@Qx	�?�@Ql;]8c@QVw��'@QB=M��@QJyjq�L@Q�-�-@P�ł@P���P[@P� ��[�@P�ؠ,/@P��
_��@P��t\y@P�$S��@P�(�$��@P�Ofp-�@P�m���#@P����Y}@P��90x?@P��zE��@P�_�}�@P�[��<�@P����O@Q ��:zT@Q5C��!�@Qv.(��c@Q�����_@Q�I��@RQ�L�@RAn'�&8@Rg����@R��4�~@R���x6L@R�Gt��@R��%1d{@R��5�J@T>���@T 	�\��@T
V8���@T(Q/�a�@T6 Nղ@TS���(@TU>�|�@TR�J.&@TopC��C@Tr��%��@ToZ���@T���j��@T�%S��@T�iߔG@T�|�4�S@T���s�/@T�G�6�@T��{�@T�Y��OY@TƂ"^��@T׫�ߎ-@T�ރV��@T�n��k@T�g�S@T�_�6�'@T�1��@T�����@T�Rp�P@T��Ƭ�@T����@T��I�@T��=�~$@T���@U(2�-�@U;�\t!@T����2�@U��ֳ�@T�nd��W@T���F)a@T�k2̈e@T�ՠHln@T�;����@T�K$��l@T��}��S@T�����@T����D�@T�0���@T��da�@T�߉Y�@T�,+�1@TޕT�K@Tާ�߿�@T�1�q��@T��9�I�@T��(���@T���Ȕ�@T��lt@T�ݴ؃�@T���&xG@T�
����@TrF]pS6@TumR��@Tm�w�V@TvHɍ�@TwΜ��@Tn���@Td�JH�@TzC�m @T}��&i�@T}��5�@T|����@T|�-#Y@Tw�nl@Ts�a�_�@Tn�E�"@Ti�Y
��@Tt�t{2�@Th�{X�N@T^���@TU�0|�@TEYex�@TA=sك�@T'w��*�@T%9L��/@T|�@T3GM��@T�R�3�@S���P�^@S�:g9*@S�K�	2@S��*H@S�Z�wWH@S���Y@S�k��EH@S�ឮ@8@S��wbe@S�=N�@S��Sڱ@S�l�@S�,�j�@S�GsW�@S�81���@S�&1���@S깠���@S��|e�@S����A1@S��|N�@S�r�g�@T-&���@T"�?L�@T8�f%a�@T:V���5@T<�+�0_@T?�.$�1@T1}��@T(S@T#�%h �@Tmr��@T��O��@T���OH@T��r�x@T`4|Ir@T�ӊj�@T(c��6Z@TO�K�%@TTP���@TH��<4�@T9~)"��@T;�B0�@T,�=ט@T*���,@T7D�1�@T#���@S�L���@S�k���@S��>@S�$��a@Sޖϧ�S@S�#Gz"�@S���"S@S�rp��@S��F^�7@S��y�.�@S�[���@S�s"���@S�L�j��@S��ۑ7@S�v�ь@Sz�#~X@Sl�RӴ	@S`��S��@S\�>Αz@SR<�2�B@SB�גd:@S7l4E<@S>b��x�@SH�,K�@SK�Su��@SQ6�x&�@SeyrI@Ss���/�@Sz~�w�4@Swt���@Sn����@S`,ԏg�@S[^��#@Sf���P@St�pN��@S��|�h@S������@S�X/�9@S��{+#Z@S�c2+'@S�86��L@S间Q C@S�a8���@S�8s�r�@S��ĥ�@T����%@T�s	~�@T�� (9@U�q�@T�[�+�@U.�Y�@T�&���@T���J�@T��� @T����2@T�(�q�E@T��s˱�@T��A�@U����"@U	V�7X�@T����j�@T�ǙV0@Uj���.@T誨Ǖ�@T��2Q�@T�IGG@Uy���@U����z@U y5Z@U$ExS�@U)���0@U'@;V9@U*](4�@U$�*��<@U0,�n"@U4T5�K@U:�n직@UQ\!�xo@UJ{�K�K@UX鞕�@UW��!d2@UB�ô�@UJ�u��a@U9�z�d@UJS%Qu@UI��A�@UD.grWK@U>%�Ha�@US��&@U>����@UIwѡ�c@UD2�6�@U=*4�@UG_I�s�@UAz�w�@UD�sp�@UF�+�}�@UMC�3��@UH/9,O�@UM#\%�@UG�Qe@UV����@UE��}{@UU�P}�@UE@��B4@UD��߅"@U<��E5@U-�ټe�@U#�c�Q
@U��ɹ@U�y(�@U@��w�@UG�
>;@T���V=�@T�_v;��@T���u�@T��F&+�@T�|x�gZ@Tۿe7�@T�e�@TɌ��,n@T��釶�@T����X@T���C�@T��P�h@T��X�@T�镞�k@T�aJc�@T�mr�@T�ǫ��@T���jV@T�4#�O@T��qZ�@@T�L�kK�@T{l�y��@T����pj@T�լPEg@T��F���@T���z@T�mY���@T���p�@T�.N�r�@T�,j���@T֑�{��@T�$�~-@T�b'�@T�ݙ'л@T�쪟�@T���O\�@TۑGw �@Tͺ�݀�@T��e_}�@T�Ź��,@T��@��(@T��;��@T��9��-@T�۸��@T���5@U�"N#�@T����@U
�r��@T�LffJ>@T��u���@T�<���@T�����@T���%�@TݿA�ǘ@T罄��@T��Ok@U�2B�	@T�	MZf�@T��l��@T�b���@T�Q[:�@T�PyN5�@T�ש�Uy@T�{/m�@T��}r�@T̰�U[�@TƄ�F�@T������@T�$q�z*@T�3��~@T�`�8@T�7��e@T�v��z@TȂs���@T�w%y��@Tǉ6L4�@T�\�t�Y@T�|6�`�@T��X��@T�� ��
@T�˩��n@T栋�pL@T�X���d@T狓�"@Tܸa�@T�ˀ�u@T��"�hW@T�-`J�@T���H@T��	���@T�T�@T�xQ.�@T��@�g@T��Л�@T�ބ�C=@T�!�͋@T�wZ[@U �S�'�@T��V@U XwN(a@T�4�C�@T�q�%@T�y���@TϬ;�i�@T� y��x@T�H�	�@T�2��@T�/����@T���QZ�@T� O:�@T�Ct��@T�`'��@T��(M�
@T�F��ڠ@U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i @U]��i 