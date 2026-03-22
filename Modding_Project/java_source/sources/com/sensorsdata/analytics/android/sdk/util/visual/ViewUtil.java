package com.sensorsdata.analytics.android.sdk.util.visual;

import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebView;
import android.widget.AdapterView;
import android.widget.ExpandableListView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.timepicker.TimeModel;
import com.sensorsdata.analytics.android.sdk.util.AppStateTools;
import com.sensorsdata.analytics.android.sdk.util.ReflectUtil;
import com.sensorsdata.analytics.android.sdk.util.SAFragmentUtils;
import com.sensorsdata.analytics.android.sdk.util.SAViewUtils;
import com.sensorsdata.analytics.android.sdk.util.SnapCache;
import com.sensorsdata.analytics.android.sdk.util.TimeUtils;
import com.sensorsdata.analytics.android.sdk.util.WindowHelper;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class ViewUtil {
    private static boolean sHaveCustomRecyclerView = false;
    private static Class<?> sRecyclerViewClass;
    private static Method sRecyclerViewGetChildAdapterPositionMethod;
    private static final boolean sHaveRecyclerView = haveRecyclerView();
    private static final SparseArray<String> sViewCache = new SparseArray<>();

    private static void checkAndInvalidate(View view) {
        if (view.getLayerType() != 0) {
            view.invalidate();
        }
    }

    private static void checkCustomRecyclerView(Class<?> cls, String str) {
        if (!sHaveRecyclerView && !sHaveCustomRecyclerView && str != null && str.contains("RecyclerView")) {
            try {
                if (findRecyclerInSuper(cls) != null && sRecyclerViewGetChildAdapterPositionMethod != null) {
                    sRecyclerViewClass = cls;
                    sHaveCustomRecyclerView = true;
                }
            } catch (Exception unused) {
            }
        }
    }

    public static void clear() {
        SparseArray<String> sparseArray = sViewCache;
        synchronized (sparseArray) {
            sparseArray.clear();
        }
    }

    private static Class<?> findRecyclerInSuper(Class<?> cls) {
        while (cls != null && !cls.equals(ViewGroup.class)) {
            try {
                sRecyclerViewGetChildAdapterPositionMethod = cls.getMethod("getChildAdapterPosition", View.class);
            } catch (NoSuchMethodException unused) {
            }
            if (sRecyclerViewGetChildAdapterPositionMethod == null) {
                try {
                    sRecyclerViewGetChildAdapterPositionMethod = cls.getMethod("getChildPosition", View.class);
                } catch (NoSuchMethodException unused2) {
                }
            }
            if (sRecyclerViewGetChildAdapterPositionMethod != null) {
                return cls;
            }
            cls = cls.getSuperclass();
        }
        return null;
    }

    private static String getCanonicalAndCheckCustomView(Class<?> cls) {
        String canonicalName = SnapCache.getInstance().getCanonicalName(cls);
        if (canonicalName != null) {
            checkCustomRecyclerView(cls, canonicalName);
        }
        return canonicalName;
    }

    private static int getChildAdapterPositionInRecyclerView(View view, ViewGroup viewGroup) {
        Object invoke;
        if (instanceOfRecyclerView(viewGroup)) {
            try {
                sRecyclerViewGetChildAdapterPositionMethod = viewGroup.getClass().getMethod("getChildAdapterPosition", View.class);
            } catch (NoSuchMethodException unused) {
            }
            if (sRecyclerViewGetChildAdapterPositionMethod == null) {
                try {
                    sRecyclerViewGetChildAdapterPositionMethod = viewGroup.getClass().getMethod("getChildPosition", View.class);
                } catch (NoSuchMethodException unused2) {
                }
            }
            try {
                Method method = sRecyclerViewGetChildAdapterPositionMethod;
                if (method != null && (invoke = method.invoke(viewGroup, view)) != null) {
                    return ((Integer) invoke).intValue();
                }
                return -1;
            } catch (IllegalAccessException | InvocationTargetException unused3) {
                return -1;
            }
        } else if (sHaveCustomRecyclerView) {
            return invokeCRVGetChildAdapterPositionMethod(viewGroup, view);
        } else {
            return -1;
        }
    }

    private static int getCurrentItem(View view) {
        try {
            Object invoke = view.getClass().getMethod("getCurrentItem", null).invoke(view, null);
            if (invoke != null) {
                return ((Integer) invoke).intValue();
            }
            return -1;
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return -1;
        }
    }

    public static int getMainWindowCount(View[] viewArr) {
        WindowHelper.init();
        int i = 0;
        for (View view : viewArr) {
            if (view != null) {
                i += WindowHelper.getWindowPrefix(view).equals(WindowHelper.getMainWindowPrefix()) ? 1 : 0;
            }
        }
        return i;
    }

    public static ViewNode getViewNode(View view, int i, boolean z) {
        String format;
        boolean z2 = true;
        int viewPosition = getViewPosition(view, i);
        ViewParent parent = view.getParent();
        String str = null;
        if (parent == null) {
            return null;
        }
        if ((WindowHelper.isDecorView(view.getClass()) && !(parent instanceof View)) || !(parent instanceof View)) {
            return null;
        }
        View view2 = (View) parent;
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        String canonicalAndCheckCustomView = getCanonicalAndCheckCustomView(view.getClass());
        ViewParent parent2 = view2.getParent();
        if (parent2 instanceof View) {
            View view3 = (View) parent2;
            SparseArray<String> sparseArray = sViewCache;
            synchronized (sparseArray) {
                String str2 = sparseArray.get(view3.hashCode());
                if (!TextUtils.isEmpty(str2)) {
                    str = str2;
                }
            }
        }
        if (view2 instanceof ExpandableListView) {
            ExpandableListView expandableListView = (ExpandableListView) view2;
            long expandableListPosition = expandableListView.getExpandableListPosition(viewPosition);
            if (ExpandableListView.getPackedPositionType(expandableListPosition) != 2) {
                int packedPositionGroup = ExpandableListView.getPackedPositionGroup(expandableListPosition);
                int packedPositionChild = ExpandableListView.getPackedPositionChild(expandableListPosition);
                if (packedPositionChild != -1) {
                    format = String.format(TimeUtils.SDK_LOCALE, "%d:%d", Integer.valueOf(packedPositionGroup), Integer.valueOf(packedPositionChild));
                    sb2.append((CharSequence) sb);
                    sb2.append("/ELVG[");
                    sb2.append(packedPositionGroup);
                    sb2.append("]/ELVC[-]/");
                    sb2.append(canonicalAndCheckCustomView);
                    sb2.append("[0]");
                    sb.append("/ELVG[");
                    sb.append(packedPositionGroup);
                    sb.append("]/ELVC[");
                    sb.append(packedPositionChild);
                    sb.append("]/");
                    sb.append(canonicalAndCheckCustomView);
                    sb.append("[0]");
                } else {
                    format = String.format(TimeUtils.SDK_LOCALE, TimeModel.NUMBER_FORMAT, Integer.valueOf(packedPositionGroup));
                    sb2.append((CharSequence) sb);
                    sb2.append("/ELVG[-]/");
                    sb2.append(canonicalAndCheckCustomView);
                    sb2.append("[0]");
                    sb.append("/ELVG[");
                    sb.append(packedPositionGroup);
                    sb.append("]/");
                    sb.append(canonicalAndCheckCustomView);
                    sb.append("[0]");
                }
                str = format;
            } else {
                if (viewPosition < expandableListView.getHeaderViewsCount()) {
                    sb.append("/ELH[");
                    sb.append(viewPosition);
                    sb.append("]/");
                    sb.append(canonicalAndCheckCustomView);
                    sb.append("[0]");
                    sb2.append("/ELH[");
                    sb2.append(viewPosition);
                    sb2.append("]/");
                    sb2.append(canonicalAndCheckCustomView);
                    sb2.append("[0]");
                } else {
                    int count = viewPosition - (expandableListView.getCount() - expandableListView.getFooterViewsCount());
                    sb.append("/ELF[");
                    sb.append(count);
                    sb.append("]/");
                    sb.append(canonicalAndCheckCustomView);
                    sb.append("[0]");
                    sb2.append("/ELF[");
                    sb2.append(count);
                    sb2.append("]/");
                    sb2.append(canonicalAndCheckCustomView);
                    sb2.append("[0]");
                }
                z2 = false;
            }
        } else if (isListView(view2)) {
            str = String.format(TimeUtils.SDK_LOCALE, TimeModel.NUMBER_FORMAT, Integer.valueOf(viewPosition));
            sb2.append((CharSequence) sb);
            sb2.append("/");
            sb2.append(canonicalAndCheckCustomView);
            sb2.append("[-]");
            sb.append("/");
            sb.append(canonicalAndCheckCustomView);
            sb.append("[");
            sb.append(str);
            sb.append("]");
        } else {
            if (instanceOfSupportSwipeRefreshLayout(view2)) {
                sb.append("/");
                sb.append(canonicalAndCheckCustomView);
                sb.append("[0]");
                sb2.append("/");
                sb2.append(canonicalAndCheckCustomView);
                sb2.append("[0]");
            } else {
                Object instanceOfFragmentRootView = instanceOfFragmentRootView(view2, view);
                if (instanceOfFragmentRootView != null) {
                    String canonicalAndCheckCustomView2 = getCanonicalAndCheckCustomView(instanceOfFragmentRootView.getClass());
                    sb.append("/");
                    sb.append(canonicalAndCheckCustomView2);
                    sb.append("[0]");
                    sb2.append("/");
                    sb2.append(canonicalAndCheckCustomView2);
                    sb2.append("[0]");
                } else {
                    int childIndex = SAViewUtils.getChildIndex(parent, view);
                    sb.append("/");
                    sb.append(canonicalAndCheckCustomView);
                    sb.append("[");
                    sb.append(childIndex);
                    sb.append("]");
                    sb2.append("/");
                    sb2.append(canonicalAndCheckCustomView);
                    sb2.append("[");
                    sb2.append(childIndex);
                    sb2.append("]");
                }
            }
            z2 = false;
        }
        if (WindowHelper.isDecorView(view2.getClass())) {
            if (sb.length() > 0) {
                sb.deleteCharAt(0);
            }
            if (sb2.length() > 0) {
                sb2.deleteCharAt(0);
            }
        }
        if (!TextUtils.isEmpty(str)) {
            SparseArray<String> sparseArray2 = sViewCache;
            synchronized (sparseArray2) {
                sparseArray2.put(view2.hashCode(), str);
            }
        }
        return new ViewNode(view, str, sb.toString(), sb2.toString(), SAViewUtils.getViewContent(view, z), SAViewUtils.getViewType(view), z2);
    }

    public static ViewNode getViewPathAndPosition(View view, boolean z) {
        int indexOf;
        ArrayList arrayList = new ArrayList(8);
        arrayList.add(view);
        for (ViewParent parent = view.getParent(); parent instanceof ViewGroup; parent = parent.getParent()) {
            arrayList.add((ViewGroup) parent);
        }
        int size = arrayList.size();
        View view2 = (View) arrayList.get(size - 1);
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        String str = null;
        if (!(view2 instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view2;
        String str2 = null;
        for (int i = size - 2; i >= 0; i--) {
            View view3 = (View) arrayList.get(i);
            ViewNode viewNode = getViewNode(view3, viewGroup.indexOfChild(view3), z);
            if (viewNode != null) {
                if (!TextUtils.isEmpty(viewNode.getViewPath()) && viewNode.getViewPath().contains("-") && !TextUtils.isEmpty(str) && (indexOf = sb2.indexOf("-")) != -1) {
                    sb2.replace(indexOf, indexOf + 1, String.valueOf(str));
                }
                sb.append(viewNode.getViewOriginalPath());
                sb2.append(viewNode.getViewPath());
                str = viewNode.getViewPosition();
                str2 = viewNode.getViewContent();
            }
            if (!(view3 instanceof ViewGroup)) {
                break;
            }
            viewGroup = (ViewGroup) view3;
        }
        return new ViewNode(view, str, sb.toString(), sb2.toString(), str2);
    }

    private static int getViewPosition(View view, int i) {
        int childAdapterPositionInRecyclerView;
        if (view.getParent() != null && (view.getParent() instanceof ViewGroup)) {
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            if (!instanceOfAndroidXViewPager(viewGroup) && !instanceOfSupportViewPager(viewGroup)) {
                if (viewGroup instanceof AdapterView) {
                    return i + ((AdapterView) viewGroup).getFirstVisiblePosition();
                }
                if (instanceOfRecyclerView(viewGroup) && (childAdapterPositionInRecyclerView = getChildAdapterPositionInRecyclerView(view, viewGroup)) >= 0) {
                    return childAdapterPositionInRecyclerView;
                }
            } else {
                return getCurrentItem(viewGroup);
            }
        }
        return i;
    }

    private static boolean haveRecyclerView() {
        try {
            try {
                int i = RecyclerView.HORIZONTAL;
                return true;
            } catch (ClassNotFoundException unused) {
                return false;
            }
        } catch (ClassNotFoundException unused2) {
            int i2 = RecyclerView.HORIZONTAL;
            return true;
        }
    }

    private static boolean instanceOfAndroidXViewPager(Object obj) {
        return ReflectUtil.isInstance(obj, "androidx.viewpager.widget.ViewPager");
    }

    public static boolean instanceOfFlutterActivity(Object obj) {
        return ReflectUtil.isInstance(obj, "io.flutter.embedding.android.FlutterActivity");
    }

    public static boolean instanceOfFlutterSurfaceView(Object obj) {
        return ReflectUtil.isInstance(obj, "io.flutter.embedding.android.FlutterSurfaceView");
    }

    private static Object instanceOfFragmentRootView(View view, View view2) {
        Object fragmentFromView = SAFragmentUtils.getFragmentFromView(view);
        Object fragmentFromView2 = SAFragmentUtils.getFragmentFromView(view2);
        if (fragmentFromView == null && fragmentFromView2 != null) {
            return fragmentFromView2;
        }
        return null;
    }

    public static boolean instanceOfRecyclerView(Object obj) {
        Class<?> cls;
        boolean isInstance = ReflectUtil.isInstance(obj, "androidx.recyclerview.widget.RecyclerView", "androidx.recyclerview.widget.RecyclerView");
        if (!isInstance) {
            if (sHaveCustomRecyclerView && obj != null && (cls = sRecyclerViewClass) != null && cls.isAssignableFrom(obj.getClass())) {
                return true;
            }
            return false;
        }
        return isInstance;
    }

    private static boolean instanceOfSupportSwipeRefreshLayout(Object obj) {
        return ReflectUtil.isInstance(obj, "androidx.swiperefreshlayout.widget.SwipeRefreshLayout", "androidx.swiperefreshlayout.widget.SwipeRefreshLayout");
    }

    private static boolean instanceOfSupportViewPager(Object obj) {
        return ReflectUtil.isInstance(obj, "androidx.viewpager.widget.ViewPager");
    }

    private static boolean instanceOfUCWebView(Object obj) {
        return ReflectUtil.isInstance(obj, "com.alipay.mobile.nebulauc.impl.UCWebView$WebViewEx");
    }

    public static boolean instanceOfWebView(Object obj) {
        if (!(obj instanceof WebView) && !instanceOfX5WebView(obj) && !instanceOfUCWebView(obj)) {
            return false;
        }
        return true;
    }

    public static boolean instanceOfX5WebView(Object obj) {
        return ReflectUtil.isInstance(obj, "com.tencent.smtt.sdk.WebView");
    }

    public static void invalidateLayerTypeView(View[] viewArr) {
        for (View view : viewArr) {
            if (viewVisibilityInParents(view) && view.isHardwareAccelerated()) {
                checkAndInvalidate(view);
                if (view instanceof ViewGroup) {
                    invalidateViewGroup((ViewGroup) view);
                }
            }
        }
    }

    private static void invalidateViewGroup(ViewGroup viewGroup) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (SAViewUtils.isViewSelfVisible(childAt)) {
                checkAndInvalidate(childAt);
                if (childAt instanceof ViewGroup) {
                    invalidateViewGroup((ViewGroup) childAt);
                }
            }
        }
    }

    private static int invokeCRVGetChildAdapterPositionMethod(View view, View view2) {
        try {
            if (view.getClass() == sRecyclerViewClass) {
                return ((Integer) sRecyclerViewGetChildAdapterPositionMethod.invoke(view, view2)).intValue();
            }
            return -1;
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return -1;
        }
    }

    private static boolean isListView(View view) {
        if (!(view instanceof AdapterView) && !instanceOfRecyclerView(view) && !instanceOfAndroidXViewPager(view) && !instanceOfSupportViewPager(view)) {
            return false;
        }
        return true;
    }

    public static boolean isWindowNeedTraverse(View view, String str, boolean z) {
        if (view.hashCode() == AppStateTools.getInstance().getCurrentRootWindowsHashCode()) {
            return true;
        }
        if (view instanceof ViewGroup) {
            if (!z) {
                return true;
            }
            if (view.getWindowVisibility() != 8 && view.getVisibility() == 0 && !TextUtils.equals(str, WindowHelper.getMainWindowPrefix()) && view.getWidth() != 0 && view.getHeight() != 0) {
                return true;
            }
        }
        if ((view.getWindowVisibility() == 0 || view.getVisibility() == 0) && WindowHelper.isCustomWindow(view)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean viewVisibilityInParents(android.view.View r2) {
        /*
            r0 = 0
            if (r2 != 0) goto L4
            return r0
        L4:
            boolean r1 = com.sensorsdata.analytics.android.sdk.util.SAViewUtils.isViewSelfVisible(r2)
            if (r1 != 0) goto Lb
            return r0
        Lb:
            android.view.ViewParent r2 = r2.getParent()
        Lf:
            boolean r1 = r2 instanceof android.view.View
            if (r1 == 0) goto L24
            r1 = r2
            android.view.View r1 = (android.view.View) r1
            boolean r1 = com.sensorsdata.analytics.android.sdk.util.SAViewUtils.isViewSelfVisible(r1)
            if (r1 != 0) goto L1d
            return r0
        L1d:
            android.view.ViewParent r2 = r2.getParent()
            if (r2 != 0) goto Lf
            return r0
        L24:
            r2 = 1
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sensorsdata.analytics.android.sdk.util.visual.ViewUtil.viewVisibilityInParents(android.view.View):boolean");
    }
}
