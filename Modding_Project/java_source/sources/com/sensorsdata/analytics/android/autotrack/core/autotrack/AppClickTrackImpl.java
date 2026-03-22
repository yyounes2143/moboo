package com.sensorsdata.analytics.android.autotrack.core.autotrack;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.GridView;
import android.widget.HeaderViewListAdapter;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.TabHost;
import androidx.appcompat.app.AlertDialog;
import com.google.android.material.tabs.TabLayout;
import com.mbridge.msdk.MBridgeConstans;
import com.sensorsdata.analytics.android.autotrack.core.beans.AutoTrackConstants;
import com.sensorsdata.analytics.android.autotrack.core.beans.ViewContext;
import com.sensorsdata.analytics.android.autotrack.core.business.SAPageTools;
import com.sensorsdata.analytics.android.autotrack.utils.AopUtil;
import com.sensorsdata.analytics.android.autotrack.utils.AutoTrackViewUtils;
import com.sensorsdata.analytics.android.autotrack.utils.KeyboardViewUtil;
import com.sensorsdata.analytics.android.sdk.R;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsAdapterViewItemTrackProperties;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.SensorsExpandableListViewItemTrackProperties;
import com.sensorsdata.analytics.android.sdk.core.SACoreHelper;
import com.sensorsdata.analytics.android.sdk.core.event.InputData;
import com.sensorsdata.analytics.android.sdk.core.mediator.Modules;
import com.sensorsdata.analytics.android.sdk.core.mediator.SAModuleManager;
import com.sensorsdata.analytics.android.sdk.internal.beans.EventType;
import com.sensorsdata.analytics.android.sdk.util.JSONUtils;
import com.sensorsdata.analytics.android.sdk.util.ReflectUtil;
import com.sensorsdata.analytics.android.sdk.util.SADataHelper;
import com.sensorsdata.analytics.android.sdk.util.SAFragmentUtils;
import com.sensorsdata.analytics.android.sdk.util.SAPageInfoUtils;
import com.sensorsdata.analytics.android.sdk.util.SAViewUtils;
import com.sensorsdata.analytics.android.sdk.util.WindowHelper;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class AppClickTrackImpl {
    private static final String TAG = "AppClickTrackImpl";
    private static final HashMap<Integer, Long> eventTimestamp = new HashMap<>();

    public static JSONObject buildPageProperty(Activity activity, Object obj) {
        JSONObject jSONObject = new JSONObject();
        if (obj != null) {
            JSONUtils.mergeJSONObject(SAPageInfoUtils.getFragmentPageInfo(activity, obj), jSONObject);
            return jSONObject;
        }
        if (activity != null) {
            JSONUtils.mergeJSONObject(SAPageInfoUtils.getActivityPageInfo(activity), jSONObject);
        }
        return jSONObject;
    }

    private static ViewContext getAppClickViewContext(View view, Class<?> cls) {
        return getAppClickViewContext(null, view, cls);
    }

    private static JSONObject getExpandListViewExtendProperty(ExpandableListView expandableListView, int i, int i2) {
        try {
            ExpandableListAdapter expandableListAdapter = expandableListView.getExpandableListAdapter();
            if (expandableListAdapter instanceof SensorsExpandableListViewItemTrackProperties) {
                SensorsExpandableListViewItemTrackProperties sensorsExpandableListViewItemTrackProperties = (SensorsExpandableListViewItemTrackProperties) expandableListAdapter;
                if (i2 == -1) {
                    return sensorsExpandableListViewItemTrackProperties.getSensorsGroupItemTrackProperties(i);
                }
                return sensorsExpandableListViewItemTrackProperties.getSensorsChildItemTrackProperties(i, i2);
            }
            return null;
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return null;
        }
    }

    private static boolean isAppClickIgnore(SensorsDataAPI sensorsDataAPI) {
        if (sensorsDataAPI.isAutoTrackEnabled() && !sensorsDataAPI.isAutoTrackEventTypeIgnored(SensorsDataAPI.AutoTrackEventType.APP_CLICK)) {
            return false;
        }
        return true;
    }

    private static boolean isDeBounceTrack(Object obj) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        HashMap<Integer, Long> hashMap = eventTimestamp;
        Long l = hashMap.get(Integer.valueOf(obj.hashCode()));
        if (l != null && elapsedRealtime - l.longValue() < 500) {
            return true;
        }
        hashMap.put(Integer.valueOf(obj.hashCode()), Long.valueOf(elapsedRealtime));
        return false;
    }

    public static void track(final SensorsDataAPI sensorsDataAPI, final String str, String str2) {
        final JSONObject jSONObject;
        try {
            if (!TextUtils.isEmpty(str)) {
                if (!TextUtils.isEmpty(str2)) {
                    try {
                        jSONObject = new JSONObject(str2);
                    } catch (Exception e) {
                        SALog.printStackTrace(e);
                    }
                    SACoreHelper.getInstance().trackQueueEvent(new Runnable() { // from class: com.sensorsdata.analytics.android.autotrack.core.autotrack.AppClickTrackImpl.1
                        @Override // java.lang.Runnable
                        public void run() {
                            SensorsDataAPI.this.getSAContextManager().trackEvent(new InputData().setEventName(str).setProperties(jSONObject).setEventType(EventType.TRACK));
                        }
                    });
                }
                jSONObject = null;
                SACoreHelper.getInstance().trackQueueEvent(new Runnable() { // from class: com.sensorsdata.analytics.android.autotrack.core.autotrack.AppClickTrackImpl.1
                    @Override // java.lang.Runnable
                    public void run() {
                        SensorsDataAPI.this.getSAContextManager().trackEvent(new InputData().setEventName(str).setProperties(jSONObject).setEventType(EventType.TRACK));
                    }
                });
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    private static void trackAutoEvent(final SensorsDataAPI sensorsDataAPI, final JSONObject jSONObject, final View view) {
        final JSONObject appendLibMethodAutoTrack = SADataHelper.appendLibMethodAutoTrack(jSONObject);
        SACoreHelper.getInstance().trackQueueEvent(new Runnable() { // from class: com.sensorsdata.analytics.android.autotrack.core.autotrack.AppClickTrackImpl.2
            @Override // java.lang.Runnable
            public void run() {
                if (view != null) {
                    SAModuleManager.getInstance().invokeModuleFunction(Modules.Visual.MODULE_NAME, Modules.Visual.METHOD_MERGE_VISUAL_PROPERTIES, jSONObject, view);
                }
                sensorsDataAPI.getSAContextManager().trackEvent(new InputData().setEventName("$AppClick").setEventType(EventType.TRACK).setProperties(appendLibMethodAutoTrack));
            }
        });
    }

    public static void trackDialog(SensorsDataAPI sensorsDataAPI, DialogInterface dialogInterface, int i) {
        Dialog dialog;
        Button button;
        Class<AlertDialog> cls = AlertDialog.class;
        try {
            if (!isAppClickIgnore(sensorsDataAPI) && !SAViewUtils.isViewIgnored(Dialog.class)) {
                JSONObject jSONObject = new JSONObject();
                View view = null;
                if (dialogInterface instanceof Dialog) {
                    dialog = (Dialog) dialogInterface;
                } else {
                    dialog = null;
                }
                if (dialog != null && !isDeBounceTrack(dialog)) {
                    Activity activityOfView = SAViewUtils.getActivityOfView(dialog.getContext(), null);
                    if (activityOfView == null) {
                        activityOfView = dialog.getOwnerActivity();
                    }
                    if (activityOfView != null && !sensorsDataAPI.isActivityAutoTrackAppClickIgnored(activityOfView.getClass())) {
                        JSONUtils.mergeJSONObject(SAPageInfoUtils.getActivityPageInfo(activityOfView), jSONObject);
                        try {
                            Window window = dialog.getWindow();
                            if (window != null && window.isActive()) {
                                String str = (String) dialog.getWindow().getDecorView().getTag(R.id.sensors_analytics_tag_view_id);
                                if (!TextUtils.isEmpty(str)) {
                                    jSONObject.put(AutoTrackConstants.ELEMENT_ID, str);
                                }
                            }
                        } catch (Exception e) {
                            SALog.printStackTrace(e);
                        }
                        JSONUtils.mergeDuplicateProperty(SAPageInfoUtils.getRNPageInfo(), jSONObject);
                        jSONObject.put(AutoTrackConstants.ELEMENT_TYPE, "Dialog");
                        try {
                            try {
                                int i2 = AlertDialog.f426Wwwwwwwwwwwwwwwwwwwwwwwww;
                            } catch (Exception unused) {
                                cls = null;
                            }
                        } catch (Exception unused2) {
                            int i3 = AlertDialog.f426Wwwwwwwwwwwwwwwwwwwwwwwww;
                        }
                        if (cls != null) {
                            if (dialog instanceof android.app.AlertDialog) {
                                android.app.AlertDialog alertDialog = (android.app.AlertDialog) dialog;
                                button = alertDialog.getButton(i);
                                if (button != null) {
                                    if (!TextUtils.isEmpty(button.getText())) {
                                        jSONObject.put(AutoTrackConstants.ELEMENT_CONTENT, button.getText());
                                    }
                                } else {
                                    ListView listView = alertDialog.getListView();
                                    if (listView != null) {
                                        Object item = listView.getAdapter().getItem(i);
                                        if (item != null && (item instanceof String)) {
                                            jSONObject.put(AutoTrackConstants.ELEMENT_CONTENT, item);
                                        }
                                        view = listView.getChildAt(i);
                                    }
                                    trackAutoEvent(sensorsDataAPI, jSONObject, view);
                                }
                            } else {
                                if (cls.isInstance(dialog)) {
                                    try {
                                        button = (Button) dialog.getClass().getMethod("getButton", Integer.TYPE).invoke(dialog, Integer.valueOf(i));
                                    } catch (Exception unused3) {
                                        button = null;
                                    }
                                    if (button != null) {
                                        if (!TextUtils.isEmpty(button.getText())) {
                                            jSONObject.put(AutoTrackConstants.ELEMENT_CONTENT, button.getText());
                                        }
                                    } else {
                                        try {
                                            ListView listView2 = (ListView) dialog.getClass().getMethod("getListView", null).invoke(dialog, null);
                                            if (listView2 != null) {
                                                Object item2 = listView2.getAdapter().getItem(i);
                                                if (item2 != null && (item2 instanceof String)) {
                                                    jSONObject.put(AutoTrackConstants.ELEMENT_CONTENT, item2);
                                                }
                                                view = listView2.getChildAt(i);
                                            }
                                        } catch (Exception unused4) {
                                        }
                                    }
                                }
                                trackAutoEvent(sensorsDataAPI, jSONObject, view);
                            }
                            view = button;
                            trackAutoEvent(sensorsDataAPI, jSONObject, view);
                        }
                    }
                }
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    public static void trackDrawerClosed(SensorsDataAPI sensorsDataAPI, View view) {
        if (view != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(AutoTrackConstants.ELEMENT_CONTENT, "Close");
                sensorsDataAPI.setViewProperties(view, jSONObject);
                trackViewOnClick(sensorsDataAPI, view, view.isPressed());
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
    }

    public static void trackDrawerOpened(SensorsDataAPI sensorsDataAPI, View view) {
        if (view != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(AutoTrackConstants.ELEMENT_CONTENT, "Open");
                sensorsDataAPI.setViewProperties(view, jSONObject);
                trackViewOnClick(sensorsDataAPI, view, view.isPressed());
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
    }

    public static void trackExpandableListViewOnChildClick(SensorsDataAPI sensorsDataAPI, ExpandableListView expandableListView, View view, int i, int i2) {
        ViewContext appClickViewContext;
        String viewContent;
        if (expandableListView != null && view != null) {
            try {
                if (!SAViewUtils.isViewIgnored(view) && !isAppClickIgnore(sensorsDataAPI) && (appClickViewContext = getAppClickViewContext(expandableListView, ExpandableListView.class)) != null) {
                    JSONObject buildPageProperty = buildPageProperty(appClickViewContext.activity, appClickViewContext.fragment);
                    String viewId = SAViewUtils.getViewId(expandableListView);
                    if (!TextUtils.isEmpty(viewId)) {
                        buildPageProperty.put(AutoTrackConstants.ELEMENT_ID, viewId);
                    }
                    buildPageProperty.put(AutoTrackConstants.ELEMENT_TYPE, "ExpandableListView");
                    if (view instanceof ViewGroup) {
                        viewContent = null;
                        try {
                            viewContent = SAViewUtils.traverseView(new StringBuilder(), (ViewGroup) view);
                            if (!TextUtils.isEmpty(viewContent)) {
                                viewContent = viewContent.substring(0, viewContent.length() - 1);
                            }
                        } catch (Exception e) {
                            SALog.printStackTrace(e);
                        }
                    } else {
                        viewContent = SAViewUtils.getViewContent(view);
                    }
                    if (!TextUtils.isEmpty(viewContent)) {
                        buildPageProperty.put(AutoTrackConstants.ELEMENT_CONTENT, viewContent);
                    }
                    JSONUtils.mergeJSONObject(getExpandListViewExtendProperty(expandableListView, i, i2), buildPageProperty);
                    JSONUtils.mergeJSONObject((JSONObject) view.getTag(com.sensorsdata.analytics.android.autotrack.R.id.sensors_analytics_tag_view_properties), buildPageProperty);
                    trackAutoEvent(sensorsDataAPI, buildPageProperty, view);
                }
            } catch (Exception e2) {
                SALog.printStackTrace(e2);
            }
        }
    }

    public static void trackExpandableListViewOnGroupClick(SensorsDataAPI sensorsDataAPI, ExpandableListView expandableListView, View view, int i) {
        ViewContext appClickViewContext;
        String viewContent;
        if (expandableListView != null && view != null) {
            try {
                if (!isAppClickIgnore(sensorsDataAPI) && (appClickViewContext = getAppClickViewContext(expandableListView, ExpandableListView.class)) != null) {
                    JSONObject buildPageProperty = buildPageProperty(appClickViewContext.activity, appClickViewContext.fragment);
                    String viewId = SAViewUtils.getViewId(expandableListView);
                    if (!TextUtils.isEmpty(viewId)) {
                        buildPageProperty.put(AutoTrackConstants.ELEMENT_ID, viewId);
                    }
                    buildPageProperty.put(AutoTrackConstants.ELEMENT_TYPE, "ExpandableListView");
                    if (view instanceof ViewGroup) {
                        viewContent = null;
                        try {
                            viewContent = SAViewUtils.traverseView(new StringBuilder(), (ViewGroup) view);
                            if (!TextUtils.isEmpty(viewContent)) {
                                viewContent = viewContent.substring(0, viewContent.length() - 1);
                            }
                        } catch (Exception e) {
                            SALog.printStackTrace(e);
                        }
                    } else {
                        viewContent = SAViewUtils.getViewContent(view);
                    }
                    if (!TextUtils.isEmpty(viewContent)) {
                        buildPageProperty.put(AutoTrackConstants.ELEMENT_CONTENT, viewContent);
                    }
                    JSONUtils.mergeJSONObject(getExpandListViewExtendProperty(expandableListView, i, -1), buildPageProperty);
                    JSONUtils.mergeJSONObject((JSONObject) view.getTag(com.sensorsdata.analytics.android.autotrack.R.id.sensors_analytics_tag_view_properties), buildPageProperty);
                    trackAutoEvent(sensorsDataAPI, buildPageProperty, view);
                }
            } catch (Exception e2) {
                SALog.printStackTrace(e2);
            }
        }
    }

    public static void trackListView(SensorsDataAPI sensorsDataAPI, AdapterView<?> adapterView, View view, int i) {
        String str;
        Class cls;
        if (view != null) {
            try {
                if (!isAppClickIgnore(sensorsDataAPI) && !SAViewUtils.isViewIgnored(adapterView) && !KeyboardViewUtil.isKeyboardView(view)) {
                    if (adapterView instanceof ListView) {
                        cls = ListView.class;
                        str = "ListView";
                    } else if (adapterView instanceof GridView) {
                        cls = GridView.class;
                        str = "GridView";
                    } else if (!(adapterView instanceof Spinner)) {
                        str = "";
                        cls = null;
                    } else {
                        cls = Spinner.class;
                        str = "Spinner";
                    }
                    ViewContext appClickViewContext = getAppClickViewContext(adapterView, view, cls);
                    if (appClickViewContext != null) {
                        JSONObject buildPageProperty = buildPageProperty(appClickViewContext.activity, appClickViewContext.fragment);
                        if (!TextUtils.isEmpty(str)) {
                            buildPageProperty.put(AutoTrackConstants.ELEMENT_TYPE, str);
                        }
                        String viewId = SAViewUtils.getViewId(adapterView);
                        if (!TextUtils.isEmpty(viewId)) {
                            buildPageProperty.put(AutoTrackConstants.ELEMENT_ID, viewId);
                        }
                        Object adapter = adapterView.getAdapter();
                        if (adapter instanceof HeaderViewListAdapter) {
                            adapter = ((HeaderViewListAdapter) adapter).getWrappedAdapter();
                        }
                        if (adapter instanceof SensorsAdapterViewItemTrackProperties) {
                            try {
                                JSONUtils.mergeJSONObject(((SensorsAdapterViewItemTrackProperties) adapter).getSensorsItemTrackProperties(i), buildPageProperty);
                            } catch (JSONException e) {
                                SALog.printStackTrace(e);
                            }
                        }
                        String viewContent = SAViewUtils.getViewContent(view);
                        if (!TextUtils.isEmpty(viewContent)) {
                            buildPageProperty.put(AutoTrackConstants.ELEMENT_CONTENT, viewContent);
                        }
                        JSONUtils.mergeJSONObject((JSONObject) view.getTag(com.sensorsdata.analytics.android.autotrack.R.id.sensors_analytics_tag_view_properties), buildPageProperty);
                        trackAutoEvent(sensorsDataAPI, buildPageProperty, view);
                    }
                }
            } catch (Exception e2) {
                SALog.printStackTrace(e2);
            }
        }
    }

    public static void trackMenuItem(SensorsDataAPI sensorsDataAPI, Object obj, MenuItem menuItem) {
        ViewContext appClickViewContext;
        if (menuItem != null) {
            try {
                if (!isDeBounceTrack(menuItem) && !isAppClickIgnore(sensorsDataAPI) && (appClickViewContext = getAppClickViewContext(obj, WindowHelper.getClickView(menuItem), MenuItem.class)) != null) {
                    JSONObject buildPageProperty = buildPageProperty(appClickViewContext.activity, appClickViewContext.fragment);
                    try {
                        Activity activity = appClickViewContext.activity;
                        if (activity != null) {
                            String resourceEntryName = activity.getResources().getResourceEntryName(menuItem.getItemId());
                            if (!TextUtils.isEmpty(resourceEntryName)) {
                                buildPageProperty.put(AutoTrackConstants.ELEMENT_ID, resourceEntryName);
                            }
                        }
                    } catch (Exception e) {
                        SALog.printStackTrace(e);
                    }
                    if (menuItem.getTitle() != null) {
                        String charSequence = menuItem.getTitle().toString();
                        if (appClickViewContext.view != null && TextUtils.isEmpty(charSequence)) {
                            charSequence = SAViewUtils.getViewContent(appClickViewContext.view);
                        }
                        buildPageProperty.put(AutoTrackConstants.ELEMENT_CONTENT, charSequence);
                    }
                    buildPageProperty.put(AutoTrackConstants.ELEMENT_TYPE, "MenuItem");
                    trackAutoEvent(sensorsDataAPI, buildPageProperty, appClickViewContext.view);
                }
            } catch (Exception e2) {
                SALog.printStackTrace(e2);
            }
        }
    }

    public static void trackRadioGroup(SensorsDataAPI sensorsDataAPI, RadioGroup radioGroup, int i) {
        View findViewById;
        ViewContext appClickViewContext;
        RadioButton radioButton;
        Exception e;
        Activity activity;
        if (radioGroup != null) {
            try {
                if (!isAppClickIgnore(sensorsDataAPI) && (findViewById = radioGroup.findViewById(i)) != null && findViewById.isPressed() && (appClickViewContext = getAppClickViewContext(radioGroup, RadioGroup.class)) != null) {
                    JSONObject buildPageProperty = buildPageProperty(appClickViewContext.activity, appClickViewContext.fragment);
                    String viewId = SAViewUtils.getViewId(radioGroup);
                    if (!TextUtils.isEmpty(viewId)) {
                        buildPageProperty.put(AutoTrackConstants.ELEMENT_ID, viewId);
                    }
                    buildPageProperty.put(AutoTrackConstants.ELEMENT_TYPE, SAViewUtils.getViewType(findViewById));
                    RadioButton radioButton2 = null;
                    try {
                        activity = appClickViewContext.activity;
                    } catch (Exception e2) {
                        radioButton = null;
                        e = e2;
                    }
                    if (activity != null) {
                        radioButton = (RadioButton) activity.findViewById(radioGroup.getCheckedRadioButtonId());
                        if (radioButton != null) {
                            try {
                                if (!TextUtils.isEmpty(radioButton.getText())) {
                                    buildPageProperty.put(AutoTrackConstants.ELEMENT_CONTENT, radioButton.getText().toString());
                                }
                            } catch (Exception e3) {
                                e = e3;
                                SALog.printStackTrace(e);
                                radioButton2 = radioButton;
                                JSONUtils.mergeJSONObject((JSONObject) radioGroup.getTag(com.sensorsdata.analytics.android.autotrack.R.id.sensors_analytics_tag_view_properties), buildPageProperty);
                                trackAutoEvent(sensorsDataAPI, buildPageProperty, radioButton2);
                            }
                        }
                        radioButton2 = radioButton;
                    }
                    JSONUtils.mergeJSONObject((JSONObject) radioGroup.getTag(com.sensorsdata.analytics.android.autotrack.R.id.sensors_analytics_tag_view_properties), buildPageProperty);
                    trackAutoEvent(sensorsDataAPI, buildPageProperty, radioButton2);
                }
            } catch (Exception e4) {
                SALog.printStackTrace(e4);
            }
        }
    }

    public static void trackTabHost(SensorsDataAPI sensorsDataAPI, String str) {
        ViewContext appClickViewContext;
        try {
            if (!isAppClickIgnore(sensorsDataAPI) && (appClickViewContext = getAppClickViewContext(AutoTrackViewUtils.getTabView(str), TabHost.class)) != null) {
                JSONObject jSONObject = null;
                try {
                    jSONObject = buildPageProperty(appClickViewContext.activity, appClickViewContext.fragment);
                    String viewContent = SAViewUtils.getViewContent(appClickViewContext.view);
                    if (!TextUtils.isEmpty(viewContent)) {
                        str = viewContent;
                    }
                    jSONObject.put(AutoTrackConstants.ELEMENT_CONTENT, str);
                } catch (Exception e) {
                    SALog.printStackTrace(e);
                }
                if (jSONObject == null) {
                    jSONObject = new JSONObject();
                }
                jSONObject.put(AutoTrackConstants.ELEMENT_TYPE, "TabHost");
                trackAutoEvent(sensorsDataAPI, jSONObject, appClickViewContext.view);
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    public static void trackTabLayoutSelected(SensorsDataAPI sensorsDataAPI, Object obj, Object obj2) {
        View tabLayout;
        ViewContext tabLayoutContext;
        boolean isBindViewPager;
        Activity activity;
        if (obj2 != null) {
            try {
                if (!isDeBounceTrack(obj2) && !isAppClickIgnore(sensorsDataAPI) && (tabLayoutContext = AutoTrackViewUtils.getTabLayoutContext(obj, (tabLayout = AutoTrackViewUtils.getTabLayout(obj2)))) != null) {
                    Activity activity2 = tabLayoutContext.activity;
                    if (activity2 == null || !sensorsDataAPI.isActivityAutoTrackAppClickIgnored(activity2.getClass())) {
                        Object obj3 = tabLayoutContext.fragment;
                        if (obj3 == null || !sensorsDataAPI.isActivityAutoTrackAppClickIgnored(obj3.getClass())) {
                            JSONObject buildPageProperty = buildPageProperty(tabLayoutContext.activity, tabLayoutContext.fragment);
                            buildPageProperty.put(AutoTrackConstants.ELEMENT_TYPE, "TabLayout");
                            View view = (View) ReflectUtil.findField(TabLayout.Tab.class, obj2, "mCustomView", "customView");
                            String tabLayoutText = AutoTrackViewUtils.getTabLayoutText(view, obj2);
                            if (tabLayoutText != null) {
                                buildPageProperty.put(AutoTrackConstants.ELEMENT_CONTENT, tabLayoutText);
                            }
                            if (view == null || view.getId() == -1) {
                                view = tabLayout;
                            }
                            if (view != null) {
                                if (view.getId() != -1 && (activity = tabLayoutContext.activity) != null) {
                                    String resourceEntryName = activity.getResources().getResourceEntryName(view.getId());
                                    if (!TextUtils.isEmpty(resourceEntryName)) {
                                        buildPageProperty.put(AutoTrackConstants.ELEMENT_ID, resourceEntryName);
                                    }
                                }
                                JSONUtils.mergeJSONObject((JSONObject) view.getTag(com.sensorsdata.analytics.android.autotrack.R.id.sensors_analytics_tag_view_properties), buildPageProperty);
                            }
                            View view2 = (View) ReflectUtil.findField(TabLayout.Tab.class, obj2, MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW);
                            if (view2 == null) {
                                view2 = (View) ReflectUtil.findField(TabLayout.Tab.class, obj2, "mView");
                            }
                            if (tabLayout != null && view2 != null && (((isBindViewPager = AutoTrackViewUtils.isBindViewPager(tabLayout)) && !view2.isPressed()) || (!isBindViewPager && view2.isPressed()))) {
                                buildPageProperty.put("$referrer_title", SAPageTools.getCurrentTitle());
                            }
                            trackAutoEvent(sensorsDataAPI, buildPageProperty, view2);
                        }
                    }
                }
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
    }

    public static void trackViewOnClick(SensorsDataAPI sensorsDataAPI, View view, boolean z) {
        ViewContext appClickViewContext;
        JSONObject injectClickInfo;
        if (view != null) {
            try {
                if (!isAppClickIgnore(sensorsDataAPI) && !isDeBounceTrack(view) && !KeyboardViewUtil.isKeyboardView(view) && (appClickViewContext = getAppClickViewContext(view, view.getClass())) != null && (injectClickInfo = AopUtil.injectClickInfo(appClickViewContext, new JSONObject(), z)) != null) {
                    trackAutoEvent(sensorsDataAPI, injectClickInfo, view);
                }
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
    }

    private static ViewContext getAppClickViewContext(Object obj, View view, Class<?> cls) {
        if (SAViewUtils.isViewIgnored(cls)) {
            return null;
        }
        Context context = obj instanceof Context ? (Context) obj : null;
        if (view != null) {
            if (SAViewUtils.isViewIgnored(view)) {
                return null;
            }
            if (context == null && (context = view.getContext()) == null) {
                return null;
            }
        }
        Activity activityOfView = SAViewUtils.getActivityOfView(context, view);
        if (activityOfView == null || !SensorsDataAPI.sharedInstance().isActivityAutoTrackAppClickIgnored(activityOfView.getClass())) {
            Object fragmentFromView = SAFragmentUtils.getFragmentFromView(view, activityOfView);
            if (fragmentFromView == null || !SensorsDataAPI.sharedInstance().isActivityAutoTrackAppClickIgnored(fragmentFromView.getClass())) {
                return new ViewContext(activityOfView, fragmentFromView, view);
            }
            return null;
        }
        return null;
    }
}
