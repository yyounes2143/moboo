package com.sensorsdata.analytics.android.sdk.core.business.visual;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.R;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.core.mediator.Modules;
import com.sensorsdata.analytics.android.sdk.core.mediator.SAModuleManager;
import com.sensorsdata.analytics.android.sdk.dialog.SensorsDataDialogUtils;
import com.sensorsdata.analytics.android.sdk.util.SADisplayUtil;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SAVisualTools {
    private static boolean checkProjectIsValid(String str) {
        String str2;
        Uri parse;
        Uri parse2;
        String serverUrl = SensorsDataAPI.sharedInstance().getServerUrl();
        String str3 = null;
        if (!TextUtils.isEmpty(str) && (parse2 = Uri.parse(str)) != null) {
            str2 = parse2.getQueryParameter("project");
        } else {
            str2 = null;
        }
        if (!TextUtils.isEmpty(serverUrl) && (parse = Uri.parse(serverUrl)) != null) {
            str3 = parse.getQueryParameter("project");
        }
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3) && TextUtils.equals(str2, str3)) {
            return true;
        }
        return false;
    }

    public static void showOpenHeatMapDialog(Activity activity, String str, String str2) {
        if (checkProjectIsValid(str2)) {
            if (!SAModuleManager.getInstance().hasModuleByName(Modules.Visual.MODULE_NAME)) {
                SensorsDataDialogUtils.showDialog(activity, "点击热图 SDK 没有被正确集成，请联系贵方技术人员正确集成。");
                return;
            } else if (!SensorsDataAPI.sharedInstance().isNetworkRequestEnable()) {
                SensorsDataDialogUtils.showDialog(activity, "已关闭网络请求（NetworkRequest），无法使用 App 点击分析，请开启后再试！");
                return;
            } else if (!SensorsDataAPI.sharedInstance().isHeatMapEnabled()) {
                SensorsDataDialogUtils.showDialog(activity, "SDK 没有被正确集成，请联系贵方技术人员开启点击分析。");
                return;
            } else {
                SAModuleManager.getInstance().invokeModuleFunction(Modules.Visual.MODULE_NAME, Modules.Visual.METHOD_SHOW_OPEN_HEATMAP_DIALOG, activity, str, str2);
                return;
            }
        }
        SensorsDataDialogUtils.showDialog(activity, SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_visual_dialog_error));
    }

    public static void showOpenVisualizedAutoTrackDialog(Activity activity, String str, String str2) {
        if (checkProjectIsValid(str2)) {
            if (!SAModuleManager.getInstance().hasModuleByName(Modules.Visual.MODULE_NAME)) {
                SensorsDataDialogUtils.showDialog(activity, "点击可视化 SDK 没有被正确集成，请联系贵方技术人员正确集成。");
                return;
            } else if (!SensorsDataAPI.sharedInstance().isNetworkRequestEnable()) {
                SensorsDataDialogUtils.showDialog(activity, "已关闭网络请求（NetworkRequest），无法使用 App 可视化全埋点，请开启后再试！");
                return;
            } else if (!SensorsDataAPI.sharedInstance().isVisualizedAutoTrackEnabled()) {
                SensorsDataDialogUtils.showDialog(activity, "SDK 没有被正确集成，请联系贵方技术人员开启可视化全埋点。");
                return;
            } else {
                SAModuleManager.getInstance().invokeModuleFunction(Modules.Visual.MODULE_NAME, Modules.Visual.METHOD_SHOW_OPEN_VISUALIZED_AUTOTRACK_DIALOG, activity, str, str2);
                return;
            }
        }
        SensorsDataDialogUtils.showDialog(activity, SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_visual_dialog_error));
    }

    public static void showPairingCodeInputDialog(Context context) {
        if (SAModuleManager.getInstance().hasModuleByName(Modules.Visual.MODULE_NAME)) {
            SAModuleManager.getInstance().invokeModuleFunction(Modules.Visual.MODULE_NAME, Modules.Visual.METHOD_SHOW_PAIRING_CODE_INPUTDIALOG, context);
        } else {
            SensorsDataDialogUtils.showDialog(context, "点击热图/可视化模块 SDK 没有被正确集成，请联系贵方技术人员正确集成。");
        }
    }
}
