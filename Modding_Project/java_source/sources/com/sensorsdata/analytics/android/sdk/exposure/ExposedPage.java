package com.sensorsdata.analytics.android.sdk.exposure;

import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.core.business.exposure.SAExposureConfig;
import com.sensorsdata.analytics.android.sdk.core.business.exposure.SAExposureData;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class ExposedPage {
    private static final String TAG = "SA.ExposedPage";
    private final WeakHashMap<View, ExposureView> mViewWeakHashMap = new WeakHashMap<>();
    private final Map<String, ExposureView> mExposureViewMap = new HashMap();
    private final ExposureVisible mExposureVisible = new ExposureVisible();

    private boolean isExposed(ExposureView exposureView) {
        boolean isLastVisible = exposureView.isLastVisible();
        View view = exposureView.getView();
        if (view == null) {
            return false;
        }
        Rect rect = new Rect();
        if (!this.mExposureVisible.isVisible(view, rect)) {
            exposureView.setLastVisible(false);
            return false;
        } else if (isLastVisible || !visibleRect(view, rect, exposureView.getExposureData().getExposureConfig().getAreaRate())) {
            return false;
        } else {
            return true;
        }
    }

    private boolean viewIsExposed(ExposureView exposureView) {
        SAExposureData exposureData;
        SAExposureConfig exposureConfig;
        if (exposureView != null && (exposureData = exposureView.getExposureData()) != null && (exposureConfig = exposureData.getExposureConfig()) != null && exposureView.isAddExposureView()) {
            boolean isRepeated = exposureConfig.isRepeated();
            boolean isExposed = isExposed(exposureView);
            SALog.i(TAG, "viewIsExposed:" + isExposed);
            if (isRepeated) {
                if (isExposed) {
                    return true;
                }
            } else if (isExposed && (!exposureView.isExposed() || exposureView.isActivityChange())) {
                return true;
            }
        }
        return false;
    }

    private boolean visibleRect(View view, Rect rect, float f) {
        if (view == null || rect.width() * rect.height() < view.getMeasuredHeight() * view.getMeasuredWidth() * f) {
            return false;
        }
        return true;
    }

    public synchronized void addExposureView(View view, ExposureView exposureView) {
        if (view == null || exposureView == null) {
            return;
        }
        this.mViewWeakHashMap.put(view, exposureView);
    }

    public synchronized ExposureView getExposureView(View view) {
        if (view == null) {
            return null;
        }
        return this.mViewWeakHashMap.get(view);
    }

    public synchronized List<ExposureView> getExposureViewList(View view) {
        ArrayList arrayList;
        try {
            this.mExposureVisible.cleanVisible();
            arrayList = new ArrayList();
            if (view != null) {
                arrayList.add(this.mViewWeakHashMap.get(view));
            } else {
                for (View view2 : this.mViewWeakHashMap.keySet()) {
                    if (view2 != null) {
                        ExposureView exposureView = this.mViewWeakHashMap.get(view2);
                        SALog.i(TAG, "getExposureViewList->exposureview:" + exposureView);
                        if (viewIsExposed(exposureView)) {
                            arrayList.add(exposureView);
                        }
                    }
                }
                this.mExposureVisible.cleanVisible();
                Collections.sort(arrayList, new Comparator<ExposureView>() { // from class: com.sensorsdata.analytics.android.sdk.exposure.ExposedPage.1
                    @Override // java.util.Comparator
                    public int compare(ExposureView exposureView2, ExposureView exposureView3) {
                        return (int) (exposureView2.getAddTime() - exposureView3.getAddTime());
                    }
                });
            }
        } catch (Throwable th) {
            throw th;
        }
        return arrayList;
    }

    public int getExposureViewSize() {
        return this.mViewWeakHashMap.size();
    }

    public Collection<ExposureView> getExposureViews() {
        return this.mViewWeakHashMap.values();
    }

    public synchronized void invisibleElement() {
        ExposureView exposureView;
        for (View view : this.mViewWeakHashMap.keySet()) {
            if (view != null && (exposureView = this.mViewWeakHashMap.get(view)) != null) {
                exposureView.setLastVisible(false);
            }
        }
    }

    public synchronized void removeExposureView(View view, String str) {
        if (view == null) {
            return;
        }
        try {
            ExposureView exposureView = getExposureView(view);
            if (exposureView != null && exposureView.getExposureData() != null) {
                if (exposureView.getExposureData().getIdentifier() != null && str != null) {
                    if (exposureView.getExposureData().getIdentifier().equals(str)) {
                        this.mViewWeakHashMap.remove(view);
                        this.mExposureViewMap.remove(str);
                    }
                } else if (exposureView.getExposureData().getIdentifier() == null && str == null) {
                    this.mViewWeakHashMap.remove(view);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized ExposureView getExposureView(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return this.mExposureViewMap.get(str);
    }

    public synchronized void addExposureView(String str, ExposureView exposureView) {
        if (!TextUtils.isEmpty(str) && exposureView != null) {
            this.mExposureViewMap.put(str, exposureView);
        }
    }
}
