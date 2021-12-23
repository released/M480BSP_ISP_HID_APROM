
# input file
obj\APROM_application.bin -binary	

# just keep code area for CRC calculation
# reserve field , from xxxx , to xxxx
# target size : 0x80000 , 0x80000 - 0x1000*2 for boot loader code size (4K page) - 0x1000 for data flash size
-crop 0x0000 0x7C000

# fill code area with 0xFF
# fill 0xFF into the field , from xxxx , to xxxx				
-fill 0xFF 0x0000 0x7C000					

# select checksum algorithm
-crc32-l-e 0x7CFFC			

# keep the CRC itself
-crop 0x7CFFC 0x7D000

# output hex display											
#-Output 
#- 
#-HEX_Dump

# input file
obj\APROM_application.bin -binary		

# just keep code area for CRC calculation
#-crop 0x00000 0x7CFFC	

# fill code area with 0xFF	
-fill 0xFF 0x0000 0x7CFFC

# produce the output file
-Output
obj\APROM_application.bin -binary

