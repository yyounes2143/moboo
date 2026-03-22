package com.sensorsdata.analytics.android.sdk.visual;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.LruCache;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.common.base.Ascii;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.util.AppStateTools;
import com.sensorsdata.analytics.android.sdk.util.Base64Coder;
import com.sensorsdata.analytics.android.sdk.util.DeviceUtils;
import com.sensorsdata.analytics.android.sdk.util.Dispatcher;
import com.sensorsdata.analytics.android.sdk.util.JSONUtils;
import com.sensorsdata.analytics.android.sdk.util.ReflectUtil;
import com.sensorsdata.analytics.android.sdk.util.SAPageInfoUtils;
import com.sensorsdata.analytics.android.sdk.util.SAViewUtils;
import com.sensorsdata.analytics.android.sdk.util.SnapCache;
import com.sensorsdata.analytics.android.sdk.util.WebUtils;
import com.sensorsdata.analytics.android.sdk.util.WindowHelper;
import com.sensorsdata.analytics.android.sdk.util.visual.ViewNode;
import com.sensorsdata.analytics.android.sdk.util.visual.ViewUtil;
import com.sensorsdata.analytics.android.sdk.visual.model.CommonNode;
import com.sensorsdata.analytics.android.sdk.visual.model.FlutterNode;
import com.sensorsdata.analytics.android.sdk.visual.model.FlutterNodeInfo;
import com.sensorsdata.analytics.android.sdk.visual.model.NodeInfo;
import com.sensorsdata.analytics.android.sdk.visual.model.SnapInfo;
import com.sensorsdata.analytics.android.sdk.visual.model.WebNode;
import com.sensorsdata.analytics.android.sdk.visual.model.WebNodeInfo;
import com.sensorsdata.analytics.android.sdk.visual.snap.Caller;
import com.sensorsdata.analytics.android.sdk.visual.snap.PropertyDescription;
import com.sensorsdata.analytics.android.sdk.visual.snap.ResourceIds;
import com.sensorsdata.analytics.android.sdk.visual.snap.SoftWareCanvas;
import com.sensorsdata.analytics.android.sdk.visual.utils.AlertMessageUtils;
import com.sensorsdata.analytics.android.sdk.visual.utils.VisualUtil;
import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.renderer.FlutterRenderer;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class ViewSnapshot {
    private static final int JS_NOT_INTEGRATED_ALERT_TIME_OUT = 5000;
    private static final int MAX_CLASS_NAME_CACHE_SIZE = 255;
    private static final String TAG = "SA.ViewSnapshot";
    private final Handler mMainThreadHandler;
    private final List<PropertyDescription> mProperties;
    private final ResourceIds mResourceIds;
    private SnapInfo mSnapInfo = new SnapInfo();
    private final RootViewFinder mRootViewFinder = new RootViewFinder();
    private final ClassNameCache mClassnameCache = new ClassNameCache(255);

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class CachedBitmap {
        private String mImageHash = "";
        private final Paint mPaint = new Paint(2);
        private Bitmap mCached = null;

        private static byte[] concat(byte[] bArr, byte[] bArr2) {
            byte[] bArr3 = new byte[bArr.length + bArr2.length];
            System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
            System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
            return bArr3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String getImageHash() {
            return this.mImageHash;
        }

        private String toHex(byte[] bArr) {
            String str = "";
            for (int i = 0; i < bArr.length; i++) {
                str = (str + "0123456789ABCDEF".charAt((bArr[i] >> 4) & 15)) + "0123456789ABCDEF".charAt(bArr[i] & Ascii.SI);
            }
            return str;
        }

        public synchronized void recreate(int i, int i2, int i3, Bitmap bitmap) {
            byte[] bytes;
            byte[] bytes2;
            byte[] bytes3;
            Bitmap bitmap2 = this.mCached;
            if (bitmap2 == null || bitmap2.getWidth() != i || this.mCached.getHeight() != i2) {
                this.mCached = Bitmap.createBitmap(i, i2, Bitmap.Config.RGB_565);
                Bitmap bitmap3 = this.mCached;
                if (bitmap3 != null) {
                    bitmap3.setDensity(i3);
                }
            }
            if (this.mCached != null) {
                new Canvas(this.mCached).drawBitmap(bitmap, 0.0f, 0.0f, this.mPaint);
                try {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    this.mCached.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    String lastThirdMsg = NodesProcess.getInstance().getWebNodesManager().getLastThirdMsg();
                    if (!TextUtils.isEmpty(lastThirdMsg) && (bytes3 = lastThirdMsg.getBytes()) != null && bytes3.length > 0) {
                        byteArray = concat(byteArray, bytes3);
                    }
                    String lastThirdMsg2 = NodesProcess.getInstance().getFlutterNodesManager().getLastThirdMsg();
                    if (!TextUtils.isEmpty(lastThirdMsg2) && (bytes2 = lastThirdMsg2.getBytes()) != null && bytes2.length > 0) {
                        byteArray = concat(byteArray, bytes2);
                    }
                    String lastDebugInfo = VisualizedAutoTrackService.getInstance().getLastDebugInfo();
                    if (!TextUtils.isEmpty(lastDebugInfo) && (bytes = lastDebugInfo.getBytes()) != null && bytes.length > 0) {
                        byteArray = concat(byteArray, bytes);
                    }
                    this.mImageHash = toHex(MessageDigest.getInstance(SameMD5.TAG).digest(byteArray));
                } catch (Exception e) {
                    SALog.i(ViewSnapshot.TAG, "CachedBitmap.recreate;Create image_hash error=" + e);
                }
            }
        }

        public synchronized void writeBitmapJSON(Bitmap.CompressFormat compressFormat, int i, OutputStream outputStream) throws IOException {
            try {
                Bitmap bitmap = this.mCached;
                if (bitmap != null && bitmap.getWidth() != 0 && this.mCached.getHeight() != 0) {
                    outputStream.write(34);
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    this.mCached.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                    byteArrayOutputStream.flush();
                    outputStream.write(new String(Base64Coder.encode(byteArrayOutputStream.toByteArray())).getBytes());
                    outputStream.write(34);
                }
                outputStream.write(AbstractJsonLexerKt.NULL.getBytes());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* compiled from: Proguard */
    @SuppressLint({"NewApi"})
    /* loaded from: classes6.dex */
    public static class ClassNameCache extends LruCache<Class<?>, String> {
        public ClassNameCache(int i) {
            super(i);
        }

        @Override // android.util.LruCache
        public String create(Class<?> cls) {
            return cls.getCanonicalName();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class RootViewFinder implements Callable<List<RootViewInfo>> {
        private final int mClientDensity = 160;
        private final List<RootViewInfo> mRootViews = new ArrayList();
        private final CachedBitmap mCachedBitmap = new CachedBitmap();

        private static Bitmap getFlutterBitmap(Activity activity) {
            try {
                int i = FlutterActivity.FLUTTER_VIEW_ID;
                Method declaredMethod = FlutterActivity.class.getDeclaredMethod("getFlutterEngine", null);
                declaredMethod.setAccessible(true);
                Object invoke = declaredMethod.invoke(activity, null);
                int i2 = FlutterEngine.f11209Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                Method method = FlutterEngine.class.getMethod("getRenderer", null);
                method.setAccessible(true);
                Object invoke2 = method.invoke(invoke, null);
                boolean z = FlutterRenderer.debugForceSurfaceProducerGlTextures;
                Method method2 = FlutterRenderer.class.getMethod("getBitmap", null);
                method2.setAccessible(true);
                return (Bitmap) method2.invoke(invoke2, null);
            } catch (Exception e) {
                SALog.printStackTrace(e);
                return null;
            }
        }

        private void scaleBitmap(RootViewInfo rootViewInfo, Bitmap bitmap) {
            float f = 1.0f;
            if (bitmap != null) {
                int density = bitmap.getDensity();
                if (density != 0) {
                    f = 160.0f / density;
                }
                int width = bitmap.getWidth();
                int height = bitmap.getHeight();
                int width2 = (int) ((bitmap.getWidth() * f) + 0.5d);
                int height2 = (int) ((bitmap.getHeight() * f) + 0.5d);
                if (width > 0 && height > 0 && width2 > 0 && height2 > 0) {
                    this.mCachedBitmap.recreate(width2, height2, 160, bitmap);
                }
            }
            rootViewInfo.scale = f;
            rootViewInfo.screenshot = this.mCachedBitmap;
        }

        public Bitmap mergeViewLayers(View[] viewArr, RootViewInfo rootViewInfo) {
            boolean z;
            int width = rootViewInfo.rootView.getWidth();
            int height = rootViewInfo.rootView.getHeight();
            if (width == 0 || height == 0) {
                int[] deviceSize = DeviceUtils.getDeviceSize(SensorsDataAPI.sharedInstance().getSAContextManager().getContext());
                width = deviceSize[0];
                height = deviceSize[1];
                if (width == 0 || height == 0) {
                    return null;
                }
            }
            Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            SoftWareCanvas softWareCanvas = new SoftWareCanvas(createBitmap);
            int[] iArr = new int[2];
            if (ViewUtil.getMainWindowCount(viewArr) > 1) {
                z = true;
            } else {
                z = false;
            }
            WindowHelper.init();
            ViewUtil.invalidateLayerTypeView(viewArr);
            boolean z2 = false;
            for (View view : viewArr) {
                if (view.getVisibility() == 0 && view.getWidth() != 0 && view.getHeight() != 0 && ViewUtil.isWindowNeedTraverse(view, WindowHelper.getWindowPrefix(view), z)) {
                    softWareCanvas.save();
                    if (!WindowHelper.isMainWindow(view)) {
                        view.getLocationOnScreen(iArr);
                        softWareCanvas.translate(iArr[0], iArr[1]);
                        if (WindowHelper.isDialogOrPopupWindow(view) && !z2) {
                            Paint paint = new Paint();
                            paint.setColor(-1610612736);
                            softWareCanvas.drawRect(-iArr[0], -iArr[1], softWareCanvas.getWidth(), softWareCanvas.getHeight(), paint);
                            z2 = true;
                        }
                    }
                    view.draw(softWareCanvas);
                    softWareCanvas.restoreToCount(1);
                }
            }
            softWareCanvas.destroy();
            return createBitmap;
        }

        @Override // java.util.concurrent.Callable
        public List<RootViewInfo> call() throws Exception {
            FlutterNodeInfo flutterNodeInfo;
            this.mRootViews.clear();
            try {
                Activity foregroundActivity = AppStateTools.getInstance().getForegroundActivity();
                if (foregroundActivity != null) {
                    JSONObject activityPageInfo = SAPageInfoUtils.getActivityPageInfo(foregroundActivity);
                    JSONObject rNPageInfo = SAPageInfoUtils.getRNPageInfo();
                    if (activityPageInfo == null) {
                        activityPageInfo = new JSONObject();
                    }
                    JSONUtils.mergeDuplicateProperty(rNPageInfo, activityPageInfo);
                    String optString = activityPageInfo.optString("$screen_name");
                    String optString2 = activityPageInfo.optString("$title");
                    boolean instanceOfFlutterActivity = ViewUtil.instanceOfFlutterActivity(foregroundActivity);
                    if (instanceOfFlutterActivity && (flutterNodeInfo = (FlutterNodeInfo) NodesProcess.getInstance().getFlutterNodesManager().getPageInfo(SnapCache.getInstance().getCanonicalName(foregroundActivity.getClass()))) != null) {
                        String screen_name = flutterNodeInfo.getScreen_name();
                        String title = flutterNodeInfo.getTitle();
                        if (!TextUtils.isEmpty(optString)) {
                            optString = screen_name;
                        }
                        if (!TextUtils.isEmpty(title)) {
                            optString2 = title;
                        }
                    }
                    Window window = foregroundActivity.getWindow();
                    View rootView = (window == null || !window.isActive()) ? null : window.getDecorView().getRootView();
                    if (rootView == null) {
                        return this.mRootViews;
                    }
                    RootViewInfo rootViewInfo = new RootViewInfo(optString, optString2, rootView);
                    View[] sortedWindowViews = WindowHelper.getSortedWindowViews();
                    if (instanceOfFlutterActivity) {
                        scaleBitmap(rootViewInfo, getFlutterBitmap(foregroundActivity));
                        this.mRootViews.add(rootViewInfo);
                    } else if (sortedWindowViews != null && sortedWindowViews.length > 0) {
                        Bitmap mergeViewLayers = mergeViewLayers(sortedWindowViews, rootViewInfo);
                        for (View view : sortedWindowViews) {
                            if (view.getWindowVisibility() == 0 && view.getVisibility() == 0 && view.getWidth() != 0 && view.getHeight() != 0 && !TextUtils.equals(WindowHelper.getWindowPrefix(view), WindowHelper.getMainWindowPrefix()) && !WindowHelper.isCustomWindow(view)) {
                                RootViewInfo rootViewInfo2 = new RootViewInfo(optString, optString2, view.getRootView());
                                scaleBitmap(rootViewInfo2, mergeViewLayers);
                                this.mRootViews.add(rootViewInfo2);
                            }
                        }
                        if (this.mRootViews.size() == 0) {
                            scaleBitmap(rootViewInfo, mergeViewLayers);
                            this.mRootViews.add(rootViewInfo);
                        }
                    }
                }
            } catch (Throwable th) {
                SALog.d(ViewSnapshot.TAG, "" + th);
            }
            return this.mRootViews;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class RootViewInfo {
        final String activityTitle;
        final View rootView;
        final String screenName;
        CachedBitmap screenshot = null;
        float scale = 1.0f;

        public RootViewInfo(String str, String str2, View view) {
            this.screenName = str;
            this.activityTitle = str2;
            this.rootView = view;
        }
    }

    public ViewSnapshot(List<PropertyDescription> list, ResourceIds resourceIds, Handler handler) {
        this.mProperties = list;
        this.mResourceIds = resourceIds;
        this.mMainThreadHandler = handler;
    }

    private void addProperties(JSONObject jSONObject, View view) throws Exception {
        Caller caller;
        Object applyMethod;
        jSONObject.put("importantForAccessibility", true);
        Class<?> cls = view.getClass();
        for (PropertyDescription propertyDescription : this.mProperties) {
            if (propertyDescription.targetClass.isAssignableFrom(cls) && (caller = propertyDescription.accessor) != null && (applyMethod = caller.applyMethod(view)) != null) {
                if (applyMethod instanceof Number) {
                    jSONObject.put(propertyDescription.name, applyMethod);
                } else if (applyMethod instanceof Boolean) {
                    boolean booleanValue = ((Boolean) applyMethod).booleanValue();
                    if ("clickable".equals(propertyDescription.name)) {
                        if (VisualUtil.isSupportClick(view)) {
                            booleanValue = true;
                        } else if (VisualUtil.isForbiddenClick(view)) {
                            booleanValue = false;
                        }
                    }
                    jSONObject.put(propertyDescription.name, booleanValue);
                } else if (applyMethod instanceof ColorStateList) {
                    jSONObject.put(propertyDescription.name, Integer.valueOf(((ColorStateList) applyMethod).getDefaultColor()));
                } else if (applyMethod instanceof Drawable) {
                    Drawable drawable = (Drawable) applyMethod;
                    Rect bounds = drawable.getBounds();
                    JSONObject jSONObject2 = new JSONObject();
                    JSONArray jSONArray = new JSONArray();
                    for (Class<?> cls2 = drawable.getClass(); cls2 != Object.class && cls2 != null; cls2 = cls2.getSuperclass()) {
                        jSONArray.put(SnapCache.getInstance().getCanonicalName(cls2));
                    }
                    jSONObject2.put("classes", jSONArray);
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("left", bounds.left);
                    jSONObject3.put("right", bounds.right);
                    jSONObject3.put("top", bounds.top);
                    jSONObject3.put("bottom", bounds.bottom);
                    jSONObject2.put("dimensions", jSONObject3);
                    if (drawable instanceof ColorDrawable) {
                        jSONObject2.put("color", ((ColorDrawable) drawable).getColor());
                    }
                    jSONObject.put(propertyDescription.name, jSONObject2);
                } else {
                    jSONObject.put(propertyDescription.name, applyMethod.toString());
                }
            }
        }
    }

    private String getResName(View view) {
        int id = view.getId();
        if (-1 == id) {
            return null;
        }
        return this.mResourceIds.nameForId(id);
    }

    private void getVisibleRect(View view, Rect rect, boolean z) {
        if (z) {
            view.getGlobalVisibleRect(rect);
            return;
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        view.getLocalVisibleRect(rect);
        rect.offset(iArr[0], iArr[1]);
    }

    private boolean isSnapShotUpdated(String str, StringBuilder sb) {
        boolean z;
        boolean z2;
        if (str != null && sb != null) {
            z = str.equals(sb.toString());
        } else {
            z = false;
        }
        if (z && !NodesProcess.getInstance().getWebNodesManager().hasAlertInfo() && !NodesProcess.getInstance().getFlutterNodesManager().hasAlertInfo()) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (sb != null) {
            sb.delete(0, sb.length()).append(str);
        }
        return z2;
    }

    private void mergeThirdViewNodes(JSONArray jSONArray, CommonNode commonNode, View view, float f) {
        boolean z;
        int i;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("hashCode", commonNode.getId() + view.hashCode());
            jSONObject.put(FirebaseAnalytics.Param.INDEX, 0);
            if (!TextUtils.isEmpty(commonNode.get$element_content())) {
                jSONObject.put("element_content", commonNode.get$element_content());
            }
            SnapInfo snapInfo = this.mSnapInfo;
            int i2 = snapInfo.elementLevel + 1;
            snapInfo.elementLevel = i2;
            jSONObject.put("element_level", i2);
            if (f == 0.0f) {
                f = commonNode.getScale();
            }
            jSONObject.put("left", commonNode.getLeft() * f);
            jSONObject.put("top", commonNode.getTop() * f);
            jSONObject.put("width", (int) (commonNode.getWidth() * f));
            jSONObject.put("height", (int) (commonNode.getHeight() * f));
            if (commonNode.getOriginTop() * f <= view.getHeight() && commonNode.getOriginLeft() * f <= view.getWidth()) {
                z = true;
            } else {
                z = false;
            }
            if (commonNode.isVisibility() && z) {
                i = 0;
            } else {
                i = 8;
            }
            jSONObject.put("visibility", i);
            jSONObject.put("clickable", commonNode.isEnable_click());
            jSONObject.put("importantForAccessibility", true);
            jSONObject.put("is_list_view", commonNode.isIs_list_view());
            jSONObject.put("element_path", commonNode.get$element_path());
            if (!TextUtils.isEmpty(commonNode.get$element_position())) {
                jSONObject.put("element_position", commonNode.get$element_position());
            }
            this.mSnapInfo.webLibVersion = commonNode.getLib_version();
            jSONObject.put("scrollX", 0);
            jSONObject.put("scrollY", 0);
            if (commonNode instanceof WebNode) {
                WebNode webNode = (WebNode) commonNode;
                jSONObject.put("h5_title", webNode.get$title());
                jSONObject.put("tag_name", webNode.getTagName());
                jSONObject.put("url", webNode.get$url());
                if (!TextUtils.isEmpty(webNode.get$element_selector())) {
                    jSONObject.put("element_selector", webNode.get$element_selector());
                }
                jSONObject.put("list_selector", webNode.getList_selector());
                jSONObject.put("is_h5", true);
                jSONObject.put("element_platform", "h5");
            }
            if (commonNode instanceof FlutterNode) {
                FlutterNode flutterNode = (FlutterNode) commonNode;
                jSONObject.put(CampaignEx.JSON_KEY_TITLE, flutterNode.getTitle());
                jSONObject.put(FirebaseAnalytics.Param.SCREEN_NAME, flutterNode.getScreen_name());
                jSONObject.put("element_platform", "flutter");
            }
            JSONArray jSONArray2 = new JSONArray();
            if (commonNode instanceof WebNode) {
                jSONArray2.put(((WebNode) commonNode).getTagName());
            }
            Class<?> cls = view.getClass();
            do {
                jSONArray2.put(SnapCache.getInstance().getCanonicalName(cls));
                cls = cls.getSuperclass();
                if (cls == Object.class) {
                    break;
                }
            } while (cls != null);
            jSONObject.put("classes", jSONArray2);
            List<String> subelements = commonNode.getSubelements();
            JSONArray jSONArray3 = new JSONArray();
            if (subelements != null && subelements.size() > 0) {
                Iterator<String> it = subelements.iterator();
                while (it.hasNext()) {
                    jSONArray3.put(it.next() + view.hashCode());
                }
            }
            jSONObject.put("subviews", jSONArray3);
            jSONArray.put(jSONObject);
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    private void reset() {
        this.mSnapInfo = new SnapInfo();
    }

    private void snapshotFlutterView(JSONArray jSONArray, View view, List<String> list, SnapInfo snapInfo) {
        String str = snapInfo.activityName;
        if (!TextUtils.isEmpty(str)) {
            FlutterNodeInfo flutterNodeInfo = (FlutterNodeInfo) NodesProcess.getInstance().getFlutterNodesManager().getNodes(str);
            if (flutterNodeInfo != null) {
                if (flutterNodeInfo.getStatus() == NodeInfo.Status.SUCCESS) {
                    List<? extends CommonNode> nodes = flutterNodeInfo.getNodes();
                    if (nodes != null && nodes.size() > 0) {
                        Iterator<? extends CommonNode> it = nodes.iterator();
                        while (it.hasNext()) {
                            FlutterNode flutterNode = (FlutterNode) it.next();
                            mergeThirdViewNodes(jSONArray, flutterNode, view, SensorsDataAPI.sharedInstance().getSAContextManager().getContext().getResources().getDisplayMetrics().scaledDensity);
                            if (flutterNode.isRootView()) {
                                list.add(flutterNode.getId() + view.hashCode());
                            }
                        }
                        return;
                    }
                    return;
                } else if (flutterNodeInfo.getStatus() == NodeInfo.Status.FAILURE) {
                    this.mSnapInfo.flutter_alertInfos = flutterNodeInfo.getAlertInfos();
                    return;
                } else {
                    return;
                }
            }
            Dispatcher.getInstance().postDelayed(new AlertMessageUtils.AlertRunnable(AlertMessageUtils.AlertRunnable.AlertType.FLUTTER, str), 5000L);
        }
    }

    private void snapshotView(JSONArray jSONArray, final View view, int i) throws Exception {
        Activity foregroundActivity;
        if (SAViewUtils.isViewSelfVisible(view)) {
            ArrayList arrayList = new ArrayList();
            int i2 = this.mSnapInfo.elementLevel;
            if (ViewUtil.instanceOfFlutterSurfaceView(view)) {
                SnapInfo snapInfo = this.mSnapInfo;
                snapInfo.isFlutter = true;
                if (TextUtils.isEmpty(snapInfo.activityName) && (foregroundActivity = AppStateTools.getInstance().getForegroundActivity()) != null) {
                    this.mSnapInfo.activityName = SnapCache.getInstance().getCanonicalName(foregroundActivity.getClass());
                }
                FlutterNodeInfo flutterNodeInfo = (FlutterNodeInfo) NodesProcess.getInstance().getFlutterNodesManager().getPageInfo(this.mSnapInfo.activityName);
                if (flutterNodeInfo != null) {
                    this.mSnapInfo.flutterLibVersion = flutterNodeInfo.getFlutter_lib_version();
                }
                snapshotFlutterView(jSONArray, view, arrayList, this.mSnapInfo);
            }
            if (ViewUtil.instanceOfWebView(view)) {
                this.mSnapInfo.isWebView = true;
                final CountDownLatch countDownLatch = new CountDownLatch(1);
                try {
                    view.post(new Runnable() { // from class: com.sensorsdata.analytics.android.sdk.visual.ViewSnapshot.1
                        @Override // java.lang.Runnable
                        public void run() {
                            String str = (String) ReflectUtil.callMethod(view, "getUrl", new Object[0]);
                            if (!TextUtils.isEmpty(str)) {
                                ViewSnapshot.this.mSnapInfo.webViewUrl = str;
                                Float f = (Float) ReflectUtil.callMethod(view, "getScale", new Object[0]);
                                if (f != null) {
                                    ViewSnapshot.this.mSnapInfo.webViewScale = f.floatValue();
                                }
                                countDownLatch.countDown();
                                WebUtils.loadUrl(view, "javascript:window.sensorsdata_app_call_js('visualized')");
                                return;
                            }
                            countDownLatch.countDown();
                        }
                    });
                } catch (Exception e) {
                    SALog.printStackTrace(e);
                }
                try {
                    countDownLatch.await(500L, TimeUnit.MILLISECONDS);
                } catch (InterruptedException e2) {
                    SALog.printStackTrace(e2);
                }
                SALog.i(TAG, "WebView url: " + this.mSnapInfo.webViewUrl);
                if (!TextUtils.isEmpty(this.mSnapInfo.webViewUrl)) {
                    WebNodeInfo webNodeInfo = (WebNodeInfo) NodesProcess.getInstance().getWebNodesManager().getNodes(this.mSnapInfo.webViewUrl);
                    if (webNodeInfo != null) {
                        if (webNodeInfo.getStatus() == NodeInfo.Status.SUCCESS) {
                            List<? extends CommonNode> nodes = webNodeInfo.getNodes();
                            if (nodes != null && nodes.size() > 0) {
                                arrayList = new ArrayList();
                                for (CommonNode commonNode : nodes) {
                                    mergeThirdViewNodes(jSONArray, commonNode, view, this.mSnapInfo.webViewScale);
                                    if (commonNode.isRootView()) {
                                        arrayList.add(commonNode.getId() + view.hashCode());
                                    }
                                }
                            }
                        } else if (webNodeInfo.getStatus() == NodeInfo.Status.FAILURE) {
                            this.mSnapInfo.alertInfos = webNodeInfo.getAlertInfos();
                        }
                    } else {
                        Dispatcher.getInstance().postDelayed(new AlertMessageUtils.AlertRunnable(AlertMessageUtils.AlertRunnable.AlertType.H5, this.mSnapInfo.webViewUrl), 5000L);
                    }
                }
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("hashCode", view.hashCode());
            jSONObject.put("id", view.getId());
            jSONObject.put(FirebaseAnalytics.Param.INDEX, SAViewUtils.getChildIndex(view.getParent(), view));
            if (!ViewUtil.instanceOfWebView(view) && !ViewUtil.instanceOfFlutterSurfaceView(view)) {
                SnapInfo snapInfo2 = this.mSnapInfo;
                int i3 = snapInfo2.elementLevel + 1;
                snapInfo2.elementLevel = i3;
                jSONObject.put("element_level", i3);
            } else {
                jSONObject.put("element_level", i2);
            }
            jSONObject.put("element_selector", SAViewUtils.getElementSelector(view));
            JSONObject screenNameAndTitle = VisualUtil.getScreenNameAndTitle(view, this.mSnapInfo);
            if (screenNameAndTitle != null) {
                String optString = screenNameAndTitle.optString("$screen_name");
                String optString2 = screenNameAndTitle.optString("$title");
                if (!TextUtils.isEmpty(optString)) {
                    jSONObject.put(FirebaseAnalytics.Param.SCREEN_NAME, optString);
                }
                if (!TextUtils.isEmpty(optString2)) {
                    jSONObject.put(CampaignEx.JSON_KEY_TITLE, optString2);
                }
            }
            ViewNode viewNode = ViewUtil.getViewNode(view, i, true);
            if (viewNode != null) {
                if (!TextUtils.isEmpty(viewNode.getViewPath())) {
                    jSONObject.put("element_path", viewNode.getViewPath());
                }
                if (!TextUtils.isEmpty(viewNode.getViewPosition())) {
                    jSONObject.put("element_position", viewNode.getViewPosition());
                }
                if (!TextUtils.isEmpty(viewNode.getViewContent()) && VisualUtil.isSupportElementContent(view)) {
                    jSONObject.put("element_content", viewNode.getViewContent());
                }
                jSONObject.put("is_list_view", viewNode.isListView());
            }
            jSONObject.put("element_platform", "android");
            jSONObject.put("sa_id_name", getResName(view));
            try {
                String str = (String) view.getTag(R.id.sensors_analytics_tag_view_id);
                if (!TextUtils.isEmpty(str)) {
                    jSONObject.put("sa_id_name", str);
                }
            } catch (Exception e3) {
                SALog.printStackTrace(e3);
            }
            if (!WindowHelper.isMainWindow(view.getRootView())) {
                if (WindowHelper.isDecorView(view.getClass())) {
                    DisplayMetrics displayMetrics = view.getContext().getResources().getDisplayMetrics();
                    int i4 = displayMetrics.widthPixels;
                    int i5 = displayMetrics.heightPixels;
                    jSONObject.put("top", view.getTop());
                    jSONObject.put("left", view.getLeft());
                    jSONObject.put("width", i4);
                    jSONObject.put("height", i5);
                } else {
                    ViewParent parent = view.getParent();
                    if (parent != null && WindowHelper.isDecorView(parent.getClass())) {
                        Rect rect = new Rect();
                        getVisibleRect(view, rect, false);
                        jSONObject.put("top", rect.top);
                        jSONObject.put("left", rect.left);
                        jSONObject.put("width", rect.width());
                        jSONObject.put("height", rect.height());
                    } else {
                        jSONObject.put("top", view.getTop());
                        jSONObject.put("left", view.getLeft());
                        jSONObject.put("width", view.getWidth());
                        jSONObject.put("height", view.getHeight());
                    }
                }
            } else {
                jSONObject.put("top", view.getTop());
                jSONObject.put("left", view.getLeft());
                jSONObject.put("width", view.getWidth());
                jSONObject.put("height", view.getHeight());
            }
            int scrollX = view.getScrollX();
            if ((view instanceof TextView) && ((TextView) view).getMaxLines() == 1) {
                scrollX = 0;
            }
            if (ViewUtil.instanceOfX5WebView(view)) {
                try {
                    jSONObject.put("scrollX", ReflectUtil.callMethod(view, "getWebScrollX", new Object[0]));
                    jSONObject.put("scrollY", ReflectUtil.callMethod(view, "getWebScrollY", new Object[0]));
                } catch (Exception e4) {
                    SALog.printStackTrace(e4);
                }
            } else {
                jSONObject.put("scrollX", scrollX);
                jSONObject.put("scrollY", view.getScrollY());
            }
            jSONObject.put("visibility", VisualUtil.getVisibility(view));
            float translationX = view.getTranslationX();
            float translationY = view.getTranslationY();
            jSONObject.put("translationX", translationX);
            jSONObject.put("translationY", translationY);
            JSONArray jSONArray2 = new JSONArray();
            Class<?> cls = view.getClass();
            do {
                jSONArray2.put(this.mClassnameCache.get(cls));
                cls = cls.getSuperclass();
                if (cls == Object.class) {
                    break;
                }
            } while (cls != null);
            jSONObject.put("classes", jSONArray2);
            addProperties(jSONObject, view);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof RelativeLayout.LayoutParams) {
                int[] rules = ((RelativeLayout.LayoutParams) layoutParams).getRules();
                JSONArray jSONArray3 = new JSONArray();
                for (int i6 : rules) {
                    jSONArray3.put(i6);
                }
                jSONObject.put("layoutRules", jSONArray3);
            }
            JSONArray jSONArray4 = new JSONArray();
            if (arrayList.size() > 0) {
                int size = arrayList.size();
                int i7 = 0;
                while (i7 < size) {
                    Object obj = arrayList.get(i7);
                    i7++;
                    jSONArray4.put((String) obj);
                }
            } else if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i8 = 0; i8 < childCount; i8++) {
                    View childAt = viewGroup.getChildAt(i8);
                    if (childAt != null) {
                        jSONArray4.put(childAt.hashCode());
                    }
                }
            }
            jSONObject.put("subviews", jSONArray4);
            jSONArray.put(jSONObject);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup2 = (ViewGroup) view;
            int childCount2 = viewGroup2.getChildCount();
            for (int i9 = 0; i9 < childCount2; i9++) {
                View childAt2 = viewGroup2.getChildAt(i9);
                if (childAt2 != null) {
                    snapshotView(jSONArray, childAt2, i9);
                }
            }
        }
    }

    private void snapshotViewHierarchy(JSONArray jSONArray, View view) throws Exception {
        reset();
        snapshotView(jSONArray, view, 0);
        NodesProcess.getInstance().getWebNodesManager().setHasThirdView(this.mSnapInfo.isWebView);
        NodesProcess.getInstance().getFlutterNodesManager().setHasThirdView(this.mSnapInfo.isFlutter);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01d9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.sensorsdata.analytics.android.sdk.visual.model.SnapInfo snapshots(java.io.OutputStream r19, java.lang.StringBuilder r20) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 514
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sensorsdata.analytics.android.sdk.visual.ViewSnapshot.snapshots(java.io.OutputStream, java.lang.StringBuilder):com.sensorsdata.analytics.android.sdk.visual.model.SnapInfo");
    }
}
