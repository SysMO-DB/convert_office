module ConvertOffice
  class ConvertOfficeConfig
    @@options = {
      :java_bin => "java",
      :nailgun=> false,
      :soffice_port=>8100 ,
      :verbose=>false,
      :asynchronous=>true
    }

    cattr_accessor :options
  end
end
