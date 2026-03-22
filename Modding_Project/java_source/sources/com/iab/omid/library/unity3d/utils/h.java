package com.iab.omid.library.unity3d.utils;

import android.view.View;
import android.view.ViewParent;
/* loaded from: classes5.dex */
public final class h {
    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(View view) {
        if (!view.isAttachedToWindow() || !view.isShown()) {
            return false;
        }
        while (view != null) {
            if (view.getAlpha() == 0.0f) {
                return false;
            }
            view = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view);
        }
        return true;
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(View view) {
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view) == null) {
            return true;
        }
        return false;
    }

    public static float Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(View view) {
        return view.getZ();
    }

    public static View Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(View view) {
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            return (View) parent;
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
