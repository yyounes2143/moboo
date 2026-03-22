package io.flutter.util;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.window.layout.WindowMetrics;
import androidx.window.layout.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
import io.flutter.util.ViewUtils;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class ViewUtils {

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface DisplayUpdater {
        void updateDisplayMetrics(float f, float f2, float f3);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface ViewVisitor {
        boolean run(@NonNull View view);
    }

    public static /* synthetic */ boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Class[] clsArr, View view) {
        for (Class cls : clsArr) {
            if (cls.isInstance(view)) {
                return true;
            }
        }
        return false;
    }

    public static void calculateMaximumDisplayMetrics(@Nullable Context context, @NonNull DisplayUpdater displayUpdater) {
        Activity activity = getActivity(context);
        if (activity != null) {
            WindowMetrics computeMaximumWindowMetrics = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().computeMaximumWindowMetrics(activity);
            displayUpdater.updateDisplayMetrics(computeMaximumWindowMetrics.getBounds().width(), computeMaximumWindowMetrics.getBounds().height(), context.getResources().getDisplayMetrics().density);
        }
    }

    public static boolean childHasFocus(@Nullable View view) {
        return traverseHierarchy(view, new ViewVisitor() { // from class: Kkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // io.flutter.util.ViewUtils.ViewVisitor
            public final boolean run(View view2) {
                boolean hasFocus;
                hasFocus = view2.hasFocus();
                return hasFocus;
            }
        });
    }

    @Nullable
    public static Activity getActivity(@Nullable Context context) {
        if (context == null) {
            return null;
        }
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (!(context instanceof ContextWrapper)) {
            return null;
        }
        return getActivity(((ContextWrapper) context).getBaseContext());
    }

    public static boolean hasChildViewOfType(@Nullable View view, final Class<? extends View>[] clsArr) {
        return traverseHierarchy(view, new ViewVisitor() { // from class: Kkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // io.flutter.util.ViewUtils.ViewVisitor
            public final boolean run(View view2) {
                return ViewUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(clsArr, view2);
            }
        });
    }

    public static boolean traverseHierarchy(@Nullable View view, @NonNull ViewVisitor viewVisitor) {
        if (view == null) {
            return false;
        }
        if (viewVisitor.run(view)) {
            return true;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                if (traverseHierarchy(viewGroup.getChildAt(i), viewVisitor)) {
                    return true;
                }
            }
        }
        return false;
    }
}
