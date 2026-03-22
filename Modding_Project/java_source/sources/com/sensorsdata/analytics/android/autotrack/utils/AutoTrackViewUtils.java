package com.sensorsdata.analytics.android.autotrack.utils;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.google.android.material.tabs.TabLayout;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.util.ReflectUtil;
import com.sensorsdata.analytics.android.sdk.util.SAViewUtils;
import java.lang.ref.WeakReference;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class AutoTrackViewUtils {
    private static View findTabLayout(View view) {
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            int i = 0;
            while (true) {
                ViewGroup viewGroup = (ViewGroup) parent;
                if (i >= viewGroup.getChildCount()) {
                    break;
                }
                View childAt = viewGroup.getChildAt(i);
                if ("ViewPager".equals(childAt.getClass().getSimpleName())) {
                    View findTabLayoutView = findTabLayoutView(childAt);
                    if (findTabLayoutView != null) {
                        return findTabLayoutView;
                    }
                } else {
                    i++;
                }
            }
        }
        if (parent.getParent() == null) {
            return null;
        }
        return findTabLayout((View) parent);
    }

    private static View findTabLayoutView(View view) {
        List list = (List) ReflectUtil.findField(view.getClass(), view, "mOnPageChangeListeners");
        if (list != null && list.size() > 0) {
            for (Object obj : list) {
                WeakReference weakReference = (WeakReference) ReflectUtil.findField(obj.getClass(), obj, "tabLayoutRef");
                if (weakReference != null && weakReference.get() != null) {
                    return (View) weakReference.get();
                }
            }
            return null;
        }
        return null;
    }

    private static View getAndroidXTabLayout(Object obj) {
        try {
            int i = TabLayout.MODE_SCROLLABLE;
            if (SAViewUtils.isViewIgnored(TabLayout.class) || !ReflectUtil.isInstance(obj, "com.google.android.material.tabs.TabLayout$Tab")) {
                return null;
            }
            View view = (View) ReflectUtil.findField(new String[]{"com.google.android.material.tabs.TabLayout$Tab"}, obj, "parent");
            if (view != null) {
                try {
                    if (ReflectUtil.isInstance(view, "com.google.android.material.tabs.TabLayout")) {
                        if (SAViewUtils.isViewIgnored(view)) {
                            return null;
                        }
                    }
                } catch (Exception unused) {
                    return view;
                }
            }
            return view;
        } catch (Exception unused2) {
            return null;
        }
    }

    private static View getSupportTabLayout(Object obj) {
        try {
            int i = TabLayout.MODE_SCROLLABLE;
            if (SAViewUtils.isViewIgnored(TabLayout.class) || !ReflectUtil.isInstance(obj, "com.google.android.material.tabs.TabLayout$Tab")) {
                return null;
            }
            View view = (View) ReflectUtil.findField(new String[]{"com.google.android.material.tabs.TabLayout$Tab"}, obj, "mParent", "parent");
            if (view != null) {
                try {
                    if (ReflectUtil.isInstance(view, "com.google.android.material.tabs.TabLayout")) {
                        if (SAViewUtils.isViewIgnored(view)) {
                            return null;
                        }
                    }
                } catch (Exception unused) {
                    return view;
                }
            }
            return view;
        } catch (Exception unused2) {
            return null;
        }
    }

    public static View getTabLayout(Object obj) {
        View androidXTabLayout = getAndroidXTabLayout(obj);
        if (androidXTabLayout == null) {
            return getSupportTabLayout(obj);
        }
        return androidXTabLayout;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.sensorsdata.analytics.android.autotrack.core.beans.ViewContext getTabLayoutContext(java.lang.Object r6, android.view.View r7) {
        /*
            r0 = 0
            boolean r1 = r6 instanceof android.content.Context     // Catch: java.lang.Exception -> Ld
            if (r1 == 0) goto Lf
            android.content.Context r6 = (android.content.Context) r6     // Catch: java.lang.Exception -> Ld
            android.app.Activity r6 = com.sensorsdata.analytics.android.sdk.util.SAViewUtils.getActivityOfView(r6, r0)     // Catch: java.lang.Exception -> Ld
        Lb:
            r4 = r0
            goto L49
        Ld:
            r6 = move-exception
            goto L69
        Lf:
            java.lang.Class r1 = r6.getClass()     // Catch: java.lang.Exception -> Ld
            java.lang.reflect.Field[] r1 = r1.getDeclaredFields()     // Catch: java.lang.Exception -> Ld
            int r2 = r1.length     // Catch: java.lang.Exception -> Ld
            r3 = 0
        L19:
            if (r3 >= r2) goto L47
            r4 = r1[r3]     // Catch: java.lang.Exception -> Ld
            r5 = 1
            r4.setAccessible(r5)     // Catch: java.lang.Exception -> Ld
            java.lang.Object r4 = r4.get(r6)     // Catch: java.lang.Exception -> Ld
            boolean r5 = r4 instanceof android.app.Activity     // Catch: java.lang.Exception -> Ld
            if (r5 == 0) goto L2d
            r6 = r4
            android.app.Activity r6 = (android.app.Activity) r6     // Catch: java.lang.Exception -> Ld
            goto Lb
        L2d:
            boolean r5 = com.sensorsdata.analytics.android.sdk.util.SAFragmentUtils.isFragment(r4)     // Catch: java.lang.Exception -> Ld
            if (r5 == 0) goto L35
            r6 = r0
            goto L49
        L35:
            boolean r5 = r4 instanceof android.view.View     // Catch: java.lang.Exception -> Ld
            if (r5 == 0) goto L44
            android.view.View r4 = (android.view.View) r4     // Catch: java.lang.Exception -> Ld
            android.content.Context r6 = r4.getContext()     // Catch: java.lang.Exception -> Ld
            android.app.Activity r6 = com.sensorsdata.analytics.android.sdk.util.SAViewUtils.getActivityOfView(r6, r0)     // Catch: java.lang.Exception -> Ld
            goto Lb
        L44:
            int r3 = r3 + 1
            goto L19
        L47:
            r6 = r0
            r4 = r6
        L49:
            if (r7 == 0) goto L5b
            if (r6 != 0) goto L55
            android.content.Context r6 = r7.getContext()     // Catch: java.lang.Exception -> Ld
            android.app.Activity r6 = com.sensorsdata.analytics.android.sdk.util.SAViewUtils.getActivityOfView(r6, r0)     // Catch: java.lang.Exception -> Ld
        L55:
            if (r4 != 0) goto L5b
            java.lang.Object r4 = com.sensorsdata.analytics.android.sdk.util.SAFragmentUtils.getFragmentFromView(r7, r6)     // Catch: java.lang.Exception -> Ld
        L5b:
            if (r6 != 0) goto L63
            if (r4 == 0) goto L63
            android.app.Activity r6 = com.sensorsdata.analytics.android.sdk.util.SAFragmentUtils.getActivityFromFragment(r4)     // Catch: java.lang.Exception -> Ld
        L63:
            com.sensorsdata.analytics.android.autotrack.core.beans.ViewContext r1 = new com.sensorsdata.analytics.android.autotrack.core.beans.ViewContext     // Catch: java.lang.Exception -> Ld
            r1.<init>(r6, r4, r7)     // Catch: java.lang.Exception -> Ld
            return r1
        L69:
            com.sensorsdata.analytics.android.sdk.SALog.printStackTrace(r6)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sensorsdata.analytics.android.autotrack.utils.AutoTrackViewUtils.getTabLayoutContext(java.lang.Object, android.view.View):com.sensorsdata.analytics.android.autotrack.core.beans.ViewContext");
    }

    public static String getTabLayoutText(View view, Object obj) {
        Object callMethod;
        String str = null;
        if (view != null) {
            try {
                if (view instanceof ViewGroup) {
                    str = SAViewUtils.traverseView(new StringBuilder(), (ViewGroup) view);
                    if (!TextUtils.isEmpty(str)) {
                        str = str.substring(0, str.length() - 1);
                    }
                } else {
                    str = SAViewUtils.getViewContent(view);
                }
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
        if (TextUtils.isEmpty(str) && (callMethod = ReflectUtil.callMethod(obj, "getText", new Object[0])) != null) {
            return callMethod.toString();
        }
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0025, code lost:
        if (com.sensorsdata.analytics.android.sdk.util.SAViewUtils.isViewIgnored(r1) == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0027, code lost:
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.view.View getTabView(java.lang.String r4) {
        /*
            android.view.View r4 = com.sensorsdata.analytics.android.sdk.util.WindowHelper.getClickView(r4)
            if (r4 == 0) goto L28
            r0 = 0
            r2 = r4
            r1 = r0
        L9:
            if (r1 != 0) goto L1f
            if (r2 == 0) goto L1f
            android.view.ViewParent r3 = r2.getParent()
            if (r3 == 0) goto L1f
            android.view.ViewParent r2 = r2.getParent()
            android.view.View r2 = (android.view.View) r2
            boolean r3 = r2 instanceof android.widget.TabHost
            if (r3 == 0) goto L9
            r1 = r2
            goto L9
        L1f:
            if (r1 == 0) goto L28
            boolean r1 = com.sensorsdata.analytics.android.sdk.util.SAViewUtils.isViewIgnored(r1)
            if (r1 == 0) goto L28
            return r0
        L28:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sensorsdata.analytics.android.autotrack.utils.AutoTrackViewUtils.getTabView(java.lang.String):android.view.View");
    }

    public static boolean isBindViewPager(View view) {
        if (view == null) {
            return false;
        }
        if (((View) ReflectUtil.findField(view.getClass(), view, "viewPager")) == null && view != findTabLayout(view)) {
            return false;
        }
        return true;
    }
}
