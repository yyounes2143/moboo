package io.flutter.embedding.android;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.view.Window;
import android.view.WindowInsets;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import io.flutter.embedding.engine.renderer.FlutterRenderer;
import io.flutter.util.ViewUtils;
import java.util.Collections;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class FlutterViewDelegate {
    @RequiresApi(api = 35)
    public List<Rect> getCaptionBarInsets(Context context) {
        int captionBar;
        List<Rect> boundingRects;
        WindowInsets windowInsets = getWindowInsets(context);
        if (windowInsets != null) {
            captionBar = WindowInsets.Type.captionBar();
            boundingRects = windowInsets.getBoundingRects(captionBar);
            return boundingRects;
        }
        return Collections.EMPTY_LIST;
    }

    @RequiresApi(api = 23)
    @VisibleForTesting
    public WindowInsets getWindowInsets(Context context) {
        Window window;
        Activity activity = ViewUtils.getActivity(context);
        if (activity == null || (window = activity.getWindow()) == null) {
            return null;
        }
        return window.getDecorView().getRootWindowInsets();
    }

    @RequiresApi(api = 35)
    public void growViewportMetricsToCaptionBar(Context context, FlutterRenderer.ViewportMetrics viewportMetrics) {
        List<Rect> captionBarInsets = getCaptionBarInsets(context);
        int i = viewportMetrics.viewPaddingTop;
        for (Rect rect : captionBarInsets) {
            i = Math.max(i, rect.bottom);
        }
        viewportMetrics.viewPaddingTop = i;
    }
}
