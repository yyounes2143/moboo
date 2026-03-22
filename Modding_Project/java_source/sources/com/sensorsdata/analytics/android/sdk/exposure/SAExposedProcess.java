package com.sensorsdata.analytics.android.sdk.exposure;

import android.app.Activity;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import android.view.View;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.core.business.exposure.SAExposureConfig;
import com.sensorsdata.analytics.android.sdk.core.business.exposure.SAExposureData;
import com.sensorsdata.analytics.android.sdk.monitor.SensorsDataLifecycleMonitorManager;
import com.sensorsdata.analytics.android.sdk.util.AppStateTools;
import com.sensorsdata.analytics.android.sdk.util.JSONUtils;
import com.sensorsdata.analytics.android.sdk.util.SAViewUtils;
import java.util.Iterator;
import java.util.WeakHashMap;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SAExposedProcess {
    private static final long DELAY_TIME = 500;
    private static final String TAG = "SA.SAExposedProcess";
    private boolean isActivityChange;
    private CallBack mCallBack;
    private WeakHashMap<Activity, ExposedPage> mExposedPageWeakHashMap;
    private ExposedTransform mExposedTransform;
    private final SAExposureConfig mExposureConfig;
    private ExposureRunnable mExposureRunnable;
    private Handler mHandler;
    private String mLastActivityUrl = "";
    private WeakHashMap<View, StayDurationRunnable> mStayDurationRunnableWeakHashMap;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface CallBack {
        int getExposureViewSize(Activity activity);

        void onActivityPaused(Activity activity);

        void onActivityResumed(Activity activity);

        void viewLayoutChange(Activity activity);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class ExposureRunnable implements Runnable {
        private final ExposedPage mExposedPage;
        private final View mView;

        public ExposureRunnable(ExposedPage exposedPage, View view) {
            this.mExposedPage = exposedPage;
            this.mView = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                for (ExposureView exposureView : this.mExposedPage.getExposureViewList(this.mView)) {
                    View view = exposureView.getView();
                    if (view != null) {
                        synchronized (SAExposedProcess.this.mStayDurationRunnableWeakHashMap) {
                            StayDurationRunnable stayDurationRunnable = (StayDurationRunnable) SAExposedProcess.this.mStayDurationRunnableWeakHashMap.get(view);
                            if (stayDurationRunnable != null) {
                                SAExposedProcess.this.mHandler.removeCallbacks(stayDurationRunnable);
                                SAExposedProcess.this.mStayDurationRunnableWeakHashMap.remove(view);
                            }
                            SALog.i(SAExposedProcess.TAG, "ExposureRunnable->exposureView:" + exposureView);
                            SAExposureData exposureData = exposureView.getExposureData();
                            if (exposureData != null) {
                                StayDurationRunnable stayDurationRunnable2 = new StayDurationRunnable(exposureView);
                                SAExposedProcess.this.mStayDurationRunnableWeakHashMap.put(view, stayDurationRunnable2);
                                SAExposedProcess.this.mHandler.postDelayed(stayDurationRunnable2, (long) (exposureData.getExposureConfig().getStayDuration() * 1000.0d));
                            }
                        }
                    }
                }
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
    }

    public SAExposedProcess(SAExposureConfig sAExposureConfig) {
        this.mExposureConfig = sAExposureConfig;
    }

    private Activity exposureProcess(View view, SAExposureData sAExposureData, boolean z) throws Exception {
        ExposureView exposureView = null;
        if (view == null || sAExposureData == null) {
            return null;
        }
        Activity activityOfView = SAViewUtils.getActivityOfView(view.getContext(), view);
        if (activityOfView == null) {
            activityOfView = AppStateTools.getInstance().getForegroundActivity();
        }
        if (activityOfView == null) {
            return null;
        }
        init();
        ExposedPage exposedPage = this.mExposedPageWeakHashMap.get(activityOfView);
        if (exposedPage == null) {
            exposedPage = new ExposedPage();
            this.mExposedPageWeakHashMap.put(activityOfView, exposedPage);
        }
        if (z && sAExposureData.getExposureConfig() == null) {
            sAExposureData.setExposureConfig(this.mExposureConfig);
        }
        String identifier = sAExposureData.getIdentifier();
        if (!TextUtils.isEmpty(identifier)) {
            ExposureView exposureView2 = exposedPage.getExposureView(identifier);
            ExposureView exposureView3 = exposedPage.getExposureView(view);
            if (exposureView3 != null && exposureView3.getExposureData() != null && exposureView3.getExposureData().getIdentifier() != null && !exposureView3.getExposureData().getIdentifier().equals(sAExposureData.getIdentifier())) {
                exposureView3.setLastVisible(false);
            }
            if (exposureView2 != null) {
                exposureView = exposureView2.m221clone();
                exposureView.setView(view);
                if (z) {
                    exposureView.setExposureData(sAExposureData);
                }
            }
        } else if (exposedPage.getExposureView(view) != null) {
            exposureView = exposedPage.getExposureView(view);
            exposureView.setExposureData(sAExposureData);
        }
        if (exposureView == null) {
            exposureView = new ExposureView(sAExposureData, false, false, view);
        }
        if (z) {
            exposureView.setAddExposureView(true);
        }
        SALog.i(TAG, "addExposureView:" + exposureView);
        exposedPage.addExposureView(view, exposureView);
        exposedPage.addExposureView(sAExposureData.getIdentifier(), exposureView);
        return activityOfView;
    }

    private synchronized void init() {
        try {
            if (this.mExposedPageWeakHashMap == null) {
                this.mExposedPageWeakHashMap = new WeakHashMap<>();
                this.mStayDurationRunnableWeakHashMap = new WeakHashMap<>();
                HandlerThread handlerThread = new HandlerThread("SA.Exposured");
                handlerThread.start();
                this.mHandler = new Handler(handlerThread.getLooper());
                CallBack callBack = new CallBack() { // from class: com.sensorsdata.analytics.android.sdk.exposure.SAExposedProcess.1
                    @Override // com.sensorsdata.analytics.android.sdk.exposure.SAExposedProcess.CallBack
                    public int getExposureViewSize(Activity activity) {
                        ExposedPage exposedPage;
                        try {
                            if (SAExposedProcess.this.mExposedPageWeakHashMap != null && (exposedPage = (ExposedPage) SAExposedProcess.this.mExposedPageWeakHashMap.get(activity)) != null) {
                                return exposedPage.getExposureViewSize();
                            }
                            return 0;
                        } catch (Exception e) {
                            SALog.printStackTrace(e);
                            return 0;
                        }
                    }

                    @Override // com.sensorsdata.analytics.android.sdk.exposure.SAExposedProcess.CallBack
                    public void onActivityPaused(Activity activity) {
                        try {
                            if (SAExposedProcess.this.mExposedPageWeakHashMap != null) {
                                ExposedPage exposedPage = (ExposedPage) SAExposedProcess.this.mExposedPageWeakHashMap.get(activity);
                                if (exposedPage != null) {
                                    exposedPage.invisibleElement();
                                }
                                SAExposedProcess.this.removeStayDurationRunnable();
                            }
                        } catch (Exception e) {
                            SALog.printStackTrace(e);
                        }
                    }

                    @Override // com.sensorsdata.analytics.android.sdk.exposure.SAExposedProcess.CallBack
                    public void onActivityResumed(Activity activity) {
                        ExposedPage exposedPage;
                        try {
                            String canonicalName = activity.getClass().getCanonicalName();
                            SAExposedProcess sAExposedProcess = SAExposedProcess.this;
                            sAExposedProcess.isActivityChange = !sAExposedProcess.mLastActivityUrl.equals(canonicalName);
                            SAExposedProcess.this.mLastActivityUrl = canonicalName;
                            if (SAExposedProcess.this.isActivityChange && (exposedPage = (ExposedPage) SAExposedProcess.this.mExposedPageWeakHashMap.get(activity)) != null) {
                                for (ExposureView exposureView : exposedPage.getExposureViews()) {
                                    if (exposureView != null) {
                                        exposureView.setActivityChange(true);
                                    }
                                }
                            }
                            viewLayoutChange(activity);
                        } catch (Exception e) {
                            SALog.printStackTrace(e);
                        }
                    }

                    @Override // com.sensorsdata.analytics.android.sdk.exposure.SAExposedProcess.CallBack
                    public void viewLayoutChange(Activity activity) {
                        if (SAExposedProcess.this.mExposureRunnable != null) {
                            SAExposedProcess.this.mHandler.removeCallbacks(SAExposedProcess.this.mExposureRunnable);
                        }
                        SAExposedProcess.this.removeStayDurationRunnable();
                        ExposedPage exposedPage = (ExposedPage) SAExposedProcess.this.mExposedPageWeakHashMap.get(activity);
                        if (exposedPage != null) {
                            SAExposedProcess sAExposedProcess = SAExposedProcess.this;
                            sAExposedProcess.mExposureRunnable = new ExposureRunnable(exposedPage, null);
                            if (SAExposedProcess.this.mExposureConfig != null) {
                                SALog.i(SAExposedProcess.TAG, "delayTime:" + SAExposedProcess.this.mExposureConfig.getDelayTime());
                                SAExposedProcess.this.mHandler.postDelayed(SAExposedProcess.this.mExposureRunnable, SAExposedProcess.this.mExposureConfig.getDelayTime());
                                return;
                            }
                            SALog.i(SAExposedProcess.TAG, "delayTime->500ms");
                            SAExposedProcess.this.mHandler.postDelayed(SAExposedProcess.this.mExposureRunnable, 500L);
                        }
                    }
                };
                this.mCallBack = callBack;
                this.mExposedTransform = new ExposedTransform(callBack);
                SensorsDataLifecycleMonitorManager.getInstance().addActivityLifeCallback(this.mExposedTransform);
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeStayDurationRunnable() {
        synchronized (this.mStayDurationRunnableWeakHashMap) {
            try {
                WeakHashMap<View, StayDurationRunnable> weakHashMap = this.mStayDurationRunnableWeakHashMap;
                if (weakHashMap == null) {
                    return;
                }
                Iterator<View> it = weakHashMap.keySet().iterator();
                while (it.hasNext()) {
                    View next = it.next();
                    if (next != null) {
                        this.mHandler.removeCallbacks(this.mStayDurationRunnableWeakHashMap.get(next));
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private boolean verifyExposureData(SAExposureData sAExposureData) {
        if (sAExposureData == null) {
            SALog.i(TAG, "SAExposureData is null");
            return false;
        } else if (TextUtils.isEmpty(sAExposureData.getEvent())) {
            SALog.i(TAG, "EventName is empty or null");
            return false;
        } else {
            SAExposureConfig exposureConfig = sAExposureData.getExposureConfig();
            if (exposureConfig != null) {
                if (exposureConfig.getAreaRate() > 1.0f || exposureConfig.getAreaRate() < 0.0f) {
                    SALog.i(TAG, "SAExposureConfig areaRate must be 0~1");
                    exposureConfig.setAreaRate(0.0f);
                    return true;
                }
            } else {
                SAExposureConfig sAExposureConfig = this.mExposureConfig;
                if (sAExposureConfig != null && (sAExposureConfig.getAreaRate() > 1.0f || this.mExposureConfig.getAreaRate() < 0.0f)) {
                    SALog.i(TAG, "Global SAExposureConfig areaRate must be 0~1");
                    sAExposureData.setExposureConfig(new SAExposureConfig(0.0f, this.mExposureConfig.getStayDuration(), this.mExposureConfig.isRepeated()));
                }
            }
            return true;
        }
    }

    public void addExposureView(View view, SAExposureData sAExposureData) {
        Activity exposureProcess;
        try {
            if (verifyExposureData(sAExposureData) && (exposureProcess = exposureProcess(view, sAExposureData, true)) != null) {
                this.mCallBack.viewLayoutChange(exposureProcess);
                ExposedTransform exposedTransform = this.mExposedTransform;
                if (exposedTransform != null) {
                    exposedTransform.observerWindow(exposureProcess);
                }
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public void removeExposureView(View view, String str) {
        ExposedPage exposedPage;
        if (view != null) {
            Activity activityOfView = SAViewUtils.getActivityOfView(view.getContext(), view);
            if (activityOfView == null) {
                activityOfView = AppStateTools.getInstance().getForegroundActivity();
            }
            if (activityOfView != null) {
                WeakHashMap<Activity, ExposedPage> weakHashMap = this.mExposedPageWeakHashMap;
                if (weakHashMap != null) {
                    exposedPage = weakHashMap.get(activityOfView);
                } else {
                    exposedPage = null;
                }
                if (exposedPage != null) {
                    exposedPage.removeExposureView(view, str);
                }
            }
        }
    }

    public void setExposureIdentifier(View view, String str) {
        try {
            exposureProcess(view, new SAExposureData(null, null, str, null), false);
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public synchronized void updateExposureView(View view, JSONObject jSONObject) {
        ExposureView exposureView;
        if (view == null) {
            return;
        }
        ExposedPage exposedPage = this.mExposedPageWeakHashMap.get(SAViewUtils.getActivityOfView(view.getContext(), view));
        if (exposedPage != null && (exposureView = exposedPage.getExposureView(view)) != null && exposureView.getExposureData() != null) {
            JSONUtils.mergeJSONObject(jSONObject, exposureView.getExposureData().getProperties());
        }
    }
}
