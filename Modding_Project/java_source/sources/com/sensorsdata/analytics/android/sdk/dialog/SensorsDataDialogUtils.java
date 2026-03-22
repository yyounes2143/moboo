package com.sensorsdata.analytics.android.sdk.dialog;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.net.Uri;
import android.text.TextUtils;
import androidx.browser.trusted.sharing.ShareTarget;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import androidx.webkit.internal.AssetHelper;
import com.sensorsdata.analytics.android.sdk.AbstractSensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.R;
import com.sensorsdata.analytics.android.sdk.SAConfigOptions;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.core.tasks.ThreadNameConstants;
import com.sensorsdata.analytics.android.sdk.dialog.DebugModeSelectDialog;
import com.sensorsdata.analytics.android.sdk.util.NetworkUtils;
import com.sensorsdata.analytics.android.sdk.util.ReflectUtil;
import com.sensorsdata.analytics.android.sdk.util.SADisplayUtil;
import com.sensorsdata.analytics.android.sdk.util.TimeUtils;
import com.sensorsdata.analytics.android.sdk.util.ToastUtil;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.URL;
import javax.net.ssl.HttpsURLConnection;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SensorsDataDialogUtils {
    private static final String TAG = "SA.SensorsDataDialogUtils";
    private static boolean isShowHttpErrorDialog = true;
    private static Dialog sDialog;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class SendDebugIdThread extends Thread {
        private String distinctId;
        private String infoId;
        private String serverUrl;

        public SendDebugIdThread(String str, String str2, String str3, String str4) {
            super(str4);
            this.distinctId = str2;
            this.infoId = str3;
            this.serverUrl = str;
        }

        private void closeStream(ByteArrayOutputStream byteArrayOutputStream, OutputStream outputStream, BufferedOutputStream bufferedOutputStream, HttpURLConnection httpURLConnection) {
            if (byteArrayOutputStream != null) {
                try {
                    byteArrayOutputStream.close();
                } catch (Exception e) {
                    SALog.printStackTrace(e);
                }
            }
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (Exception e2) {
                    SALog.printStackTrace(e2);
                }
            }
            if (bufferedOutputStream != null) {
                try {
                    bufferedOutputStream.close();
                } catch (Exception e3) {
                    SALog.printStackTrace(e3);
                }
            }
            if (httpURLConnection != null) {
                try {
                    httpURLConnection.disconnect();
                } catch (Exception e4) {
                    SALog.printStackTrace(e4);
                }
            }
        }

        private void sendHttpRequest(String str, boolean z) {
            HttpURLConnection httpURLConnection;
            OutputStream outputStream;
            BufferedOutputStream bufferedOutputStream;
            URL url;
            SAConfigOptions configOptions;
            ByteArrayOutputStream byteArrayOutputStream = null;
            try {
                url = new URL(String.format(str + "&info_id=%s", this.infoId));
                SALog.info(SensorsDataDialogUtils.TAG, String.format("DebugMode URL:%s", url), null);
                httpURLConnection = (HttpURLConnection) url.openConnection();
            } catch (Exception e) {
                e = e;
                httpURLConnection = null;
                outputStream = null;
            } catch (Throwable th) {
                th = th;
                httpURLConnection = null;
                outputStream = null;
            }
            try {
                if (httpURLConnection != null) {
                    configOptions = AbstractSensorsDataAPI.getConfigOptions();
                    if (configOptions != null && configOptions.getSSLSocketFactory() != null && (httpURLConnection instanceof HttpsURLConnection)) {
                        ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(configOptions.getSSLSocketFactory());
                    }
                    httpURLConnection.setInstanceFollowRedirects(false);
                    ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                    try {
                        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(byteArrayOutputStream2);
                        String str2 = "{\"distinct_id\": \"" + this.distinctId + "\"}";
                        outputStreamWriter.write(str2);
                        outputStreamWriter.flush();
                        SALog.info(SensorsDataDialogUtils.TAG, String.format("DebugMode request body : %s", str2), null);
                        httpURLConnection.setDoOutput(true);
                        httpURLConnection.setUseCaches(false);
                        httpURLConnection.setRequestMethod(ShareTarget.METHOD_POST);
                        httpURLConnection.setRequestProperty("Content-type", AssetHelper.DEFAULT_MIME_TYPE);
                        outputStream = httpURLConnection.getOutputStream();
                        try {
                            bufferedOutputStream = new BufferedOutputStream(outputStream);
                        } catch (Exception e2) {
                            e = e2;
                            bufferedOutputStream = null;
                        } catch (Throwable th2) {
                            th = th2;
                            bufferedOutputStream = null;
                        }
                    } catch (Exception e3) {
                        e = e3;
                        outputStream = null;
                        bufferedOutputStream = null;
                    } catch (Throwable th3) {
                        th = th3;
                        outputStream = null;
                        bufferedOutputStream = null;
                    }
                    try {
                        bufferedOutputStream.write(byteArrayOutputStream2.toString().getBytes("UTF-8"));
                        bufferedOutputStream.flush();
                        byteArrayOutputStream2.close();
                        int responseCode = httpURLConnection.getResponseCode();
                        SALog.info(SensorsDataDialogUtils.TAG, String.format(TimeUtils.SDK_LOCALE, "DebugMode ResponseCode: %d", Integer.valueOf(responseCode)), null);
                        if (!z && NetworkUtils.needRedirects(responseCode)) {
                            String location = NetworkUtils.getLocation(httpURLConnection, str);
                            if (!TextUtils.isEmpty(location)) {
                                closeStream(byteArrayOutputStream2, outputStream, bufferedOutputStream, httpURLConnection);
                                sendHttpRequest(location, true);
                            }
                        }
                        closeStream(byteArrayOutputStream2, outputStream, bufferedOutputStream, httpURLConnection);
                        return;
                    } catch (Exception e4) {
                        e = e4;
                        byteArrayOutputStream = byteArrayOutputStream2;
                        try {
                            SALog.printStackTrace(e);
                            closeStream(byteArrayOutputStream, outputStream, bufferedOutputStream, httpURLConnection);
                        } catch (Throwable th4) {
                            th = th4;
                            closeStream(byteArrayOutputStream, outputStream, bufferedOutputStream, httpURLConnection);
                            throw th;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        byteArrayOutputStream = byteArrayOutputStream2;
                        closeStream(byteArrayOutputStream, outputStream, bufferedOutputStream, httpURLConnection);
                        throw th;
                    }
                }
                SALog.info(SensorsDataDialogUtils.TAG, String.format("can not connect %s,shouldn't happen", url.toString()), null);
                closeStream(null, null, null, httpURLConnection);
            } catch (Exception e5) {
                e = e5;
                outputStream = null;
                bufferedOutputStream = outputStream;
                SALog.printStackTrace(e);
                closeStream(byteArrayOutputStream, outputStream, bufferedOutputStream, httpURLConnection);
            } catch (Throwable th6) {
                th = th6;
                outputStream = null;
                bufferedOutputStream = outputStream;
                closeStream(byteArrayOutputStream, outputStream, bufferedOutputStream, httpURLConnection);
                throw th;
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            sendHttpRequest(this.serverUrl, false);
        }
    }

    public static void dialogShowDismissOld(Dialog dialog) {
        try {
            Dialog dialog2 = sDialog;
            if (dialog2 != null && dialog2.isShowing()) {
                try {
                    sDialog.dismiss();
                    SALog.i(TAG, "Dialog dismiss");
                } catch (Exception e) {
                    SALog.printStackTrace(e);
                }
            }
            sDialog = dialog;
            if (dialog != null) {
                dialog.show();
                dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.sensorsdata.analytics.android.sdk.dialog.SensorsDataDialogUtils.7
                    @Override // android.content.DialogInterface.OnDismissListener
                    public void onDismiss(DialogInterface dialogInterface) {
                        Dialog unused = SensorsDataDialogUtils.sDialog = null;
                    }
                });
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    public static StateListDrawable getDrawable() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(Color.parseColor("#dddddd"));
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setShape(0);
        gradientDrawable2.setColor(-1);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842908}, gradientDrawable);
        stateListDrawable.addState(new int[0], gradientDrawable2);
        return stateListDrawable;
    }

    public static boolean isSchemeActivity(Context context) {
        if (context == null) {
            return false;
        }
        String name = context.getClass().getName();
        if (!TextUtils.isEmpty(name) && name.endsWith(SchemeActivity.class.getSimpleName())) {
            Object findFieldRecur = ReflectUtil.findFieldRecur(context, "SCHEME_ACTIVITY_SIGN");
            if (findFieldRecur instanceof String) {
                return TextUtils.equals((String) findFieldRecur, SchemeActivity.SCHEME_ACTIVITY_SIGN);
            }
        }
        return false;
    }

    public static void showDebugModeSelectDialog(final Activity activity, final String str, final String str2, final String str3) {
        try {
            DebugModeSelectDialog debugModeSelectDialog = new DebugModeSelectDialog(activity, SensorsDataAPI.sharedInstance().getDebugMode());
            debugModeSelectDialog.setCanceledOnTouchOutside(false);
            debugModeSelectDialog.setOnDebugModeDialogClickListener(new DebugModeSelectDialog.OnDebugModeViewClickListener() { // from class: com.sensorsdata.analytics.android.sdk.dialog.SensorsDataDialogUtils.2
                @Override // com.sensorsdata.analytics.android.sdk.dialog.DebugModeSelectDialog.OnDebugModeViewClickListener
                public void onCancel(Dialog dialog) {
                    dialog.cancel();
                }

                @Override // com.sensorsdata.analytics.android.sdk.dialog.DebugModeSelectDialog.OnDebugModeViewClickListener
                public void setDebugMode(Dialog dialog, SensorsDataAPI.DebugMode debugMode) {
                    SensorsDataAPI.sharedInstance().setDebugMode(debugMode);
                    dialog.cancel();
                }
            });
            debugModeSelectDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.sensorsdata.analytics.android.sdk.dialog.SensorsDataDialogUtils.3
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialogInterface) {
                    String str4;
                    String serverUrl = SensorsDataAPI.sharedInstance().getServerUrl();
                    SensorsDataAPI.DebugMode debugMode = SensorsDataAPI.sharedInstance().getDebugMode();
                    if (SensorsDataAPI.sharedInstance().isNetworkRequestEnable() && !TextUtils.isEmpty(serverUrl) && !TextUtils.isEmpty(str) && debugMode != SensorsDataAPI.DebugMode.DEBUG_OFF) {
                        if (TextUtils.isEmpty(str2)) {
                            new SendDebugIdThread(serverUrl, SensorsDataAPI.sharedInstance().getDistinctId(), str, ThreadNameConstants.THREAD_SEND_DISTINCT_ID).start();
                        } else {
                            try {
                                if (!TextUtils.isEmpty(str3)) {
                                    String str5 = str2 + "?project=" + str3;
                                    SALog.i(SensorsDataDialogUtils.TAG, "sf url:" + str5);
                                    new SendDebugIdThread(str5, SensorsDataAPI.sharedInstance().getDistinctId(), str, ThreadNameConstants.THREAD_SEND_DISTINCT_ID).start();
                                }
                            } catch (Exception e) {
                                SALog.printStackTrace(e);
                            }
                        }
                    }
                    if (debugMode == SensorsDataAPI.DebugMode.DEBUG_OFF) {
                        str4 = SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_debug_tip_off);
                    } else if (debugMode == SensorsDataAPI.DebugMode.DEBUG_ONLY) {
                        str4 = SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_debug_tip_only);
                    } else if (debugMode == SensorsDataAPI.DebugMode.DEBUG_AND_TRACK) {
                        str4 = SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_debug_tip_track);
                    } else {
                        str4 = "";
                    }
                    ToastUtil.showLong(activity, str4);
                    SALog.info(SensorsDataDialogUtils.TAG, "The App current DebugMode is ：" + debugMode, null);
                    SensorsDataDialogUtils.startLaunchActivity(activity);
                }
            });
            dialogShowDismissOld(debugModeSelectDialog);
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public static void showDialog(Activity activity, String str, String str2, String str3, DialogInterface.OnClickListener onClickListener, String str4, DialogInterface.OnClickListener onClickListener2) {
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        if (!TextUtils.isEmpty(str)) {
            builder.setTitle(str);
        }
        if (!TextUtils.isEmpty(str2)) {
            builder.setMessage(str2);
        }
        builder.setCancelable(false);
        builder.setNegativeButton(str4, onClickListener2);
        builder.setPositiveButton(str3, onClickListener);
        AlertDialog create = builder.create();
        dialogShowDismissOld(create);
        create.getButton(-2).setAllCaps(false);
        create.getButton(-1).setAllCaps(false);
    }

    public static void showHttpErrorDialog(Activity activity, String str) {
        try {
            if (!TextUtils.isEmpty(str) && isShowHttpErrorDialog && activity != null) {
                AlertDialog.Builder builder = new AlertDialog.Builder(activity);
                builder.setTitle(SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_common_title));
                builder.setMessage(str);
                builder.setCancelable(false);
                builder.setNegativeButton(SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_common_ok), new DialogInterface.OnClickListener() { // from class: com.sensorsdata.analytics.android.sdk.dialog.SensorsDataDialogUtils.4
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                    }
                });
                builder.setPositiveButton(SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_common_no), new DialogInterface.OnClickListener() { // from class: com.sensorsdata.analytics.android.sdk.dialog.SensorsDataDialogUtils.5
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        boolean unused = SensorsDataDialogUtils.isShowHttpErrorDialog = false;
                    }
                });
                AlertDialog create = builder.create();
                dialogShowDismissOld(create);
                try {
                    create.getButton(-2).setTextColor(ViewCompat.MEASURED_STATE_MASK);
                    create.getButton(-2).setBackgroundColor(-1);
                    create.getButton(-2).setAllCaps(false);
                    create.getButton(-1).setTextColor(SupportMenu.CATEGORY_MASK);
                    create.getButton(-1).setBackgroundColor(-1);
                    create.getButton(-1).setAllCaps(false);
                    create.getButton(-2).setBackground(getDrawable());
                    create.getButton(-1).setBackground(getDrawable());
                } catch (Exception e) {
                    SALog.printStackTrace(e);
                }
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    public static void showPopupWindowDialog(final Activity activity, Uri uri) {
        boolean z;
        Runnable runnable;
        try {
            Class<?> cls = Class.forName("com.sensorsdata.sf.ui.utils.PreviewUtil");
            String queryParameter = uri.getQueryParameter("sf_popup_test");
            String queryParameter2 = uri.getQueryParameter("popup_window_id");
            if (!TextUtils.isEmpty(queryParameter)) {
                z = Boolean.parseBoolean(queryParameter);
            } else {
                z = false;
            }
            Method[] declaredMethods = cls.getDeclaredMethods();
            int length = declaredMethods.length;
            int i = 0;
            Method method = null;
            while (true) {
                if (i < length) {
                    Method method2 = declaredMethods[i];
                    if (method2.getName().equals("showPreview")) {
                        if (method2.getParameterTypes().length == 4) {
                            runnable = new Runnable() { // from class: com.sensorsdata.analytics.android.sdk.dialog.SensorsDataDialogUtils.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    Activity activity2 = activity;
                                    if (activity2 == null) {
                                        return;
                                    }
                                    activity2.runOnUiThread(new Runnable() { // from class: com.sensorsdata.analytics.android.sdk.dialog.SensorsDataDialogUtils.1.1
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            Activity activity3 = activity;
                                            SensorsDataDialogUtils.showDialog(activity3, SADisplayUtil.getStringResource(activity3, R.string.sensors_analytics_popwindow_fail));
                                        }
                                    });
                                }
                            };
                            method = method2;
                            break;
                        }
                        method = method2;
                    }
                    i++;
                } else {
                    runnable = null;
                    break;
                }
            }
            if (method != null) {
                if (runnable != null) {
                    method.invoke(null, activity, Boolean.valueOf(z), queryParameter2, runnable);
                } else {
                    method.invoke(null, activity, Boolean.valueOf(z), queryParameter2);
                }
                SchemeActivity.isPopWindow = true;
                return;
            }
            startLaunchActivity(activity);
        } catch (Exception e) {
            SALog.printStackTrace(e);
            startLaunchActivity(activity);
        }
    }

    public static void startLaunchActivity(Context context) {
        try {
            if (isSchemeActivity(context)) {
                context.startActivity(context.getPackageManager().getLaunchIntentForPackage(context.getPackageName()));
                ((SchemeActivity) context).finish();
                SALog.i(TAG, "startLaunchActivity");
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public static void showDialog(final Context context, String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(SADisplayUtil.getStringResource(context, R.string.sensors_analytics_common_title)).setMessage(str).setCancelable(false).setPositiveButton(SADisplayUtil.getStringResource(context, R.string.sensors_analytics_common_ok), new DialogInterface.OnClickListener() { // from class: com.sensorsdata.analytics.android.sdk.dialog.SensorsDataDialogUtils.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                SensorsDataDialogUtils.startLaunchActivity(context);
            }
        });
        AlertDialog create = builder.create();
        dialogShowDismissOld(create);
        try {
            create.getButton(-1).setTextColor(SupportMenu.CATEGORY_MASK);
            create.getButton(-1).setBackgroundColor(-1);
            create.getButton(-1).setAllCaps(false);
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }
}
