package com.didi.drouter.loader.host;

import com.changdu.component.deeplink.base.DeepLinkBase;
import com.changdu.component.deeplink.facebook.FaceBookDeepLinkCheck;
import com.changdu.component.deeplink.google.GoogleDeepLinkCheck;
import com.changdu.component.pay.base.service.IPayServiceGoogle;
import com.changdu.component.pay.google.PayServiceGoogleImpl;
import com.changdu.component.push.base.BasePushInstance;
import com.changdu.component.push.firebase.FirebasePushInstance;
import com.didi.drouter.proxy.com_changdu_component_deeplink_facebook_FaceBookDeepLinkCheck;
import com.didi.drouter.proxy.com_changdu_component_deeplink_google_GoogleDeepLinkCheck;
import com.didi.drouter.proxy.com_changdu_component_pay_google_PayServiceGoogleImpl;
import com.didi.drouter.proxy.com_changdu_component_push_firebase_FirebasePushInstance;
import com.didi.drouter.store.MetaLoader;
import com.didi.drouter.store.RouterMeta;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class ServiceLoader extends MetaLoader {
    @Override // com.didi.drouter.store.MetaLoader
    public void load(Map map) {
        put(DeepLinkBase.class, RouterMeta.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RouterMeta.f5789Wwwwwwwwwww).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FaceBookDeepLinkCheck.class, new com_changdu_component_deeplink_facebook_FaceBookDeepLinkCheck(), "", null, 0, 2), map);
        put(DeepLinkBase.class, RouterMeta.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RouterMeta.f5789Wwwwwwwwwww).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GoogleDeepLinkCheck.class, new com_changdu_component_deeplink_google_GoogleDeepLinkCheck(), "", null, 0, 2), map);
        put(IPayServiceGoogle.class, RouterMeta.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RouterMeta.f5789Wwwwwwwwwww).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(PayServiceGoogleImpl.class, new com_changdu_component_pay_google_PayServiceGoogleImpl(), "", null, 0, 2), map);
        put(BasePushInstance.class, RouterMeta.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RouterMeta.f5789Wwwwwwwwwww).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FirebasePushInstance.class, new com_changdu_component_push_firebase_FirebasePushInstance(), "", null, 0, 2), map);
    }
}
