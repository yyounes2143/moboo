package com.unity3d.services.core.request.metrics;

import java.util.HashMap;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class ScarMetric {
    private static final String ASYNC_PREFIX = "async";
    private static final String HB_SIGNALS_FETCH_FAILURE = "native_hb_signals_%s_fetch_failure";
    private static final String HB_SIGNALS_FETCH_START = "native_hb_signals_%s_fetch_start";
    private static final String HB_SIGNALS_FETCH_SUCCESS = "native_hb_signals_%s_fetch_success";
    private static final String HB_SIGNALS_UPLOAD_FAILURE = "native_hb_signals_%s_upload_failure";
    private static final String HB_SIGNALS_UPLOAD_START = "native_hb_signals_%s_upload_start";
    private static final String HB_SIGNALS_UPLOAD_SUCCESS = "native_hb_signals_%s_upload_success";
    private static final String REASON = "reason";
    private static final String SYNC_PREFIX = "sync";
    private static long _fetchStartTime;
    private static long _uploadStartTime;

    private static long getTotalFetchTime() {
        return TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - _fetchStartTime);
    }

    private static long getTotalUploadTime() {
        return TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - _uploadStartTime);
    }

    public static Metric hbSignalsFetchFailure(boolean z, String str) {
        String str2;
        HashMap hashMap = new HashMap();
        hashMap.put("reason", str);
        if (z) {
            str2 = ASYNC_PREFIX;
        } else {
            str2 = "sync";
        }
        return new Metric(String.format(HB_SIGNALS_FETCH_FAILURE, str2), Long.valueOf(getTotalFetchTime()), hashMap);
    }

    public static Metric hbSignalsFetchStart(boolean z) {
        String str;
        _fetchStartTime = System.nanoTime();
        if (z) {
            str = ASYNC_PREFIX;
        } else {
            str = "sync";
        }
        return new Metric(String.format(HB_SIGNALS_FETCH_START, str), null);
    }

    public static Metric hbSignalsFetchSuccess(boolean z) {
        String str;
        if (z) {
            str = ASYNC_PREFIX;
        } else {
            str = "sync";
        }
        return new Metric(String.format(HB_SIGNALS_FETCH_SUCCESS, str), Long.valueOf(getTotalFetchTime()));
    }

    public static Metric hbSignalsUploadFailure(boolean z, String str) {
        String str2;
        HashMap hashMap = new HashMap();
        hashMap.put("reason", str);
        if (z) {
            str2 = ASYNC_PREFIX;
        } else {
            str2 = "sync";
        }
        return new Metric(String.format(HB_SIGNALS_UPLOAD_FAILURE, str2), Long.valueOf(getTotalUploadTime()), hashMap);
    }

    public static Metric hbSignalsUploadStart(boolean z) {
        String str;
        _uploadStartTime = System.nanoTime();
        if (z) {
            str = ASYNC_PREFIX;
        } else {
            str = "sync";
        }
        return new Metric(String.format(HB_SIGNALS_UPLOAD_START, str), null);
    }

    public static Metric hbSignalsUploadSuccess(boolean z) {
        String str;
        if (z) {
            str = ASYNC_PREFIX;
        } else {
            str = "sync";
        }
        return new Metric(String.format(HB_SIGNALS_UPLOAD_SUCCESS, str), Long.valueOf(getTotalUploadTime()));
    }
}
