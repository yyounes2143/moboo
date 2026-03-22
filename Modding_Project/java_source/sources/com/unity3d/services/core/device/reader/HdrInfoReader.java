package com.unity3d.services.core.device.reader;

import android.app.Activity;
import android.os.Build;
import android.view.Display;
import android.view.WindowManager;
import com.unity3d.services.core.configuration.ExperimentsReader;
import com.unity3d.services.core.misc.Utilities;
import com.unity3d.services.core.request.metrics.Metric;
import com.unity3d.services.core.request.metrics.SDKMetricsSender;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class HdrInfoReader implements IHdrInfoReader {
    private static final AtomicBoolean _hdrMetricsCaptured = new AtomicBoolean(false);
    private static volatile HdrInfoReader _instance;
    private final SDKMetricsSender _sdkMetricsSender = (SDKMetricsSender) Utilities.getService(SDKMetricsSender.class);

    private HdrInfoReader() {
    }

    public static HdrInfoReader getInstance() {
        if (_instance == null) {
            synchronized (HdrInfoReader.class) {
                try {
                    if (_instance == null) {
                        _instance = new HdrInfoReader();
                    }
                } finally {
                }
            }
        }
        return _instance;
    }

    @Override // com.unity3d.services.core.device.reader.IHdrInfoReader
    public void captureHDRCapabilityMetrics(Activity activity, ExperimentsReader experimentsReader) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        Display.HdrCapabilities hdrCapabilities;
        int[] supportedHdrTypes;
        float desiredMaxAverageLuminance;
        float desiredMaxLuminance;
        float desiredMinLuminance;
        if (activity != null && experimentsReader.getCurrentlyActiveExperiments().isCaptureHDRCapabilitiesEnabled()) {
            boolean z5 = false;
            if (_hdrMetricsCaptured.compareAndSet(false, true)) {
                ArrayList arrayList = new ArrayList(5);
                if (Build.VERSION.SDK_INT >= 24) {
                    hdrCapabilities = ((WindowManager) activity.getSystemService("window")).getDefaultDisplay().getHdrCapabilities();
                    supportedHdrTypes = hdrCapabilities.getSupportedHdrTypes();
                    boolean z6 = false;
                    z2 = false;
                    z3 = false;
                    z4 = false;
                    for (int i : supportedHdrTypes) {
                        if (i != 1) {
                            if (i != 2) {
                                if (i != 3) {
                                    if (i == 4) {
                                        z3 = true;
                                    }
                                } else {
                                    z4 = true;
                                }
                            } else {
                                z2 = true;
                            }
                        } else {
                            z6 = true;
                        }
                    }
                    desiredMaxAverageLuminance = hdrCapabilities.getDesiredMaxAverageLuminance();
                    long round = Math.round(desiredMaxAverageLuminance);
                    desiredMaxLuminance = hdrCapabilities.getDesiredMaxLuminance();
                    long round2 = Math.round(desiredMaxLuminance);
                    desiredMinLuminance = hdrCapabilities.getDesiredMinLuminance();
                    arrayList.add(new Metric("native_device_hdr_lum_max_average", Long.valueOf(round)));
                    arrayList.add(new Metric("native_device_hdr_lum_max", Long.valueOf(round2)));
                    arrayList.add(new Metric("native_device_hdr_lum_min", Long.valueOf(Math.round(desiredMinLuminance))));
                    if (Build.VERSION.SDK_INT >= 26) {
                        z5 = activity.getResources().getConfiguration().isScreenHdr();
                    }
                    z = z5;
                    z5 = z6;
                } else {
                    z = false;
                    z2 = false;
                    z3 = false;
                    z4 = false;
                }
                if (z5) {
                    arrayList.add(new Metric("native_device_hdr_dolby_vision_success"));
                } else {
                    arrayList.add(new Metric("native_device_hdr_dolby_vision_failure"));
                }
                if (z2) {
                    arrayList.add(new Metric("native_device_hdr_hdr10_success"));
                } else {
                    arrayList.add(new Metric("native_device_hdr_hdr10_failure"));
                }
                if (z3) {
                    arrayList.add(new Metric("native_device_hdr_hdr10_plus_success"));
                } else {
                    arrayList.add(new Metric("native_device_hdr_hdr10_plus_failure"));
                }
                if (z4) {
                    arrayList.add(new Metric("native_device_hdr_hlg_success"));
                } else {
                    arrayList.add(new Metric("native_device_hdr_hlg_failure"));
                }
                if (z) {
                    arrayList.add(new Metric("native_device_hdr_screen_hdr_success"));
                } else {
                    arrayList.add(new Metric("native_device_hdr_screen_hdr_failure"));
                }
                this._sdkMetricsSender.sendMetrics(arrayList);
            }
        }
    }
}
