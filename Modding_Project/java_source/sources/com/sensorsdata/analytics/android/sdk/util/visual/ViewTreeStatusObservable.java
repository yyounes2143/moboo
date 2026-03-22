package com.sensorsdata.analytics.android.sdk.util.visual;

import android.app.Activity;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.util.AppStateTools;
import com.sensorsdata.analytics.android.sdk.util.SAViewUtils;
import com.sensorsdata.analytics.android.sdk.util.WindowHelper;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class ViewTreeStatusObservable {
    private static final String TAG = "SA.ViewTreeStatusObservable";
    public static volatile ViewTreeStatusObservable viewTreeStatusObservable;
    private SparseArray<ViewNode> mViewNodesWithHashCode = new SparseArray<>();
    private HashMap<String, ViewNode> mViewNodesHashMap = new HashMap<>();
    private HashMap<String, ViewNode> mWebViewHashMap = new HashMap<>();

    private String generateKey(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        if (!TextUtils.isEmpty(str2)) {
            sb.append(str2);
        }
        if (!TextUtils.isEmpty(str3)) {
            sb.append(str3);
        }
        return sb.toString();
    }

    private ViewNode getCacheViewPathAndPosition(View view, boolean z) {
        View view2;
        String str;
        ViewNode viewNode;
        View view3;
        int lastIndexOf;
        ViewNode viewNode2 = this.mViewNodesWithHashCode.get(view.hashCode());
        if (viewNode2 != null) {
            return viewNode2;
        }
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            view2 = (View) parent;
        } else {
            view2 = null;
        }
        if (view2 == null) {
            viewNode = ViewUtil.getViewPathAndPosition(view, z);
        } else {
            StringBuilder sb = new StringBuilder();
            StringBuilder sb2 = new StringBuilder();
            ViewNode viewNode3 = this.mViewNodesWithHashCode.get(view2.hashCode());
            if (viewNode3 == null) {
                viewNode3 = ViewUtil.getViewPathAndPosition(view2, z);
                this.mViewNodesWithHashCode.put(view2.hashCode(), viewNode3);
            }
            if (viewNode3 != null) {
                sb.append(viewNode3.getViewOriginalPath());
                sb2.append(viewNode3.getViewPath());
                str = viewNode3.getViewPosition();
            } else {
                str = "";
            }
            viewNode = ViewUtil.getViewNode(view, ((ViewGroup) view2).indexOfChild(view), z);
            if (viewNode != null && !TextUtils.isEmpty(viewNode.getViewPath()) && viewNode.getViewPath().contains("-") && !TextUtils.isEmpty(str) && (lastIndexOf = sb2.lastIndexOf("-")) != -1) {
                sb2.replace(lastIndexOf, lastIndexOf + 1, String.valueOf(str));
            }
            if (viewNode != null) {
                sb.append(viewNode.getViewOriginalPath());
                sb2.append(viewNode.getViewPath());
                view3 = view;
                viewNode = new ViewNode(view3, viewNode.getViewPosition(), sb.toString(), sb2.toString(), viewNode.getViewContent());
                this.mViewNodesWithHashCode.put(view3.hashCode(), viewNode);
                return viewNode;
            }
        }
        view3 = view;
        this.mViewNodesWithHashCode.put(view3.hashCode(), viewNode);
        return viewNode;
    }

    public static ViewTreeStatusObservable getInstance() {
        if (viewTreeStatusObservable == null) {
            synchronized (ViewTreeStatusObservable.class) {
                try {
                    if (viewTreeStatusObservable == null) {
                        viewTreeStatusObservable = new ViewTreeStatusObservable();
                    }
                } finally {
                }
            }
        }
        return viewTreeStatusObservable;
    }

    private ViewNode getSingleViewPathAndPosition(View view, boolean z) {
        View view2;
        String str;
        int lastIndexOf;
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            view2 = (View) parent;
        } else {
            view2 = null;
        }
        if (view2 == null) {
            return ViewUtil.getViewPathAndPosition(view, z);
        }
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        ViewNode viewPathAndPosition = ViewUtil.getViewPathAndPosition(view2, z);
        if (viewPathAndPosition != null) {
            sb.append(viewPathAndPosition.getViewOriginalPath());
            sb2.append(viewPathAndPosition.getViewPath());
            str = viewPathAndPosition.getViewPosition();
        } else {
            str = "";
        }
        ViewNode viewNode = ViewUtil.getViewNode(view, ((ViewGroup) view2).indexOfChild(view), z);
        if (viewNode != null) {
            if (!TextUtils.isEmpty(viewNode.getViewPath()) && viewNode.getViewPath().contains("-") && !TextUtils.isEmpty(str) && (lastIndexOf = sb2.lastIndexOf("-")) != -1) {
                sb2.replace(lastIndexOf, lastIndexOf + 1, String.valueOf(str));
            }
            sb.append(viewNode.getViewOriginalPath());
            sb2.append(viewNode.getViewPath());
            return new ViewNode(view, viewNode.getViewPosition(), sb.toString(), sb2.toString(), viewNode.getViewContent());
        }
        return viewNode;
    }

    private void traverseNode() {
        traverseNode(null);
    }

    public void clearViewNodeCache() {
        this.mViewNodesWithHashCode.clear();
        this.mViewNodesHashMap.clear();
    }

    public void clearWebViewCache() {
        try {
            HashMap<String, ViewNode> hashMap = this.mWebViewHashMap;
            if (hashMap != null) {
                hashMap.clear();
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public List<View> getCurrentWebView() {
        try {
            if (this.mWebViewHashMap.size() == 0) {
                traverseNode();
            }
            if (this.mWebViewHashMap.size() > 0) {
                ArrayList arrayList = new ArrayList();
                for (ViewNode viewNode : this.mWebViewHashMap.values()) {
                    WeakReference<View> view = viewNode.getView();
                    if (view != null && view.get() != null) {
                        arrayList.add(view.get());
                    }
                }
                return arrayList;
            }
            return null;
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return null;
        }
    }

    public ViewNode getViewNode(View view) {
        try {
            return getViewPathAndPosition(view);
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return null;
        }
    }

    public ViewNode getViewPathAndPosition(View view) {
        return getSingleViewPathAndPosition(view, false);
    }

    private void traverseNode(View view) {
        try {
            this.mViewNodesHashMap.clear();
            this.mViewNodesWithHashCode.clear();
            this.mWebViewHashMap.clear();
            SparseArray<ViewNode> sparseArray = new SparseArray<>();
            HashMap<String, ViewNode> hashMap = new HashMap<>();
            HashMap<String, ViewNode> hashMap2 = new HashMap<>();
            if (view != null) {
                traverseNode(view, sparseArray, hashMap, hashMap2);
            } else {
                for (View view2 : WindowHelper.getSortedWindowViews()) {
                    traverseNode(view2, sparseArray, hashMap, hashMap2);
                }
            }
            this.mViewNodesHashMap = hashMap;
            this.mViewNodesWithHashCode = sparseArray;
            this.mWebViewHashMap = hashMap2;
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public ViewNode getViewNode(WeakReference<View> weakReference, String str, String str2, String str3) {
        Activity foregroundActivity;
        ViewNode viewNode = null;
        r0 = null;
        View rootView = null;
        try {
            ViewNode viewNode2 = this.mViewNodesHashMap.get(generateKey(str, str2, str3));
            if (viewNode2 == null) {
                if (weakReference != null) {
                    try {
                        if (weakReference.get() != null) {
                            rootView = weakReference.get().getRootView();
                        }
                    } catch (Exception e) {
                        e = e;
                        viewNode = viewNode2;
                        SALog.printStackTrace(e);
                        return viewNode;
                    }
                }
                if (rootView == null && (foregroundActivity = AppStateTools.getInstance().getForegroundActivity()) != null && foregroundActivity.getWindow() != null && foregroundActivity.getWindow().isActive()) {
                    rootView = foregroundActivity.getWindow().getDecorView();
                }
                if (rootView != null) {
                    traverseNode(rootView);
                }
                return this.mViewNodesHashMap.get(generateKey(str, str2, str3));
            }
            return viewNode2;
        } catch (Exception e2) {
            e = e2;
        }
    }

    public ViewNode getViewNode(String str) {
        ViewNode viewNode = null;
        r0 = null;
        r0 = null;
        View view = null;
        try {
            ViewNode viewNode2 = this.mWebViewHashMap.get(str);
            if (viewNode2 != null) {
                try {
                    if (viewNode2.getView() != null && viewNode2.getView().get() != null) {
                        return viewNode2;
                    }
                } catch (Exception e) {
                    e = e;
                    viewNode = viewNode2;
                    SALog.printStackTrace(e);
                    return viewNode;
                }
            }
            Activity foregroundActivity = AppStateTools.getInstance().getForegroundActivity();
            if (foregroundActivity != null && foregroundActivity.getWindow() != null && foregroundActivity.getWindow().isActive()) {
                view = foregroundActivity.getWindow().getDecorView();
            }
            if (view != null) {
                traverseNode(view);
            }
            return this.mWebViewHashMap.get(str);
        } catch (Exception e2) {
            e = e2;
        }
    }

    private void traverseNode(View view, SparseArray<ViewNode> sparseArray, HashMap<String, ViewNode> hashMap, HashMap<String, ViewNode> hashMap2) {
        JSONObject screenNameAndTitle;
        if (view == null) {
            return;
        }
        try {
            ViewNode cacheViewPathAndPosition = getCacheViewPathAndPosition(view, true);
            if (cacheViewPathAndPosition != null) {
                sparseArray.put(view.hashCode(), cacheViewPathAndPosition);
                if (!TextUtils.isEmpty(cacheViewPathAndPosition.getViewPath()) && (screenNameAndTitle = SAViewUtils.getScreenNameAndTitle(view)) != null) {
                    String optString = screenNameAndTitle.optString("$screen_name");
                    if (!TextUtils.isEmpty(optString)) {
                        if (!TextUtils.isEmpty(cacheViewPathAndPosition.getViewContent())) {
                            hashMap.put(generateKey(cacheViewPathAndPosition.getViewPath(), cacheViewPathAndPosition.getViewPosition(), optString), cacheViewPathAndPosition);
                        }
                        if (ViewUtil.instanceOfWebView(view)) {
                            hashMap2.put(cacheViewPathAndPosition.getViewPath() + optString, cacheViewPathAndPosition);
                        }
                    }
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = viewGroup.getChildAt(i);
                    if (childAt != null) {
                        traverseNode(childAt, sparseArray, hashMap, hashMap2);
                    }
                }
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }
}
