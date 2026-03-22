package com.sensorsdata.analytics.android.autotrack.aop;

import android.os.Bundle;
import android.view.View;
import com.sensorsdata.analytics.android.autotrack.core.autotrack.SAFragmentLifecycleCallbacks;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.util.SAFragmentUtils;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class FragmentTrackHelper {
    private static final List<SAFragmentLifecycleCallbacks> FRAGMENT_CALLBACKS = new ArrayList();

    public static void addFragmentCallbacks(SAFragmentLifecycleCallbacks sAFragmentLifecycleCallbacks) {
        if (sAFragmentLifecycleCallbacks != null) {
            FRAGMENT_CALLBACKS.add(sAFragmentLifecycleCallbacks);
        }
    }

    public static void onFragmentViewCreated(Object obj, View view, Bundle bundle) {
        if (SAFragmentUtils.isFragment(obj)) {
            for (SAFragmentLifecycleCallbacks sAFragmentLifecycleCallbacks : FRAGMENT_CALLBACKS) {
                try {
                    sAFragmentLifecycleCallbacks.onViewCreated(obj, view, bundle);
                } catch (Exception e) {
                    SALog.printStackTrace(e);
                }
            }
        }
    }

    public static void removeFragmentCallbacks(SAFragmentLifecycleCallbacks sAFragmentLifecycleCallbacks) {
        if (sAFragmentLifecycleCallbacks != null) {
            FRAGMENT_CALLBACKS.remove(sAFragmentLifecycleCallbacks);
        }
    }

    public static void trackFragmentPause(Object obj) {
        if (SAFragmentUtils.isFragment(obj)) {
            for (SAFragmentLifecycleCallbacks sAFragmentLifecycleCallbacks : FRAGMENT_CALLBACKS) {
                try {
                    sAFragmentLifecycleCallbacks.onPause(obj);
                } catch (Exception e) {
                    SALog.printStackTrace(e);
                }
            }
        }
    }

    public static void trackFragmentResume(Object obj) {
        if (SAFragmentUtils.isFragment(obj)) {
            for (SAFragmentLifecycleCallbacks sAFragmentLifecycleCallbacks : FRAGMENT_CALLBACKS) {
                try {
                    sAFragmentLifecycleCallbacks.onResume(obj);
                } catch (Exception e) {
                    SALog.printStackTrace(e);
                }
            }
        }
    }

    public static void trackFragmentSetUserVisibleHint(Object obj, boolean z) {
        if (SAFragmentUtils.isFragment(obj)) {
            for (SAFragmentLifecycleCallbacks sAFragmentLifecycleCallbacks : FRAGMENT_CALLBACKS) {
                try {
                    sAFragmentLifecycleCallbacks.setUserVisibleHint(obj, z);
                } catch (Exception e) {
                    SALog.printStackTrace(e);
                }
            }
        }
    }

    public static void trackOnHiddenChanged(Object obj, boolean z) {
        if (SAFragmentUtils.isFragment(obj)) {
            for (SAFragmentLifecycleCallbacks sAFragmentLifecycleCallbacks : FRAGMENT_CALLBACKS) {
                try {
                    sAFragmentLifecycleCallbacks.onHiddenChanged(obj, z);
                } catch (Exception e) {
                    SALog.printStackTrace(e);
                }
            }
        }
    }
}
