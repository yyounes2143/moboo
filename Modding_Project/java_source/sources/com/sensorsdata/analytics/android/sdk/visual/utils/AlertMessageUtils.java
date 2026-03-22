package com.sensorsdata.analytics.android.sdk.visual.utils;

import android.content.Context;
import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.util.SADisplayUtil;
import com.sensorsdata.analytics.android.sdk.visual.AbstractViewCrawler;
import com.sensorsdata.analytics.android.sdk.visual.NodesProcess;
import com.sensorsdata.analytics.android.sdk.visual.R;
import com.sensorsdata.analytics.android.sdk.visual.model.NodeInfo;
import com.sensorsdata.analytics.android.sdk.visual.model.SnapInfo;
import com.sensorsdata.analytics.android.sdk.visual.model.WebNodeInfo;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class AlertMessageUtils {
    private static final String TAG = "SA.AlertMessageUtils";

    /* compiled from: Proguard */
    /* renamed from: com.sensorsdata.analytics.android.sdk.visual.utils.AlertMessageUtils$1  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sensorsdata$analytics$android$sdk$visual$utils$AlertMessageUtils$AlertRunnable$AlertType;

        static {
            int[] iArr = new int[AlertRunnable.AlertType.values().length];
            $SwitchMap$com$sensorsdata$analytics$android$sdk$visual$utils$AlertMessageUtils$AlertRunnable$AlertType = iArr;
            try {
                iArr[AlertRunnable.AlertType.H5.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sensorsdata$analytics$android$sdk$visual$utils$AlertMessageUtils$AlertRunnable$AlertType[AlertRunnable.AlertType.FLUTTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class AlertRunnable implements Runnable {
        private final AlertType alertType;
        private final String unique;

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public enum AlertType {
            H5,
            FLUTTER
        }

        public AlertRunnable(AlertType alertType, String str) {
            this.unique = str;
            this.alertType = alertType;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i = AnonymousClass1.$SwitchMap$com$sensorsdata$analytics$android$sdk$visual$utils$AlertMessageUtils$AlertRunnable$AlertType[this.alertType.ordinal()];
            if (i == 1) {
                AlertMessageUtils.h5AlertHandlerFailure(this.unique);
            } else if (i == 2) {
                AlertMessageUtils.flutterAlertHandlerFailure(this.unique);
            }
        }
    }

    private static void buildAlertInfo(OutputStream outputStream, String str, List<NodeInfo.AlertInfo> list, Context context) throws IOException {
        if (list != null && list.size() > 0) {
            outputStream.write(",\"app_alert_infos\":".getBytes());
            outputStream.flush();
            outputStream.write("[".getBytes());
            for (int i = 0; i < list.size(); i++) {
                if (i > 0) {
                    outputStream.write(",".getBytes());
                }
                NodeInfo.AlertInfo alertInfo = list.get(i);
                if (alertInfo != null) {
                    if (TextUtils.equals(AbstractViewCrawler.TYPE_HEAT_MAP, str)) {
                        alertInfo.title = alertInfo.title.replace(SADisplayUtil.getStringResource(context, R.string.sensors_analytics_visual), SADisplayUtil.getStringResource(context, R.string.sensors_analytics_heatmap));
                    }
                    outputStream.write("{".getBytes());
                    outputStream.write("\"title\":".getBytes());
                    outputStream.write(("\"" + alertInfo.title + "\"").getBytes());
                    outputStream.write(",".getBytes());
                    outputStream.write("\"message\":".getBytes());
                    outputStream.write(("\"" + alertInfo.message + "\"").getBytes());
                    outputStream.write(",".getBytes());
                    outputStream.write("\"link_text\":".getBytes());
                    outputStream.write(("\"" + alertInfo.linkText + "\"").getBytes());
                    outputStream.write(",".getBytes());
                    outputStream.write("\"link_url\":".getBytes());
                    outputStream.write(("\"" + alertInfo.linkUrl + "\"").getBytes());
                    outputStream.write("}".getBytes());
                }
            }
            outputStream.write("]".getBytes());
            outputStream.flush();
        }
    }

    public static void buildFlutterAlertInfo(OutputStream outputStream, String str, SnapInfo snapInfo, Context context) throws IOException {
        buildAlertInfo(outputStream, str, snapInfo.flutter_alertInfos, context);
    }

    public static void buildH5AlertInfo(OutputStream outputStream, String str, SnapInfo snapInfo, Context context) throws IOException {
        WebNodeInfo webNodeInfo = (WebNodeInfo) NodesProcess.getInstance().getWebNodesManager().getPageInfo(snapInfo.webViewUrl);
        if (webNodeInfo != null) {
            if (!TextUtils.isEmpty(webNodeInfo.getUrl())) {
                outputStream.write((",\"h5_url\": \"" + webNodeInfo.getUrl() + "\"").getBytes());
            }
            if (!TextUtils.isEmpty(webNodeInfo.getTitle())) {
                outputStream.write((",\"h5_title\": \"" + webNodeInfo.getTitle() + "\"").getBytes());
            }
        }
        buildAlertInfo(outputStream, str, snapInfo.alertInfos, context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void flutterAlertHandlerFailure(String str) {
        SALog.i(TAG, "Flutter page is not integrated SDK");
        if (!TextUtils.isEmpty(str)) {
            Context context = SensorsDataAPI.sharedInstance().getSAContextManager().getContext();
            String stringResource = SADisplayUtil.getStringResource(context, R.string.sensors_analytics_visual_sa_h5);
            String stringResource2 = SADisplayUtil.getStringResource(context, R.string.sensors_analytics_visual_sa_flutter_error);
            String stringResource3 = SADisplayUtil.getStringResource(context, R.string.sensors_analytics_visual_sa_h5_error_link);
            NodesProcess.getInstance().getFlutterNodesManager().handlerFailure(str, "{\"callType\":\"app_alert\",\"data\":[{\"title\":\"" + stringResource + "\",\"message\":\"" + stringResource2 + "\",\"link_text\":\"" + stringResource3 + "\",\"link_url\":\"https://manual.sensorsdata.cn/sa/latest/flutter-22257963.html\"}]}");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void h5AlertHandlerFailure(String str) {
        if (!TextUtils.isEmpty(str) && ((WebNodeInfo) NodesProcess.getInstance().getWebNodesManager().getNodes(str)) == null) {
            SALog.i(TAG, "H5 page is not integrated Web JS SDK");
            Context context = SensorsDataAPI.sharedInstance().getSAContextManager().getContext();
            String stringResource = SADisplayUtil.getStringResource(context, R.string.sensors_analytics_visual_sa_h5);
            String stringResource2 = SADisplayUtil.getStringResource(context, R.string.sensors_analytics_visual_sa_h5_error);
            String stringResource3 = SADisplayUtil.getStringResource(context, R.string.sensors_analytics_visual_sa_h5_error_link);
            NodesProcess.getInstance().getWebNodesManager().handlerFailure(str, "{\"callType\":\"app_alert\",\"data\":[{\"title\":\"" + stringResource + "\",\"message\":\"" + stringResource2 + "\",\"link_text\":\"" + stringResource3 + "\",\"link_url\":\"https://manual.sensorsdata.cn/sa/latest/tech_sdk_client_web_use-7545346.html\"}]}");
        }
    }
}
