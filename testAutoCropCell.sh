fileIn=/archive/bioinformatics/Danuser_lab/zebrafish/raw/Dagan/Dagan_Voodoo/20191004_tc32_4300mosaicfixed_org/Dagan/tc324300/FtractRgfpG/191004/Cell1/1_CH01_000000.tif
fileOut=/tmp/crop_out.tif

# gmic $fileIn -a z -resize 25%,25%,25% -o /tmp/resized.tif

./autoCropCell.sh /tmp/resized.tif $fileOut

parallel gmic {} -a z -orthoMIP ::: ls /tmp/crop*



