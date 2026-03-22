package com.mbridge.msdk.video.dynview.ui;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.mbridge.msdk.dycreator.wrapper.DyAdType;
import com.mbridge.msdk.dycreator.wrapper.DyOption;
import com.mbridge.msdk.dycreator.wrapper.DynamicViewCreator;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.video.dynview.listener.e;
import com.mbridge.msdk.video.dynview.listener.h;
import com.mbridge.msdk.video.dynview.wrapper.c;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f9789a = false;

    public a(Context context, List<CampaignEx> list, h hVar, Map<String, Object> map) {
        a(new c().a(context, list), hVar, map);
    }

    private void a(com.mbridge.msdk.video.dynview.c cVar, h hVar, Map<String, Object> map) {
        View inflate;
        if (hVar == null) {
            return;
        }
        if (cVar == null) {
            hVar.a(com.mbridge.msdk.video.dynview.error.a.NOT_FOUND_VIEWOPTION);
        } else if (cVar.c() == null) {
            hVar.a(com.mbridge.msdk.video.dynview.error.a.NOT_FOUND_CONTEXT);
        } else if (TextUtils.isEmpty(cVar.f())) {
            hVar.a(com.mbridge.msdk.video.dynview.error.a.NOT_FOUND_LAYOUTNAME);
        } else {
            try {
                if (cVar.d() != null) {
                    inflate = DynamicViewCreator.getInstance().createDynamicView(new DyOption.Builder().campaignEx((cVar.b() == null || cVar.b().size() <= 0) ? null : cVar.b().get(0)).fileDirs(cVar.d()).dyAdType(DyAdType.REWARD).orientation(cVar.h()).templateType(cVar.g()).build());
                    if (inflate != null) {
                        f9789a = true;
                    } else {
                        f9789a = false;
                        inflate = LayoutInflater.from(cVar.c()).inflate(g0.a(cVar.c(), cVar.f(), "layout"), (ViewGroup) null);
                    }
                } else {
                    f9789a = false;
                    inflate = LayoutInflater.from(cVar.c()).inflate(g0.a(cVar.c(), cVar.f(), "layout"), (ViewGroup) null);
                }
                if (map == null) {
                    map = new HashMap<>();
                }
                map.put("is_dy_success", Boolean.valueOf(f9789a));
                com.mbridge.msdk.video.dynview.energize.b.a().a(inflate, cVar, map);
                com.mbridge.msdk.video.dynview.energize.a.a().a(inflate, cVar, map, new C0177a(hVar));
            } catch (Exception e) {
                o0.b("MBridgeUI", e.getMessage());
                hVar.a(com.mbridge.msdk.video.dynview.error.a.VIEW_CREATE_ERROR);
            }
        }
    }

    public a(com.mbridge.msdk.video.dynview.c cVar, h hVar, Map<String, Object> map) {
        a(cVar, hVar, map);
    }

    /* compiled from: Proguard */
    /* renamed from: com.mbridge.msdk.video.dynview.ui.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public class C0177a implements e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ h f9790a;

        public C0177a(h hVar) {
            this.f9790a = hVar;
        }

        @Override // com.mbridge.msdk.video.dynview.listener.e
        public void a(View view, List<View> list) {
            com.mbridge.msdk.video.dynview.a aVar = new com.mbridge.msdk.video.dynview.a();
            aVar.a(view);
            aVar.a(list);
            aVar.a(a.f9789a);
            this.f9790a.a(aVar);
        }

        @Override // com.mbridge.msdk.video.dynview.listener.e
        public void a(com.mbridge.msdk.video.dynview.error.a aVar) {
            this.f9790a.a(aVar);
        }
    }
}
