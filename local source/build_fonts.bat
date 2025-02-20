@echo off


fontmake -i -a -o ttf -m Listopad.designspace
fontmake -i -a -o otf -m Listopad.designspace
fontmake -a -o variable -m Listopad.designspace
fontmake -i -a -o ttf -m Listopad-Italic.designspace
fontmake -i -o otf -m Listopad-Italic.designspace
fontmake -a -o variable -m Listopad-Italic.designspace


python fix-dsig.py .\autohinted\instance_ttf\Listopad-Thin.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Listopad-ExtraLight.ttf | 
python fix-dsig.py .\autohinted\instance_ttf\Listopad-Light.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Listopad-Regular.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Listopad-Medium.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Listopad-SemiBold.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Listopad-Bold.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Listopad-ExtraBold.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Listopad-ThinItalic.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Listopad-ExtraLightItalic.ttf | 
python fix-dsig.py .\autohinted\instance_ttf\Listopad-LightItalic.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Listopad-Italic.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Listopad-MediumItalic.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Listopad-SemiBoldItalic.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Listopad-BoldItalic.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Listopad-ExtraBoldItalic.ttf |
python fix-dsig.py .\instance_otf\Listopad-Thin.otf |
python fix-dsig.py .\instance_otf\Listopad-ExtraLight.otf |
python fix-dsig.py .\instance_otf\Listopad-Light.otf |
python fix-dsig.py .\instance_otf\Listopad-Regular.otf |
python fix-dsig.py .\instance_otf\Listopad-Medium.otf |
python fix-dsig.py .\instance_otf\Listopad-SemiBold.otf
python fix-dsig.py .\instance_otf\Listopad-Bold.otf |
python fix-dsig.py .\instance_otf\Listopad-ExtraBold.otf |
python fix-dsig.py .\instance_otf\Listopad-ThinItalic.otf |
python fix-dsig.py .\instance_otf\Listopad-ExtraLightItalic.otf |
python fix-dsig.py .\instance_otf\Listopad-LightItalic.otf
python fix-dsig.py .\instance_otf\Listopad-Italic.otf |
python fix-dsig.py .\instance_otf\Listopad-MediumItalic.otf |
python fix-dsig.py .\instance_otf\Listopad-SemiBoldItalic.otf |
python fix-dsig.py .\instance_otf\Listopad-BoldItalic.otf |
python fix-dsig.py .\instance_otf\Listopad-ExtraBoldItalic.otf |

python fix-dsig.py .\variable_ttf\Listopad-VF.ttf | python fix-dsig.py .\variable_ttf\Listopad-Italic-VF.ttf

move .\autohinted\instance_ttf\*.ttf ..\fonts\ttf\
move .\instance_otf\*.otf ..\fonts\otf\
move .\variable_ttf\Listopad-VF.ttf ..\fonts\vf\Listopad[wght].ttf
move .\variable_ttf\Listopad-Italic-VF.ttf ..\fonts\vf\Listopad-Italic[wght].ttf
rmdir .\autohinted\instance_ttf\
rmdir .\autohinted\
rmdir .\instance_otf\
rmdir .\variable_ttf\
python ..\fonts\generate-woff-woff2.py
exit