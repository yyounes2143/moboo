package com.mbridge.msdk.out;

import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class NativeListener {

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public interface FilpListener {
        void filpEvent(int i);
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public interface NativeAdListener {
        void onAdClick(Campaign campaign);

        void onAdFramesLoaded(List<Frame> list);

        void onAdLoadError(String str);

        void onAdLoaded(List<Campaign> list, int i);

        void onLoggingImpression(int i);
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public interface NativeTrackingListener extends BaseTrackingListener {
        void onDismissLoading(Campaign campaign);

        void onDownloadFinish(Campaign campaign);

        void onDownloadProgress(int i);

        void onDownloadStart(Campaign campaign);

        boolean onInterceptDefaultLoadingDialog();

        void onShowLoading(Campaign campaign);
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static class Template {
        private int adNum;
        private int id;

        public Template(int i, int i2) {
            this.id = i;
            this.adNum = i2;
        }

        public int getAdNum() {
            return this.adNum;
        }

        public int getId() {
            return this.id;
        }

        public void setAdNum(int i) {
            this.adNum = i;
        }

        public void setId(int i) {
            this.id = i;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public interface TrackingExListener extends NativeTrackingListener {
        void onLeaveApp();
    }
}
