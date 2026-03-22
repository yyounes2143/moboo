package io.flutter.plugins.webviewflutter;

import android.view.View;
import androidx.annotation.NonNull;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class ViewProxyApi extends PigeonApiView {

    /* compiled from: Proguard */
    /* renamed from: io.flutter.plugins.webviewflutter.ViewProxyApi$1  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$flutter$plugins$webviewflutter$OverScrollMode;

        static {
            int[] iArr = new int[OverScrollMode.values().length];
            $SwitchMap$io$flutter$plugins$webviewflutter$OverScrollMode = iArr;
            try {
                iArr[OverScrollMode.ALWAYS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$flutter$plugins$webviewflutter$OverScrollMode[OverScrollMode.IF_CONTENT_SCROLLS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$flutter$plugins$webviewflutter$OverScrollMode[OverScrollMode.NEVER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$io$flutter$plugins$webviewflutter$OverScrollMode[OverScrollMode.UNKNOWN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public ViewProxyApi(@NonNull ProxyApiRegistrar proxyApiRegistrar) {
        super(proxyApiRegistrar);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiView
    @NonNull
    public WebViewPoint getScrollPosition(@NonNull View view) {
        return new WebViewPoint(view.getScrollX(), view.getScrollY());
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiView
    public void scrollBy(@NonNull View view, long j, long j2) {
        view.scrollBy((int) j, (int) j2);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiView
    public void scrollTo(@NonNull View view, long j, long j2) {
        view.scrollTo((int) j, (int) j2);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiView
    public void setHorizontalScrollBarEnabled(@NonNull View view, boolean z) {
        view.setHorizontalScrollBarEnabled(z);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiView
    public void setOverScrollMode(@NonNull View view, @NonNull OverScrollMode overScrollMode) {
        int i = AnonymousClass1.$SwitchMap$io$flutter$plugins$webviewflutter$OverScrollMode[overScrollMode.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        return;
                    }
                    throw getPigeonRegistrar().createUnknownEnumException(OverScrollMode.UNKNOWN);
                }
                view.setOverScrollMode(2);
                return;
            }
            view.setOverScrollMode(1);
            return;
        }
        view.setOverScrollMode(0);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiView
    public void setVerticalScrollBarEnabled(@NonNull View view, boolean z) {
        view.setVerticalScrollBarEnabled(z);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiView
    @NonNull
    public ProxyApiRegistrar getPigeonRegistrar() {
        return (ProxyApiRegistrar) super.getPigeonRegistrar();
    }
}
