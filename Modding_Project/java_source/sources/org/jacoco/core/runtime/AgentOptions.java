package org.jacoco.core.runtime;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class AgentOptions {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<String, String> f13556Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Pattern f13555Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Pattern.compile(",(?=[a-zA-Z0-9_\\-]+=)");

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f13554Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Collection<String> f13553Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Arrays.asList("destfile", "append", "includes", "excludes", "exclclassloader", "inclbootstrapclasses", "inclnolocationclasses", "sessionid", "dumponexit", "output", "address", "port", "classdumpdir", "jmx");

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public enum OutputMode {
        file,
        tcpserver,
        tcpclient,
        none
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (String str : f13553Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            String str2 = this.f13556Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(str);
            if (str2 != null) {
                if (sb.length() > 0) {
                    sb.append(AbstractJsonLexerKt.COMMA);
                }
                sb.append(str);
                sb.append('=');
                sb.append(str2);
            }
        }
        return sb.toString();
    }
}
