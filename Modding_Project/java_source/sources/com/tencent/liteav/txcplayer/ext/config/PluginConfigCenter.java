package com.tencent.liteav.txcplayer.ext.config;

import com.tencent.liteav.txcplayer.ext.host.EngineConst;
import com.tencent.liteav.txcplayer.ext.host.PluginInfo;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class PluginConfigCenter {
    private static final int[] sPluginIds = {2};
    private static final String[] sPluginName = {EngineConst.PluginName.MONET_PLUGIN_NAME};
    private static final int[] sPluginVersion = {1};
    private static final String[] sPluginClazzName = {EngineConst.PluginClazzName.MONET_PLUGIN_CLAZZ_NAME};
    private static final boolean[] sIsCorePlugin = {true};

    public static void loadPluginConfig(List<PluginInfo> list) {
        int i = 0;
        while (true) {
            int[] iArr = sPluginIds;
            if (i < iArr.length) {
                PluginInfo pluginInfo = new PluginInfo();
                pluginInfo.mPluginId = iArr[i];
                pluginInfo.mPluginName = sPluginName[i];
                pluginInfo.mPluginVersion = sPluginVersion[i];
                pluginInfo.mPluginClazzName = sPluginClazzName[i];
                pluginInfo.mIsCorePlugin = sIsCorePlugin[i];
                list.add(pluginInfo);
                i++;
            } else {
                return;
            }
        }
    }
}
