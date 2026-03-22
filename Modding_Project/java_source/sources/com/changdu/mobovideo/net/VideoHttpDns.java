package com.changdu.mobovideo.net;

import java.net.Inet4Address;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.ArrayIteratorKt;
import okhttp3.Dns;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/changdu/mobovideo/net/VideoHttpDns;", "Lokhttp3/Dns;", "<init>", "()V", "", "hostname", "", "Ljava/net/InetAddress;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Ljava/util/List;", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class VideoHttpDns implements Dns {
    @Override // okhttp3.Dns
    @NotNull
    public List<InetAddress> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        if (str.length() == 0) {
            return Dns.f12299Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        }
        try {
            ArrayList arrayList = new ArrayList();
            Iterator it = ArrayIteratorKt.iterator(InetAddress.getAllByName(str));
            while (it.hasNext()) {
                InetAddress inetAddress = (InetAddress) it.next();
                if (inetAddress instanceof Inet4Address) {
                    arrayList.add(0, inetAddress);
                } else {
                    arrayList.add(inetAddress);
                }
            }
            return arrayList;
        } catch (Exception unused) {
            return Dns.f12299Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        }
    }
}
