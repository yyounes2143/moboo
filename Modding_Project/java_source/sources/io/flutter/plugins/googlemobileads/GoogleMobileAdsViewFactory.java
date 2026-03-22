package io.flutter.plugins.googlemobileads;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.internal.view.SupportMenu;
import io.flutter.Log;
import io.flutter.plugin.common.StandardMessageCodec;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.PlatformViewFactory;
import io.flutter.plugin.platform.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
import java.util.Locale;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final class GoogleMobileAdsViewFactory extends PlatformViewFactory {
    @NonNull
    private final AdInstanceManager manager;

    public GoogleMobileAdsViewFactory(@NonNull AdInstanceManager adInstanceManager) {
        super(StandardMessageCodec.INSTANCE);
        this.manager = adInstanceManager;
    }

    private static PlatformView getErrorView(@NonNull final Context context, int i) {
        Log.e(GoogleMobileAdsViewFactory.class.getSimpleName(), String.format(Locale.getDefault(), "This ad may have not been loaded or has been disposed. Ad with the following id could not be found: %d.", Integer.valueOf(i)));
        return new PlatformView() { // from class: io.flutter.plugins.googlemobileads.GoogleMobileAdsViewFactory.1
            @Override // io.flutter.plugin.platform.PlatformView
            public View getView() {
                return new View(context);
            }

            @Override // io.flutter.plugin.platform.PlatformView
            public /* synthetic */ void onFlutterViewAttached(View view) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, view);
            }

            @Override // io.flutter.plugin.platform.PlatformView
            public /* synthetic */ void onFlutterViewDetached() {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
            }

            @Override // io.flutter.plugin.platform.PlatformView
            public /* synthetic */ void onInputConnectionLocked() {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
            }

            @Override // io.flutter.plugin.platform.PlatformView
            public /* synthetic */ void onInputConnectionUnlocked() {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
            }

            @Override // io.flutter.plugin.platform.PlatformView
            public void dispose() {
            }
        };
    }

    @Override // io.flutter.plugin.platform.PlatformViewFactory
    public PlatformView create(Context context, int i, Object obj) {
        if (obj == null) {
            return getErrorView(context, 0);
        }
        Integer num = (Integer) obj;
        FlutterAd adForId = this.manager.adForId(num.intValue());
        if (adForId != null && adForId.getPlatformView() != null) {
            return adForId.getPlatformView();
        }
        return getErrorView(context, num.intValue());
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class ErrorTextView implements PlatformView {
        private final TextView textView;

        private ErrorTextView(Context context, String str) {
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setText(str);
            textView.setBackgroundColor(SupportMenu.CATEGORY_MASK);
            textView.setTextColor(-256);
        }

        @Override // io.flutter.plugin.platform.PlatformView
        public View getView() {
            return this.textView;
        }

        @Override // io.flutter.plugin.platform.PlatformView
        public /* synthetic */ void onFlutterViewAttached(View view) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, view);
        }

        @Override // io.flutter.plugin.platform.PlatformView
        public /* synthetic */ void onFlutterViewDetached() {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        }

        @Override // io.flutter.plugin.platform.PlatformView
        public /* synthetic */ void onInputConnectionLocked() {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        }

        @Override // io.flutter.plugin.platform.PlatformView
        public /* synthetic */ void onInputConnectionUnlocked() {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        }

        @Override // io.flutter.plugin.platform.PlatformView
        public void dispose() {
        }
    }
}
