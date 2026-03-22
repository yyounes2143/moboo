package com.didi.drouter.router;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import androidx.activity.result.ActivityResultLauncher;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import com.didi.drouter.router.RouterCallback;
import com.didi.drouter.store.RouterMeta;
import com.didi.drouter.utils.RouterExecutor;
import com.didi.drouter.utils.RouterLogger;
import com.mbridge.msdk.foundation.entity.CampaignEx;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
class RouterDispatcher {
    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Request request, RouterMeta routerMeta, Result result) {
        Object obj;
        result.f5739Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = routerMeta.Wwwwwwwwwwwwwwwwwwww();
        if (request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().getBoolean("router_start_view_new_instance", true)) {
            if (routerMeta.Wwwwwwwwwwwwwwwwwww() != null) {
                obj = routerMeta.Wwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(request.Wwwwwwwwwwwwwwwwwwwwwwwwwww());
            } else {
                obj = null;
            }
            if (obj instanceof View) {
                View view = (View) obj;
                result.f5736Wwwwwwwwwwwwwwwwwwwwwwwwwww = view;
                view.setTag(request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            }
        }
        ResultAgent.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(request, CampaignEx.JSON_NATIVE_VIDEO_COMPLETE);
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(final Request request, final RouterMeta routerMeta, final Result result, final RouterCallback routerCallback) {
        IRouterHandler Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = routerMeta.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            if (routerMeta.Wwwwwwwwwwwwwwwwwww() != null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = (IRouterHandler) routerMeta.Wwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
            }
        }
        final IRouterHandler iRouterHandler = Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
        if (iRouterHandler != null) {
            RouterExecutor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(routerMeta.Wwwwwwwwwwwwwww(), new Runnable() { // from class: com.didi.drouter.router.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    RouterDispatcher.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RouterMeta.this, request, iRouterHandler, result, routerCallback);
                }
            });
        } else {
            ResultAgent.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(request, "error");
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Request request, RouterMeta routerMeta, Result result) {
        result.f5739Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = routerMeta.Wwwwwwwwwwwwwwwwwwww();
        if (request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().getBoolean("router_start_fragment_new_instance", true)) {
            Object obj = null;
            if (routerMeta.Wwwwwwwwwwwwwwwwwww() != null) {
                obj = routerMeta.Wwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
            }
            if (obj instanceof Fragment) {
                Fragment fragment = (Fragment) obj;
                result.f5737Wwwwwwwwwwwwwwwwwwwwwwwwwwww = fragment;
                fragment.setArguments(request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            }
        }
        ResultAgent.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(request, CampaignEx.JSON_NATIVE_VIDEO_COMPLETE);
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Request request, RouterMeta routerMeta, Result result, RouterCallback routerCallback) {
        int i;
        Context Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = request.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
        Intent Wwwwwwwwwwwwwwwwwwwwwwww2 = routerMeta.Wwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            Wwwwwwwwwwwwwwwwwwwwwwww2 = new Intent();
            Class<?> Wwwwwwwwwwwwwwwwwwww2 = routerMeta.Wwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwww2 != null) {
                Wwwwwwwwwwwwwwwwwwwwwwww2.setClass(Wwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwww2);
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwww2.setClassName(Wwwwwwwwwwwwwwwwwwwwwwwwwww2, routerMeta.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            }
        }
        if (request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().containsKey("router_start_activity_flags")) {
            Wwwwwwwwwwwwwwwwwwwwwwww2.setFlags(request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("router_start_activity_flags"));
        }
        boolean z = Wwwwwwwwwwwwwwwwwwwwwwwwwww2 instanceof Activity;
        if (!z) {
            Wwwwwwwwwwwwwwwwwwwwwwww2.addFlags(268435456);
        }
        Wwwwwwwwwwwwwwwwwwwwwwww2.putExtra("router_start_activity_request_number", request.Wwwwwwwwwwwwwwwwwwwwwwwwww());
        Wwwwwwwwwwwwwwwwwwwwwwww2.putExtras(request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        boolean containsKey = request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().containsKey("router_start_activity_request_code");
        if (containsKey) {
            i = request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("router_start_activity_request_code");
        } else {
            i = 1024;
        }
        ActivityResultLauncher<Intent> activityResultLauncher = request.f5724Wwwwwwwwwwwwwwwwwwwwww;
        if (activityResultLauncher != null) {
            activityResultLauncher.launch(Wwwwwwwwwwwwwwwwwwwwwwww2);
        } else if (z && (routerCallback instanceof RouterCallback.ActivityCallback)) {
            ActivityCompat2.Wwwwwwwwwwwwwwwwwwwwwwwwwww((Activity) Wwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwww2, i, (RouterCallback.ActivityCallback) routerCallback);
        } else if (z && containsKey) {
            ActivityCompat.startActivityForResult((Activity) Wwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwww2, i, Wwwwwwwwwwwwwwwwwwwwwwww2.getBundleExtra("router_start_activity_options"));
        } else {
            ContextCompat.startActivity(Wwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwww2.getBundleExtra("router_start_activity_options"));
        }
        int[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("router_start_activity_animation");
        if (z && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.length == 2) {
            ((Activity) Wwwwwwwwwwwwwwwwwwwwwwwwwww2).overridePendingTransition(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2[0], Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2[1]);
        }
        result.f5738Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
        if (routerMeta.Wwwwwwwww() && routerCallback != null) {
            RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwww("request \"%s\" will be hold", request.Wwwwwwwwwwwwwwwwwwwwwwwwww());
            Monitor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(request, result);
            return;
        }
        ResultAgent.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(request, CampaignEx.JSON_NATIVE_VIDEO_COMPLETE);
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Request request, RouterMeta routerMeta, Result result, RouterCallback routerCallback) {
        RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("request \"%s\", class \"%s\" start execute", request.Wwwwwwwwwwwwwwwwwwwwwwwwww(), routerMeta.Wwwwwwwwwwwwwwww());
        int Wwwwwwwwwwwwwwwwww2 = routerMeta.Wwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwww2 != 1) {
            if (Wwwwwwwwwwwwwwwwww2 != 2) {
                if (Wwwwwwwwwwwwwwwwww2 != 3) {
                    if (Wwwwwwwwwwwwwwwwww2 != 4) {
                        return;
                    }
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(request, routerMeta, result, routerCallback);
                    return;
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(request, routerMeta, result);
                return;
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(request, routerMeta, result);
            return;
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(request, routerMeta, result, routerCallback);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RouterMeta routerMeta, Request request, IRouterHandler iRouterHandler, Result result, RouterCallback routerCallback) {
        if (routerMeta.Wwwwwwwww()) {
            RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwww("request \"%s\" will hold", request.Wwwwwwwwwwwwwwwwwwwwwwwwww());
        }
        iRouterHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(request, result);
        if (routerMeta.Wwwwwwwww() && routerCallback != null) {
            Monitor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(request, result);
        } else {
            ResultAgent.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(request, CampaignEx.JSON_NATIVE_VIDEO_COMPLETE);
        }
    }
}
