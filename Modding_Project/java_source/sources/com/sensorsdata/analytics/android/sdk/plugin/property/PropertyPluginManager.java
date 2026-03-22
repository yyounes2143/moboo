package com.sensorsdata.analytics.android.sdk.plugin.property;

import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.core.SAContextManager;
import com.sensorsdata.analytics.android.sdk.plugin.property.beans.SAPropertiesFetcher;
import com.sensorsdata.analytics.android.sdk.plugin.property.beans.SAPropertyFilter;
import com.sensorsdata.analytics.android.sdk.plugin.property.impl.InternalCustomPropertyPlugin;
import com.sensorsdata.analytics.android.sdk.plugin.property.impl.RealTimePropertyPlugin;
import com.sensorsdata.analytics.android.sdk.plugin.property.impl.ReferrerTitlePlugin;
import com.sensorsdata.analytics.android.sdk.plugin.property.impl.SAPresetPropertyPlugin;
import com.sensorsdata.analytics.android.sdk.plugin.property.impl.SASuperPropertyPlugin;
import com.sensorsdata.analytics.android.sdk.util.JSONUtils;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class PropertyPluginManager {
    private static final String TAG = "SA.SAPropertyPluginManager";
    private List<SAPropertyPlugin> mPluginsList = new ArrayList();
    private final Map<String, SAPropertyPlugin> mPluginMap = DesugarCollections.synchronizedMap(new LinkedHashMap());

    public PropertyPluginManager(SensorsDataAPI sensorsDataAPI, SAContextManager sAContextManager) {
        registerDefaultProperty(sensorsDataAPI, sAContextManager);
    }

    private void registerDefaultProperty(SensorsDataAPI sensorsDataAPI, SAContextManager sAContextManager) {
        registerPropertyPlugin(new SAPresetPropertyPlugin(sAContextManager));
        registerPropertyPlugin(new SASuperPropertyPlugin(sensorsDataAPI));
        registerPropertyPlugin(new ReferrerTitlePlugin());
        registerPropertyPlugin(new RealTimePropertyPlugin(sAContextManager));
        List<SAPropertyPlugin> propertyPlugins = sAContextManager.getInternalConfigs().saConfigOptions.getPropertyPlugins();
        if (propertyPlugins != null) {
            for (SAPropertyPlugin sAPropertyPlugin : propertyPlugins) {
                registerPropertyPlugin(sAPropertyPlugin);
            }
        }
        registerPropertyPlugin(new InternalCustomPropertyPlugin());
    }

    private void sortedPlugin() {
        ArrayList arrayList = new ArrayList(this.mPluginMap.values());
        this.mPluginsList = arrayList;
        Collections.sort(arrayList, new Comparator<SAPropertyPlugin>() { // from class: com.sensorsdata.analytics.android.sdk.plugin.property.PropertyPluginManager.1
            @Override // java.util.Comparator
            public int compare(SAPropertyPlugin sAPropertyPlugin, SAPropertyPlugin sAPropertyPlugin2) {
                return sAPropertyPlugin.priority().getPriority() >= sAPropertyPlugin2.priority().getPriority() ? 0 : -1;
            }
        });
    }

    public SAPropertyPlugin getPropertyPlugin(String str) {
        return this.mPluginMap.get(str);
    }

    public synchronized SAPropertiesFetcher propertiesHandler(SAPropertyFilter sAPropertyFilter) {
        try {
            try {
                if (this.mPluginsList.size() == 0) {
                    return null;
                }
                SAPropertiesFetcher sAPropertiesFetcher = new SAPropertiesFetcher();
                sAPropertiesFetcher.setProperties(sAPropertyFilter.getProperties());
                sAPropertiesFetcher.setEventJson(SAPropertyFilter.LIB, sAPropertyFilter.getEventJson(SAPropertyFilter.LIB));
                for (SAPropertyPlugin sAPropertyPlugin : this.mPluginsList) {
                    JSONObject jSONObject = new JSONObject();
                    JSONUtils.mergeJSONObject(sAPropertiesFetcher.getProperties(), jSONObject);
                    sAPropertyFilter.setProperties(jSONObject);
                    if (sAPropertyPlugin.isMatchedWithFilter(sAPropertyFilter)) {
                        sAPropertyPlugin.properties(sAPropertiesFetcher);
                    }
                }
                SALog.i(TAG, "SAPropertiesFetcher: %s", sAPropertiesFetcher);
                return sAPropertiesFetcher;
            } catch (Exception e) {
                SALog.i(TAG, String.format("Event [%s] error is happened when matching property-plugins", sAPropertyFilter.getEvent()), e);
                return null;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void registerPropertyPlugin(SAPropertyPlugin sAPropertyPlugin) {
        if (sAPropertyPlugin == null) {
            return;
        }
        try {
            try {
                String name = sAPropertyPlugin.getName();
                if (!this.mPluginMap.containsKey(name)) {
                    this.mPluginMap.put(name, sAPropertyPlugin);
                    sortedPlugin();
                } else {
                    SALog.i(TAG, name + " has exist!");
                }
            } catch (Exception e) {
                SALog.i(TAG, "register property plugin exception! ", e);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void unregisterPropertyPlugin(SAPropertyPlugin sAPropertyPlugin) {
        if (sAPropertyPlugin == null) {
            return;
        }
        this.mPluginMap.remove(sAPropertyPlugin.getName());
        sortedPlugin();
    }
}
