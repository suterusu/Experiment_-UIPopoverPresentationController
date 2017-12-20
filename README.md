# Experiment_-UIPopoverPresentationController

追加の調整は
UIPopoverPresentationController  
.popoverにするとVCノpresantationControllerga UIPopoverPresentationController煮なる  
(UIPopoverPresentationController)  
barButtonItem  
インターフェース上にある　ポップオーバーと関連づけられるbarButton  

sourceView, sourceRect  
viewとその座標上のCGRectでこれもポップオーバーと関連づけられる  

permittedArrowDirections  
矢印の向きanyでおk  

preferredContentSize.  
最終的なサイズ、表示中も変更可能で、pushすると変わる(高さは変わら無いっぽいbug?)  

UIPopoverPresentationControllerはUIContentContainerで  
presentation controlerは　presented VCの親とし働き  
この場合、presentedVCの望みをきき、それを実現させる  

また、背景色もこいつが決める　arrow、navigationBar含め  
