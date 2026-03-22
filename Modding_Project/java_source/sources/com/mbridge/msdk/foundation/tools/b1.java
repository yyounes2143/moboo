package com.mbridge.msdk.foundation.tools;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class b1 {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f9091a = false;

    private static int a(View view, ViewGroup viewGroup) {
        int i = 0;
        while (i < viewGroup.getChildCount() && viewGroup.getChildAt(i) != view) {
            i++;
        }
        return i;
    }

    private static boolean a(View view, View view2, int i) {
        Rect rect = new Rect();
        view.getGlobalVisibleRect(rect);
        Rect rect2 = new Rect();
        view2.getGlobalVisibleRect(rect2);
        if (Rect.intersects(rect, rect2)) {
            int min = Math.min(rect.right, rect2.right) - Math.max(rect.left, rect2.left);
            int min2 = Math.min(rect.bottom, rect2.bottom) - Math.max(rect.top, rect2.top);
            if ((i != 1 && min * min2 * 2 >= view.getMeasuredHeight() * view.getMeasuredWidth()) || (i == 1 && min * min2 >= view.getMeasuredHeight() * view.getMeasuredWidth())) {
                return true;
            }
        }
        return false;
    }

    private static boolean a(View view, ViewGroup viewGroup, int i) {
        for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
            o0.b("ViewUtils", "View Judge : Start Loop");
            View childAt = viewGroup.getChildAt(i2);
            if (childAt.getVisibility() == 0 && a(view, childAt, i)) {
                if ((childAt instanceof WebView) && childAt.getVisibility() == 0) {
                    o0.b("ViewUtils", "View Judge : View Covered by WebView.");
                    f9091a = true;
                }
                if (a(childAt)) {
                    o0.b("ViewUtils", "View Judge : View Covered and Cover ViewGroup is not transparent.");
                    f9091a = true;
                }
                if (f9091a) {
                    break;
                } else if (childAt instanceof ViewGroup) {
                    a(view, (ViewGroup) childAt, i);
                }
            }
        }
        return f9091a;
    }

    public static boolean a(View view, int i) {
        if (view == null) {
            return true;
        }
        if (view.getVisibility() != 0) {
            o0.b("ViewUtils", "Banner Judge : Banner's not visible.");
            return true;
        }
        if (view.getAlpha() < 0.5f) {
            o0.b("ViewUtils", "Banner Judge : Banner's alpha must set up 50%.");
            return true;
        } else if (view.getParent() != null && (view.getParent() instanceof ViewGroup) && ((ViewGroup) view.getParent()).getVisibility() != 0) {
            o0.b("ViewUtils", "View Judge : View's container is not visible.");
            return true;
        } else {
            Rect rect = new Rect();
            boolean globalVisibleRect = view.getGlobalVisibleRect(rect);
            boolean z = ((float) ((rect.bottom - rect.top) * (rect.right - rect.left))) > ((float) (view.getMeasuredHeight() * view.getMeasuredWidth())) * (i == 1 ? 0.0f : 0.5f);
            boolean z2 = globalVisibleRect && z;
            o0.b("ViewUtils", "View Judge : partVisible is " + globalVisibleRect + " halfPercentVisible is " + z);
            StringBuilder sb = new StringBuilder();
            sb.append("View Judge : totalViewVisible is ");
            sb.append(z2);
            o0.b("ViewUtils", sb.toString());
            if (z2) {
                ViewGroup viewGroup = view;
                while (viewGroup.getParent() instanceof ViewGroup) {
                    ViewGroup viewGroup2 = (ViewGroup) viewGroup.getParent();
                    for (int a2 = a(viewGroup, viewGroup2) + 1; a2 < viewGroup2.getChildCount(); a2++) {
                        View childAt = viewGroup2.getChildAt(a2);
                        if (childAt.getVisibility() == 0 && a(view, childAt, i)) {
                            if (childAt instanceof ViewGroup) {
                                ViewGroup viewGroup3 = (ViewGroup) childAt;
                                if (viewGroup3.getChildCount() > 0) {
                                    o0.b("ViewUtils", "View Judge : Covered by ViewGroup.");
                                    boolean a3 = a(view, viewGroup3, i);
                                    f9091a = false;
                                    if (a3) {
                                        return true;
                                    }
                                }
                            }
                            if (a(childAt)) {
                                o0.b("ViewUtils", "View Judge : View Covered and Cover View is not transparent.");
                                return true;
                            }
                        }
                    }
                    viewGroup = viewGroup2;
                }
                o0.b("ViewUtils", "View Judge : Well done, View is not covered.");
                return false;
            }
            return true;
        }
    }

    public static boolean a(View view) {
        return !(view != null && (view.getTag() instanceof String) && "mb_wm".equals(view.getTag())) && view.getBackground() != null && view.getBackground().getAlpha() > 127 && view.getAlpha() > 0.5f;
    }
}
