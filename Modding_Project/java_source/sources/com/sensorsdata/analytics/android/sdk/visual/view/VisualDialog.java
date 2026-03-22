package com.sensorsdata.analytics.android.sdk.visual.view;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import com.sensorsdata.analytics.android.sdk.R;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.dialog.SensorsDataDialogUtils;
import com.sensorsdata.analytics.android.sdk.util.NetworkUtils;
import com.sensorsdata.analytics.android.sdk.util.SADisplayUtil;
import com.sensorsdata.analytics.android.sdk.visual.HeatMapService;
import com.sensorsdata.analytics.android.sdk.visual.VisualizedAutoTrackService;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class VisualDialog {
    public static void showOpenHeatMapDialog(final Activity activity, final String str, final String str2) {
        boolean z;
        try {
            z = "WIFI".equals(NetworkUtils.networkType(activity));
        } catch (Exception e) {
            SALog.printStackTrace(e);
            z = false;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setTitle(SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_common_title));
        if (z) {
            builder.setMessage(SADisplayUtil.getStringResource(activity, com.sensorsdata.analytics.android.sdk.visual.R.string.sensors_analytics_heatmap_wifi_name));
        } else {
            builder.setMessage(SADisplayUtil.getStringResource(activity, com.sensorsdata.analytics.android.sdk.visual.R.string.sensors_analytics_heatmap_mobile_name));
        }
        builder.setCancelable(false);
        builder.setNegativeButton(SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_common_cancel), new DialogInterface.OnClickListener() { // from class: com.sensorsdata.analytics.android.sdk.visual.view.VisualDialog.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                SensorsDataDialogUtils.startLaunchActivity(activity);
            }
        });
        builder.setPositiveButton(SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_common_continue), new DialogInterface.OnClickListener() { // from class: com.sensorsdata.analytics.android.sdk.visual.view.VisualDialog.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                HeatMapService.getInstance().start(activity, str, str2);
                SensorsDataDialogUtils.startLaunchActivity(activity);
            }
        });
        AlertDialog create = builder.create();
        SensorsDataDialogUtils.dialogShowDismissOld(create);
        try {
            create.getButton(-2).setTextColor(ViewCompat.MEASURED_STATE_MASK);
            create.getButton(-2).setBackgroundColor(-1);
            create.getButton(-1).setTextColor(SupportMenu.CATEGORY_MASK);
            create.getButton(-1).setBackgroundColor(-1);
            create.getButton(-2).setBackground(SensorsDataDialogUtils.getDrawable());
            create.getButton(-1).setBackground(SensorsDataDialogUtils.getDrawable());
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    public static void showOpenVisualizedAutoTrackDialog(final Activity activity, final String str, final String str2) {
        boolean z;
        try {
            z = "WIFI".equals(NetworkUtils.networkType(activity));
        } catch (Exception unused) {
            z = false;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setTitle(SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_common_title));
        if (z) {
            builder.setMessage(SADisplayUtil.getStringResource(activity, com.sensorsdata.analytics.android.sdk.visual.R.string.sensors_analytics_visual_wifi_name));
        } else {
            builder.setMessage(SADisplayUtil.getStringResource(activity, com.sensorsdata.analytics.android.sdk.visual.R.string.sensors_analytics_visual_mobile_name));
        }
        builder.setCancelable(false);
        builder.setNegativeButton(SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_common_cancel), new DialogInterface.OnClickListener() { // from class: com.sensorsdata.analytics.android.sdk.visual.view.VisualDialog.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                SensorsDataDialogUtils.startLaunchActivity(activity);
            }
        });
        builder.setPositiveButton(SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_common_continue), new DialogInterface.OnClickListener() { // from class: com.sensorsdata.analytics.android.sdk.visual.view.VisualDialog.4
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                VisualizedAutoTrackService.getInstance().start(activity, str, str2);
                SensorsDataDialogUtils.startLaunchActivity(activity);
            }
        });
        AlertDialog create = builder.create();
        SensorsDataDialogUtils.dialogShowDismissOld(create);
        try {
            create.getButton(-2).setTextColor(ViewCompat.MEASURED_STATE_MASK);
            create.getButton(-2).setBackgroundColor(-1);
            create.getButton(-1).setTextColor(SupportMenu.CATEGORY_MASK);
            create.getButton(-1).setBackgroundColor(-1);
            create.getButton(-2).setBackground(SensorsDataDialogUtils.getDrawable());
            create.getButton(-1).setBackground(SensorsDataDialogUtils.getDrawable());
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }
}
