package com.sensorsdata.analytics.android.sdk.util;

import android.view.View;
import android.view.ViewGroup;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.sensorsdata.analytics.android.sdk.SALog;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class Pathfinder {
    private static final String TAG = "SA.PathFinder";
    private final IntStack mIndexStack = new IntStack();

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface Accumulator {
        void accumulate(View view);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class IntStack {
        private static final int MAX_INDEX_STACK_SIZE = 256;
        private final int[] mStack = new int[256];
        private int mStackSize = 0;

        public int alloc() {
            int i = this.mStackSize;
            this.mStackSize = i + 1;
            this.mStack[i] = 0;
            return i;
        }

        public void free() {
            int i = this.mStackSize - 1;
            this.mStackSize = i;
            if (i >= 0) {
                return;
            }
            throw new ArrayIndexOutOfBoundsException(this.mStackSize);
        }

        public boolean full() {
            if (this.mStack.length == this.mStackSize) {
                return true;
            }
            return false;
        }

        public void increment(int i) {
            int[] iArr = this.mStack;
            iArr[i] = iArr[i] + 1;
        }

        public int read(int i) {
            return this.mStack[i];
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class PathElement {
        public static final int SHORTEST_PREFIX = 1;
        public static final int ZERO_LENGTH_PREFIX = 0;
        public final int index;
        public final int prefix;
        public final String viewClassName;
        public final int viewId;

        public PathElement(int i, String str, int i2, int i3) {
            this.prefix = i;
            this.viewClassName = str;
            this.index = i2;
            this.viewId = i3;
        }

        public String toString() {
            try {
                JSONObject jSONObject = new JSONObject();
                if (this.prefix == 1) {
                    jSONObject.put("prefix", "shortest");
                }
                String str = this.viewClassName;
                if (str != null) {
                    jSONObject.put("view_class", str);
                }
                int i = this.index;
                if (i > -1) {
                    jSONObject.put(FirebaseAnalytics.Param.INDEX, i);
                }
                int i2 = this.viewId;
                if (i2 > -1) {
                    jSONObject.put("id", i2);
                }
                return jSONObject.toString();
            } catch (JSONException e) {
                throw new RuntimeException("Can't serialize PathElement to String", e);
            }
        }
    }

    private View findPrefixedMatch(PathElement pathElement, View view, int i) {
        View findPrefixedMatch;
        int read = this.mIndexStack.read(i);
        if (matches(pathElement, view)) {
            this.mIndexStack.increment(i);
            int i2 = pathElement.index;
            if (i2 == -1 || i2 == read) {
                return view;
            }
        }
        if (pathElement.prefix == 1 && (view instanceof ViewGroup)) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = viewGroup.getChildAt(i3);
                if (childAt != null && (findPrefixedMatch = findPrefixedMatch(pathElement, childAt, i)) != null) {
                    return findPrefixedMatch;
                }
            }
            return null;
        }
        return null;
    }

    private void findTargetsInMatchedView(View view, List<PathElement> list, Accumulator accumulator) {
        if (list.isEmpty()) {
            accumulator.accumulate(view);
        } else if (this.mIndexStack.full()) {
            SALog.i(TAG, "Path is too deep, there is no memory to perfrom the finding");
        } else if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            PathElement pathElement = list.get(0);
            List<PathElement> subList = list.subList(1, list.size());
            int childCount = viewGroup.getChildCount();
            int alloc = this.mIndexStack.alloc();
            for (int i = 0; i < childCount; i++) {
                View findPrefixedMatch = findPrefixedMatch(pathElement, viewGroup.getChildAt(i), alloc);
                if (findPrefixedMatch != null) {
                    findTargetsInMatchedView(findPrefixedMatch, subList, accumulator);
                }
                if (pathElement.index >= 0 && this.mIndexStack.read(alloc) > pathElement.index) {
                    break;
                }
            }
            this.mIndexStack.free();
        }
    }

    public static boolean hasClassName(Object obj, String str) {
        Class<?> cls = obj.getClass();
        String canonicalName = SnapCache.getInstance().getCanonicalName(cls);
        while (canonicalName != null) {
            if (canonicalName.equals(str)) {
                return true;
            }
            if (cls != Object.class) {
                cls = cls.getSuperclass();
                canonicalName = SnapCache.getInstance().getCanonicalName(cls);
            } else {
                return false;
            }
        }
        return false;
    }

    private boolean matches(PathElement pathElement, View view) {
        String str = pathElement.viewClassName;
        if (str != null && !hasClassName(view, str)) {
            return false;
        }
        if (-1 != pathElement.viewId && view.getId() != pathElement.viewId) {
            return false;
        }
        return true;
    }

    public void findTargetsInRoot(View view, List<PathElement> list, Accumulator accumulator) {
        if (!list.isEmpty()) {
            if (this.mIndexStack.full()) {
                SALog.i(TAG, "Path is too deep, there is no memory to perfrom the finding");
                return;
            }
            List<PathElement> subList = list.subList(1, list.size());
            View findPrefixedMatch = findPrefixedMatch(list.get(0), view, this.mIndexStack.alloc());
            this.mIndexStack.free();
            if (findPrefixedMatch != null) {
                findTargetsInMatchedView(findPrefixedMatch, subList, accumulator);
            }
        }
    }
}
