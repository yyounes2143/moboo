package com.sensorsdata.analytics.android.sdk.visual;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class NodesProcess {
    private static volatile NodesProcess mSingleton;
    private volatile FlutterNodesManager mFlutterNodesManager;
    private volatile WebNodesManager mWebNodesManager;

    public static NodesProcess getInstance() {
        if (mSingleton == null) {
            synchronized (NodesProcess.class) {
                try {
                    if (mSingleton == null) {
                        mSingleton = new NodesProcess();
                    }
                } finally {
                }
            }
        }
        return mSingleton;
    }

    public FlutterNodesManager getFlutterNodesManager() {
        if (this.mFlutterNodesManager == null) {
            synchronized (FlutterNodesManager.class) {
                try {
                    if (this.mFlutterNodesManager == null) {
                        this.mFlutterNodesManager = new FlutterNodesManager();
                    }
                } finally {
                }
            }
        }
        return this.mFlutterNodesManager;
    }

    public WebNodesManager getWebNodesManager() {
        if (this.mWebNodesManager == null) {
            synchronized (WebNodesManager.class) {
                try {
                    if (this.mWebNodesManager == null) {
                        this.mWebNodesManager = new WebNodesManager();
                    }
                } finally {
                }
            }
        }
        return this.mWebNodesManager;
    }
}
