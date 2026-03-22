package com.sensorsdata.analytics.android.sdk;

import java.util.concurrent.LinkedBlockingQueue;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class TrackTaskManager {
    private static TrackTaskManager trackTaskManager;
    private final LinkedBlockingQueue<Runnable> mTrackEventTasks = new LinkedBlockingQueue<>();

    private TrackTaskManager() {
    }

    public static synchronized TrackTaskManager getInstance() {
        TrackTaskManager trackTaskManager2;
        synchronized (TrackTaskManager.class) {
            try {
                if (trackTaskManager == null) {
                    trackTaskManager = new TrackTaskManager();
                }
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
            trackTaskManager2 = trackTaskManager;
        }
        return trackTaskManager2;
    }

    public void addTrackEventTask(Runnable runnable) {
        try {
            this.mTrackEventTasks.put(runnable);
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public boolean isEmpty() {
        return this.mTrackEventTasks.isEmpty();
    }

    public Runnable pollTrackEventTask() {
        try {
            return this.mTrackEventTasks.poll();
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return null;
        }
    }

    public Runnable takeTrackEventTask() {
        try {
            return this.mTrackEventTasks.take();
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return null;
        }
    }
}
