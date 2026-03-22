package com.mbridge.msdk.foundation.tools;

import android.net.Uri;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.DownloadError;
import com.mbridge.msdk.foundation.download.DownloadMessage;
import com.mbridge.msdk.foundation.download.DownloadPriority;
import com.mbridge.msdk.foundation.download.DownloadResourceType;
import com.mbridge.msdk.foundation.download.MBDownloadManager;
import com.mbridge.msdk.foundation.download.OnDownloadStateListener;
import com.mbridge.msdk.foundation.download.resource.MBResourceManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.File;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class x {

    /* renamed from: a  reason: collision with root package name */
    static final List<String> f9119a;

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public interface c {
        void a(String str, DownloadError downloadError);

        void a(String str, String str2, String str3, String str4, boolean z);
    }

    static {
        ArrayList arrayList = new ArrayList(4);
        f9119a = arrayList;
        arrayList.add("mbridge_splash_native_template_v_v1.xml");
        arrayList.add("mbridge_splash_native_template_h_v1.xml");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:(21:10|(1:69)|14|15|(8:17|18|19|(2:(1:(1:23)(2:59|60))|63)(1:64)|61|25|26|(8:41|42|43|44|45|46|47|48)(1:(4:31|32|33|35)(1:40)))|67|18|19|(0)(0)|61|25|26|(1:28)|41|42|43|44|45|46|47|48)|26|(0)|41|42|43|44|45|46|47|48) */
    /* JADX WARN: Can't wrap try/catch for region: R(16:(3:3|4|5)|6|(2:7|8)|(11:(21:10|(1:69)|14|15|(8:17|18|19|(2:(1:(1:23)(2:59|60))|63)(1:64)|61|25|26|(8:41|42|43|44|45|46|47|48)(1:(4:31|32|33|35)(1:40)))|67|18|19|(0)(0)|61|25|26|(1:28)|41|42|43|44|45|46|47|48)|26|(0)|41|42|43|44|45|46|47|48)|71|(1:12)|69|14|15|(0)|67|18|19|(0)(0)|61|25) */
    /* JADX WARN: Can't wrap try/catch for region: R(27:(3:3|4|5)|6|7|8|(21:10|(1:69)|14|15|(8:17|18|19|(2:(1:(1:23)(2:59|60))|63)(1:64)|61|25|26|(8:41|42|43|44|45|46|47|48)(1:(4:31|32|33|35)(1:40)))|67|18|19|(0)(0)|61|25|26|(1:28)|41|42|43|44|45|46|47|48)|71|(1:12)|69|14|15|(0)|67|18|19|(0)(0)|61|25|26|(0)|41|42|43|44|45|46|47|48) */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0087, code lost:
        if (r13 != 5) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00fc, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00ff, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0100, code lost:
        r5 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0102, code lost:
        com.mbridge.msdk.foundation.tools.o0.b("DynamicViewResourceManager", r0.getMessage());
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0065 A[Catch: Exception -> 0x006a, TRY_LEAVE, TryCatch #3 {Exception -> 0x006a, blocks: (B:18:0x005f, B:20:0x0065), top: B:67:0x005f }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009b A[Catch: Exception -> 0x00a2, TRY_LEAVE, TryCatch #6 {Exception -> 0x00a2, blocks: (B:31:0x008b, B:32:0x0093, B:33:0x009b), top: B:75:0x0080 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ae  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(int r13, java.lang.String r14, java.lang.String r15, com.mbridge.msdk.foundation.tools.x.c r16, com.mbridge.msdk.foundation.entity.CampaignEx r17) {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.tools.x.a(int, java.lang.String, java.lang.String, com.mbridge.msdk.foundation.tools.x$c, com.mbridge.msdk.foundation.entity.CampaignEx):void");
    }

    private static String b(int i, String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            try {
                String path = new URL(str2).getPath();
                String substring = path.substring(path.lastIndexOf(47) + 1);
                if (!TextUtils.isEmpty(substring)) {
                    return substring.replace(".zip", "");
                }
            } catch (Exception unused) {
            }
        }
        return "";
    }

    private static String b(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                String path = new URL(str).getPath();
                String substring = path.substring(path.lastIndexOf(47) + 1);
                if (!TextUtils.isEmpty(substring)) {
                    String replace = substring.replace(".zip", "");
                    List<String> list = f9119a;
                    if (list != null) {
                        if (!list.contains(replace)) {
                            return replace;
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
        return "";
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class a implements OnDownloadStateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f9120a;
        final /* synthetic */ String b;
        final /* synthetic */ c c;
        final /* synthetic */ String d;
        final /* synthetic */ String e;

        public a(String str, String str2, c cVar, String str3, String str4) {
            this.f9120a = str;
            this.b = str2;
            this.c = cVar;
            this.d = str3;
            this.e = str4;
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public void onDownloadComplete(DownloadMessage downloadMessage) {
            String str;
            try {
                String str2 = this.f9120a;
                MBResourceManager.getInstance().unZip(this.f9120a + File.separator + this.b, str2);
                if (this.c != null) {
                    if (downloadMessage == null) {
                        str = "";
                    } else {
                        str = (String) downloadMessage.getExtra("responseHeaders");
                    }
                    try {
                        this.c.a(this.d, str2, this.e, str, false);
                    } catch (Exception e) {
                        o0.b("DynamicViewResourceManager", e.getMessage());
                    }
                }
            } catch (Exception unused) {
            }
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public void onDownloadError(DownloadMessage downloadMessage, DownloadError downloadError) {
            c cVar = this.c;
            if (cVar != null) {
                try {
                    cVar.a(this.d, downloadError);
                } catch (Exception e) {
                    o0.b("DynamicViewResourceManager", e.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public void onCancelDownload(DownloadMessage downloadMessage) {
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public void onDownloadStart(DownloadMessage downloadMessage) {
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class b implements OnDownloadStateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f9121a;
        final /* synthetic */ String b;

        public b(String str, String str2) {
            this.f9121a = str;
            this.b = str2;
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public void onDownloadComplete(DownloadMessage downloadMessage) {
            try {
                MBResourceManager.getInstance().unZip(this.f9121a + File.separator + this.b, this.f9121a);
            } catch (Exception unused) {
            }
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public void onCancelDownload(DownloadMessage downloadMessage) {
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public void onDownloadStart(DownloadMessage downloadMessage) {
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public void onDownloadError(DownloadMessage downloadMessage, DownloadError downloadError) {
        }
    }

    public static String a(int i, String str, String str2) {
        String str3;
        File file;
        if (TextUtils.isEmpty(str2)) {
            return "";
        }
        try {
            str3 = b(i, str, str2);
        } catch (Exception unused) {
            str3 = "";
        }
        String str4 = com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_XML) + File.separator;
        if (!TextUtils.isEmpty(str3)) {
            file = new File(str4, str3);
            if (file != null || !file.exists()) {
                file = new File(str4 + File.separator + str3.replace(".xml", ""), str3);
            }
            return file.getPath();
        }
        file = null;
        if (file != null) {
        }
        file = new File(str4 + File.separator + str3.replace(".xml", ""), str3);
        return file.getPath();
    }

    public static String a(String str) {
        String str2;
        String str3;
        File file;
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            String queryParameter = Uri.parse(str).getQueryParameter(MBridgeConstans.DYNAMIC_VIEW_KEY_NATMP);
            if (!TextUtils.isEmpty(queryParameter)) {
                if (!queryParameter.equals("1")) {
                    return "";
                }
            }
        } catch (Throwable unused) {
        }
        try {
            str2 = b(str);
        } catch (Exception unused2) {
            str2 = "";
        }
        if (TextUtils.isEmpty(str2)) {
            return "";
        }
        try {
            str3 = com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_XML) + File.separator;
            file = new File(str3, str2);
        } catch (Exception unused3) {
        }
        if (file.isFile() && file.exists()) {
            return file.getPath();
        }
        String path = new URL(str).getPath();
        a(str, path.substring(path.lastIndexOf(47) + 1), str3, str2);
        return "";
    }

    private static final void a(String str, String str2, String str3, String str4, c cVar, CampaignEx campaignEx, int i) throws Exception {
        o0.a("test_zip_download ", "start download path： " + str3 + str2);
        DownloadMessage<?> downloadMessage = new DownloadMessage<>(campaignEx, str, str2, 100, DownloadResourceType.DOWNLOAD_RESOURCE_TYPE_OTHER);
        downloadMessage.addExtra("resource_type", Integer.valueOf(i));
        MBDownloadManager.getInstance().download(downloadMessage).withReadTimeout((long) com.mbridge.msdk.foundation.same.a.u).withConnectTimeout((long) com.mbridge.msdk.foundation.same.a.t).withTimeout(60000L).withWriteTimeout((long) com.mbridge.msdk.foundation.same.a.s).with("download_scene", "download_dynamic_view").withDownloadPriority(DownloadPriority.MEDIUM).withHttpRetryCounter(1).withDirectoryPathInternal(str3).withDownloadStateListener(new a(str3, str2, cVar, str, str4)).build().start();
    }

    private static final void a(String str, String str2, String str3, String str4) throws Exception {
        MBDownloadManager.getInstance().download(new DownloadMessage<>(new Object(), str, str2, 100, DownloadResourceType.DOWNLOAD_RESOURCE_TYPE_OTHER)).withReadTimeout(com.mbridge.msdk.foundation.same.a.u).withConnectTimeout(com.mbridge.msdk.foundation.same.a.o).with("download_scene", "download_dynamic_view").withWriteTimeout(com.mbridge.msdk.foundation.same.a.s).withTimeout(60000L).withDownloadPriority(DownloadPriority.MEDIUM).withHttpRetryCounter(1).withDirectoryPathInternal(str3).withDownloadStateListener(new b(str3, str2)).build().start();
    }
}
