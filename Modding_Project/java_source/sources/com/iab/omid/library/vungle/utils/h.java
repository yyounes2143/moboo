package com.iab.omid.library.vungle.utils;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build;
import android.view.View;
import android.view.ViewParent;
/* loaded from: classes5.dex */
public final class h {
    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww(View view) {
        if (!view.isAttachedToWindow() || !view.isShown()) {
            return false;
        }
        while (view != null) {
            if (view.getAlpha() == 0.0f) {
                return false;
            }
            view = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view);
        }
        return true;
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(View view) {
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view) == null) {
            return true;
        }
        return false;
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(View view) {
        Activity Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        boolean isInPictureInPictureMode;
        if (Build.VERSION.SDK_INT >= 24 && (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view)) != null) {
            isInPictureInPictureMode = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.isInPictureInPictureMode();
            return isInPictureInPictureMode;
        }
        return false;
    }

    public static float Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(View view) {
        return view.getZ();
    }

    public static View Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(View view) {
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            return (View) parent;
        }
        return null;
    }

    public static Activity Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(View view) {
        for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
        }
        return null;
    }

    public static String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(View view) {
        if (!view.isAttachedToWindow()) {
            return "notAttached";
        }
        int visibility = view.getVisibility();
        if (visibility == 8) {
            return "viewGone";
        }
        if (visibility == 4) {
            return "viewInvisible";
        }
        if (visibility != 0) {
            return "viewNotVisible";
        }
        if (view.getAlpha() == 0.0f) {
            return "viewAlphaZero";
        }
        return null;
    }
}
