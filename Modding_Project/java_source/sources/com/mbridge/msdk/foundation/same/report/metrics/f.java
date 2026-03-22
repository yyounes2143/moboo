package com.mbridge.msdk.foundation.same.report.metrics;

import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.setting.l;
import com.mbridge.msdk.tracker.m;
import com.mbridge.msdk.tracker.network.toolbox.i;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class f {
    private Map<String, String> c(String str, c cVar) {
        HashMap hashMap = new HashMap();
        if (cVar != null && !TextUtils.isEmpty(str)) {
            return cVar.b(str);
        }
        return hashMap;
    }

    private Map<String, String> d(String str, c cVar) {
        e eVar = new e();
        try {
            if (str.equals("2000125")) {
                eVar.a(TypedValues.TransitionType.S_DURATION, Long.valueOf(cVar.a("2000123")));
            } else if (str.equals("2000126")) {
                eVar.a(TypedValues.TransitionType.S_DURATION, Long.valueOf(cVar.a("2000125")));
            } else if (str.equals("2000127")) {
                eVar.a(TypedValues.TransitionType.S_DURATION, Long.valueOf(cVar.a("2000123")));
            } else if (str.equals("2000154")) {
                eVar.a(TypedValues.TransitionType.S_DURATION, Long.valueOf(cVar.a("2000126")));
            } else if (str.equals("2000047")) {
                eVar.a(TypedValues.TransitionType.S_DURATION, Long.valueOf(cVar.a("2000123")));
            } else if (str.equals("2000048")) {
                eVar.a(TypedValues.TransitionType.S_DURATION, Long.valueOf(cVar.a("2000123")));
            } else if (str.equals("2000155")) {
                eVar.a(TypedValues.TransitionType.S_DURATION, Long.valueOf(cVar.a("2000154")));
            } else if (str.equals("2000146")) {
                eVar.a(TypedValues.TransitionType.S_DURATION, Long.valueOf(cVar.a("2000130")));
            }
        } catch (Exception e) {
            if (MBridgeConstans.DEBUG) {
                e.printStackTrace();
            }
        }
        return eVar.a();
    }

    public void a(String str, m mVar, c cVar, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
        Map<String, String> d;
        HashMap hashMap = new HashMap();
        if (cVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            cVar.i(str);
            Map<String, String> b = b(str, cVar);
            if (b != null) {
                hashMap.putAll(b);
            }
            Map<String, String> a2 = a(str, cVar.w(), mVar);
            if (a2 != null) {
                hashMap.putAll(a2);
            }
            if (Arrays.asList(b.d).contains(str) && (d = d(str, cVar)) != null) {
                hashMap.putAll(d);
            }
            Map<String, String> a3 = a(str, cVar);
            if (a3 != null) {
                hashMap.putAll(a3);
            }
            if (!hashMap.containsKey("lrid") || TextUtils.isEmpty(hashMap.get("lrid"))) {
                hashMap.put("lrid", cVar.o());
            }
            if (hashMap.containsKey("lrid")) {
                String str2 = hashMap.get("lrid");
                if (!TextUtils.isEmpty(str2) && str2.contains("label_second")) {
                    hashMap.put("lrid", str2.replace("label_second", ""));
                }
            }
            if (hashMap.containsKey("n_lrid")) {
                String str3 = hashMap.get("n_lrid");
                if (!TextUtils.isEmpty(str3) && str3.contains("label_second")) {
                    hashMap.put("n_lrid", str3.replace("n_lrid", ""));
                }
            }
            Map<String, String> c = c(str, cVar);
            if (c != null) {
                hashMap.putAll(c);
            }
            String str4 = "1";
            if (cVar.c() == null || !cVar.c().equals("1") || !Arrays.asList(b.b).contains(str) || cVar.a() == 296) {
                if (Arrays.asList(b.m).contains(str)) {
                    hashMap.put("use_local_dns", i.b().e() ? "1" : "0");
                    if (!i.b().d()) {
                        str4 = "0";
                    }
                    hashMap.put("local_dns_available", str4);
                }
                com.mbridge.msdk.tracker.e a4 = a(str, hashMap);
                if (mVar != null && a4 != null) {
                    mVar.d(a4);
                }
                if (aVar != null) {
                    aVar.a();
                }
            }
        } catch (Exception e) {
            if (MBridgeConstans.DEBUG) {
                e.printStackTrace();
            }
        }
    }

    public void b(String str, m mVar, c cVar, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
        if (cVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            HashMap hashMap = new HashMap();
            cVar.i(str);
            Map<String, String> a2 = a(str, cVar.w(), mVar);
            if (a2 != null) {
                hashMap.putAll(a2);
            }
            Map<String, String> a3 = a(str, cVar);
            if (a3 != null) {
                hashMap.putAll(a3);
            }
            Map<String, String> c = c(str, cVar);
            if (c != null) {
                hashMap.putAll(c);
            }
            com.mbridge.msdk.tracker.e a4 = a(str, hashMap);
            if (mVar != null && a4 != null) {
                mVar.d(a4);
            }
            if (aVar != null) {
                aVar.a();
            }
        } catch (Exception e) {
            if (MBridgeConstans.DEBUG) {
                e.printStackTrace();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:287:0x0779 A[Catch: Exception -> 0x002c, TryCatch #4 {Exception -> 0x002c, blocks: (B:3:0x001b, B:5:0x0027, B:10:0x0031, B:12:0x003d, B:40:0x00a7, B:42:0x00ad, B:49:0x00c9, B:51:0x00cf, B:53:0x00d4, B:56:0x00f5, B:58:0x00fb, B:65:0x0128, B:67:0x012c, B:68:0x012f, B:69:0x0133, B:71:0x0139, B:74:0x0142, B:76:0x018d, B:78:0x01ea, B:80:0x01f4, B:82:0x0207, B:83:0x0210, B:85:0x0223, B:87:0x0232, B:88:0x023f, B:91:0x0247, B:93:0x024d, B:95:0x0253, B:96:0x0273, B:97:0x0280, B:99:0x028a, B:101:0x0290, B:102:0x02ae, B:103:0x02b9, B:105:0x02c1, B:107:0x02c7, B:108:0x02e5, B:109:0x02f0, B:111:0x02f8, B:113:0x02fe, B:114:0x031c, B:115:0x0327, B:117:0x032f, B:119:0x0335, B:120:0x0353, B:121:0x035e, B:124:0x0373, B:126:0x037d, B:127:0x0383, B:128:0x0388, B:130:0x038e, B:132:0x039c, B:135:0x03ac, B:137:0x03b2, B:144:0x03fa, B:146:0x0404, B:149:0x0410, B:151:0x0416, B:152:0x042f, B:153:0x0433, B:155:0x0439, B:156:0x0452, B:157:0x0455, B:159:0x045f, B:161:0x046e, B:162:0x048e, B:163:0x0497, B:166:0x04a1, B:168:0x04a7, B:174:0x04e6, B:178:0x04f2, B:180:0x0508, B:182:0x052d, B:184:0x0533, B:186:0x0558, B:188:0x055c, B:190:0x056c, B:191:0x0571, B:193:0x057b, B:194:0x0584, B:196:0x058a, B:197:0x0597, B:199:0x05b5, B:201:0x05bc, B:202:0x05c9, B:204:0x05d3, B:205:0x05dc, B:207:0x05e4, B:209:0x05eb, B:210:0x05f8, B:212:0x0602, B:213:0x060b, B:214:0x0618, B:216:0x0620, B:221:0x062f, B:224:0x063d, B:226:0x0663, B:228:0x0669, B:230:0x066e, B:229:0x066c, B:231:0x0675, B:233:0x067d, B:235:0x0683, B:237:0x0688, B:236:0x0686, B:238:0x068f, B:241:0x0699, B:243:0x06a1, B:244:0x06a9, B:246:0x06b5, B:248:0x06bb, B:250:0x06c0, B:252:0x06cf, B:254:0x06d5, B:256:0x06da, B:260:0x06ed, B:264:0x070d, B:266:0x0716, B:267:0x0722, B:263:0x0709, B:255:0x06d8, B:249:0x06be, B:268:0x072f, B:270:0x073b, B:276:0x074a, B:278:0x0756, B:280:0x0760, B:287:0x0779, B:289:0x078c, B:291:0x0792, B:293:0x0797, B:292:0x0795, B:288:0x0783, B:282:0x076a, B:284:0x0770, B:303:0x07d2, B:294:0x079f, B:296:0x07ad, B:298:0x07c0, B:300:0x07c6, B:302:0x07cb, B:301:0x07c9, B:297:0x07b7, B:185:0x0551, B:181:0x0526, B:169:0x04c0, B:170:0x04c4, B:172:0x04ca, B:173:0x04e3, B:138:0x03cd, B:139:0x03d3, B:141:0x03db, B:142:0x03f4, B:84:0x021a, B:77:0x01cb, B:43:0x00b5, B:45:0x00bb, B:48:0x00c6, B:46:0x00c0, B:21:0x0061, B:25:0x0075, B:28:0x0080, B:30:0x0086, B:33:0x0091, B:35:0x0097, B:31:0x008b, B:37:0x009d, B:13:0x0042, B:15:0x0048, B:60:0x0107, B:62:0x0122), top: B:314:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:288:0x0783 A[Catch: Exception -> 0x002c, TryCatch #4 {Exception -> 0x002c, blocks: (B:3:0x001b, B:5:0x0027, B:10:0x0031, B:12:0x003d, B:40:0x00a7, B:42:0x00ad, B:49:0x00c9, B:51:0x00cf, B:53:0x00d4, B:56:0x00f5, B:58:0x00fb, B:65:0x0128, B:67:0x012c, B:68:0x012f, B:69:0x0133, B:71:0x0139, B:74:0x0142, B:76:0x018d, B:78:0x01ea, B:80:0x01f4, B:82:0x0207, B:83:0x0210, B:85:0x0223, B:87:0x0232, B:88:0x023f, B:91:0x0247, B:93:0x024d, B:95:0x0253, B:96:0x0273, B:97:0x0280, B:99:0x028a, B:101:0x0290, B:102:0x02ae, B:103:0x02b9, B:105:0x02c1, B:107:0x02c7, B:108:0x02e5, B:109:0x02f0, B:111:0x02f8, B:113:0x02fe, B:114:0x031c, B:115:0x0327, B:117:0x032f, B:119:0x0335, B:120:0x0353, B:121:0x035e, B:124:0x0373, B:126:0x037d, B:127:0x0383, B:128:0x0388, B:130:0x038e, B:132:0x039c, B:135:0x03ac, B:137:0x03b2, B:144:0x03fa, B:146:0x0404, B:149:0x0410, B:151:0x0416, B:152:0x042f, B:153:0x0433, B:155:0x0439, B:156:0x0452, B:157:0x0455, B:159:0x045f, B:161:0x046e, B:162:0x048e, B:163:0x0497, B:166:0x04a1, B:168:0x04a7, B:174:0x04e6, B:178:0x04f2, B:180:0x0508, B:182:0x052d, B:184:0x0533, B:186:0x0558, B:188:0x055c, B:190:0x056c, B:191:0x0571, B:193:0x057b, B:194:0x0584, B:196:0x058a, B:197:0x0597, B:199:0x05b5, B:201:0x05bc, B:202:0x05c9, B:204:0x05d3, B:205:0x05dc, B:207:0x05e4, B:209:0x05eb, B:210:0x05f8, B:212:0x0602, B:213:0x060b, B:214:0x0618, B:216:0x0620, B:221:0x062f, B:224:0x063d, B:226:0x0663, B:228:0x0669, B:230:0x066e, B:229:0x066c, B:231:0x0675, B:233:0x067d, B:235:0x0683, B:237:0x0688, B:236:0x0686, B:238:0x068f, B:241:0x0699, B:243:0x06a1, B:244:0x06a9, B:246:0x06b5, B:248:0x06bb, B:250:0x06c0, B:252:0x06cf, B:254:0x06d5, B:256:0x06da, B:260:0x06ed, B:264:0x070d, B:266:0x0716, B:267:0x0722, B:263:0x0709, B:255:0x06d8, B:249:0x06be, B:268:0x072f, B:270:0x073b, B:276:0x074a, B:278:0x0756, B:280:0x0760, B:287:0x0779, B:289:0x078c, B:291:0x0792, B:293:0x0797, B:292:0x0795, B:288:0x0783, B:282:0x076a, B:284:0x0770, B:303:0x07d2, B:294:0x079f, B:296:0x07ad, B:298:0x07c0, B:300:0x07c6, B:302:0x07cb, B:301:0x07c9, B:297:0x07b7, B:185:0x0551, B:181:0x0526, B:169:0x04c0, B:170:0x04c4, B:172:0x04ca, B:173:0x04e3, B:138:0x03cd, B:139:0x03d3, B:141:0x03db, B:142:0x03f4, B:84:0x021a, B:77:0x01cb, B:43:0x00b5, B:45:0x00bb, B:48:0x00c6, B:46:0x00c0, B:21:0x0061, B:25:0x0075, B:28:0x0080, B:30:0x0086, B:33:0x0091, B:35:0x0097, B:31:0x008b, B:37:0x009d, B:13:0x0042, B:15:0x0048, B:60:0x0107, B:62:0x0122), top: B:314:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:291:0x0792 A[Catch: Exception -> 0x002c, TryCatch #4 {Exception -> 0x002c, blocks: (B:3:0x001b, B:5:0x0027, B:10:0x0031, B:12:0x003d, B:40:0x00a7, B:42:0x00ad, B:49:0x00c9, B:51:0x00cf, B:53:0x00d4, B:56:0x00f5, B:58:0x00fb, B:65:0x0128, B:67:0x012c, B:68:0x012f, B:69:0x0133, B:71:0x0139, B:74:0x0142, B:76:0x018d, B:78:0x01ea, B:80:0x01f4, B:82:0x0207, B:83:0x0210, B:85:0x0223, B:87:0x0232, B:88:0x023f, B:91:0x0247, B:93:0x024d, B:95:0x0253, B:96:0x0273, B:97:0x0280, B:99:0x028a, B:101:0x0290, B:102:0x02ae, B:103:0x02b9, B:105:0x02c1, B:107:0x02c7, B:108:0x02e5, B:109:0x02f0, B:111:0x02f8, B:113:0x02fe, B:114:0x031c, B:115:0x0327, B:117:0x032f, B:119:0x0335, B:120:0x0353, B:121:0x035e, B:124:0x0373, B:126:0x037d, B:127:0x0383, B:128:0x0388, B:130:0x038e, B:132:0x039c, B:135:0x03ac, B:137:0x03b2, B:144:0x03fa, B:146:0x0404, B:149:0x0410, B:151:0x0416, B:152:0x042f, B:153:0x0433, B:155:0x0439, B:156:0x0452, B:157:0x0455, B:159:0x045f, B:161:0x046e, B:162:0x048e, B:163:0x0497, B:166:0x04a1, B:168:0x04a7, B:174:0x04e6, B:178:0x04f2, B:180:0x0508, B:182:0x052d, B:184:0x0533, B:186:0x0558, B:188:0x055c, B:190:0x056c, B:191:0x0571, B:193:0x057b, B:194:0x0584, B:196:0x058a, B:197:0x0597, B:199:0x05b5, B:201:0x05bc, B:202:0x05c9, B:204:0x05d3, B:205:0x05dc, B:207:0x05e4, B:209:0x05eb, B:210:0x05f8, B:212:0x0602, B:213:0x060b, B:214:0x0618, B:216:0x0620, B:221:0x062f, B:224:0x063d, B:226:0x0663, B:228:0x0669, B:230:0x066e, B:229:0x066c, B:231:0x0675, B:233:0x067d, B:235:0x0683, B:237:0x0688, B:236:0x0686, B:238:0x068f, B:241:0x0699, B:243:0x06a1, B:244:0x06a9, B:246:0x06b5, B:248:0x06bb, B:250:0x06c0, B:252:0x06cf, B:254:0x06d5, B:256:0x06da, B:260:0x06ed, B:264:0x070d, B:266:0x0716, B:267:0x0722, B:263:0x0709, B:255:0x06d8, B:249:0x06be, B:268:0x072f, B:270:0x073b, B:276:0x074a, B:278:0x0756, B:280:0x0760, B:287:0x0779, B:289:0x078c, B:291:0x0792, B:293:0x0797, B:292:0x0795, B:288:0x0783, B:282:0x076a, B:284:0x0770, B:303:0x07d2, B:294:0x079f, B:296:0x07ad, B:298:0x07c0, B:300:0x07c6, B:302:0x07cb, B:301:0x07c9, B:297:0x07b7, B:185:0x0551, B:181:0x0526, B:169:0x04c0, B:170:0x04c4, B:172:0x04ca, B:173:0x04e3, B:138:0x03cd, B:139:0x03d3, B:141:0x03db, B:142:0x03f4, B:84:0x021a, B:77:0x01cb, B:43:0x00b5, B:45:0x00bb, B:48:0x00c6, B:46:0x00c0, B:21:0x0061, B:25:0x0075, B:28:0x0080, B:30:0x0086, B:33:0x0091, B:35:0x0097, B:31:0x008b, B:37:0x009d, B:13:0x0042, B:15:0x0048, B:60:0x0107, B:62:0x0122), top: B:314:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:292:0x0795 A[Catch: Exception -> 0x002c, TryCatch #4 {Exception -> 0x002c, blocks: (B:3:0x001b, B:5:0x0027, B:10:0x0031, B:12:0x003d, B:40:0x00a7, B:42:0x00ad, B:49:0x00c9, B:51:0x00cf, B:53:0x00d4, B:56:0x00f5, B:58:0x00fb, B:65:0x0128, B:67:0x012c, B:68:0x012f, B:69:0x0133, B:71:0x0139, B:74:0x0142, B:76:0x018d, B:78:0x01ea, B:80:0x01f4, B:82:0x0207, B:83:0x0210, B:85:0x0223, B:87:0x0232, B:88:0x023f, B:91:0x0247, B:93:0x024d, B:95:0x0253, B:96:0x0273, B:97:0x0280, B:99:0x028a, B:101:0x0290, B:102:0x02ae, B:103:0x02b9, B:105:0x02c1, B:107:0x02c7, B:108:0x02e5, B:109:0x02f0, B:111:0x02f8, B:113:0x02fe, B:114:0x031c, B:115:0x0327, B:117:0x032f, B:119:0x0335, B:120:0x0353, B:121:0x035e, B:124:0x0373, B:126:0x037d, B:127:0x0383, B:128:0x0388, B:130:0x038e, B:132:0x039c, B:135:0x03ac, B:137:0x03b2, B:144:0x03fa, B:146:0x0404, B:149:0x0410, B:151:0x0416, B:152:0x042f, B:153:0x0433, B:155:0x0439, B:156:0x0452, B:157:0x0455, B:159:0x045f, B:161:0x046e, B:162:0x048e, B:163:0x0497, B:166:0x04a1, B:168:0x04a7, B:174:0x04e6, B:178:0x04f2, B:180:0x0508, B:182:0x052d, B:184:0x0533, B:186:0x0558, B:188:0x055c, B:190:0x056c, B:191:0x0571, B:193:0x057b, B:194:0x0584, B:196:0x058a, B:197:0x0597, B:199:0x05b5, B:201:0x05bc, B:202:0x05c9, B:204:0x05d3, B:205:0x05dc, B:207:0x05e4, B:209:0x05eb, B:210:0x05f8, B:212:0x0602, B:213:0x060b, B:214:0x0618, B:216:0x0620, B:221:0x062f, B:224:0x063d, B:226:0x0663, B:228:0x0669, B:230:0x066e, B:229:0x066c, B:231:0x0675, B:233:0x067d, B:235:0x0683, B:237:0x0688, B:236:0x0686, B:238:0x068f, B:241:0x0699, B:243:0x06a1, B:244:0x06a9, B:246:0x06b5, B:248:0x06bb, B:250:0x06c0, B:252:0x06cf, B:254:0x06d5, B:256:0x06da, B:260:0x06ed, B:264:0x070d, B:266:0x0716, B:267:0x0722, B:263:0x0709, B:255:0x06d8, B:249:0x06be, B:268:0x072f, B:270:0x073b, B:276:0x074a, B:278:0x0756, B:280:0x0760, B:287:0x0779, B:289:0x078c, B:291:0x0792, B:293:0x0797, B:292:0x0795, B:288:0x0783, B:282:0x076a, B:284:0x0770, B:303:0x07d2, B:294:0x079f, B:296:0x07ad, B:298:0x07c0, B:300:0x07c6, B:302:0x07cb, B:301:0x07c9, B:297:0x07b7, B:185:0x0551, B:181:0x0526, B:169:0x04c0, B:170:0x04c4, B:172:0x04ca, B:173:0x04e3, B:138:0x03cd, B:139:0x03d3, B:141:0x03db, B:142:0x03f4, B:84:0x021a, B:77:0x01cb, B:43:0x00b5, B:45:0x00bb, B:48:0x00c6, B:46:0x00c0, B:21:0x0061, B:25:0x0075, B:28:0x0080, B:30:0x0086, B:33:0x0091, B:35:0x0097, B:31:0x008b, B:37:0x009d, B:13:0x0042, B:15:0x0048, B:60:0x0107, B:62:0x0122), top: B:314:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:307:0x0803  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.Map<java.lang.String, java.lang.String> b(java.lang.String r25, com.mbridge.msdk.foundation.same.report.metrics.c r26) {
        /*
            Method dump skipped, instructions count: 2059
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.same.report.metrics.f.b(java.lang.String, com.mbridge.msdk.foundation.same.report.metrics.c):java.util.Map");
    }

    private com.mbridge.msdk.tracker.e a(String str, Map<String, String> map) {
        if (map == null || TextUtils.isEmpty(str)) {
            return null;
        }
        com.mbridge.msdk.tracker.e eVar = new com.mbridge.msdk.tracker.e(str);
        try {
            JSONObject jSONObject = new JSONObject(map);
            Boolean a2 = com.mbridge.msdk.foundation.same.b.b().a();
            if (a2 != null) {
                jSONObject.put("r_v_r", a2.booleanValue() ? 1 : 0);
            }
            eVar.a(jSONObject);
            eVar.b(0);
            eVar.a(0);
            return eVar;
        } catch (Exception e) {
            if (MBridgeConstans.DEBUG) {
                e.printStackTrace();
            }
            return eVar;
        }
    }

    private Map<String, String> a(String str, String str2, m mVar) {
        e eVar = new e();
        try {
            g d = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
            if (d == null) {
                d = h.b().a();
            }
            if (!TextUtils.isEmpty(d.k0())) {
                eVar.a("as_rid", d.k0());
            }
            String J = d.J();
            JSONArray I = d.I();
            if (I != null) {
                int i = 0;
                while (true) {
                    if (i >= I.length()) {
                        break;
                    } else if (str.equals(I.getString(i))) {
                        J = "1.0";
                        break;
                    } else {
                        i++;
                    }
                }
            }
            if (!TextUtils.isEmpty(J)) {
                eVar.a("log_rate", J);
            } else {
                eVar.a("log_rate", -1);
            }
            if (!TextUtils.isEmpty(str2)) {
                l d2 = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b(), str2);
                if (d2 != null && !TextUtils.isEmpty(d2.I())) {
                    eVar.a("us_rid", d2.I());
                }
                if (d2 != null && !TextUtils.isEmpty(d2.a())) {
                    eVar.a("u_stid", d2.a());
                }
                e b = d.b().b(str2);
                if (b != null) {
                    if (mVar != null && mVar.c() != null) {
                        try {
                            mVar.c().put("r_stid", b.b("r_stid"));
                            b.c("r_stid");
                        } catch (JSONException unused) {
                        }
                    }
                    eVar.a(b);
                }
            }
        } catch (Exception e) {
            if (MBridgeConstans.DEBUG) {
                e.printStackTrace();
            }
        }
        return eVar.a();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0057 A[Catch: Exception -> 0x003d, TryCatch #0 {Exception -> 0x003d, blocks: (B:4:0x0007, B:6:0x0020, B:8:0x0026, B:10:0x0036, B:25:0x0057, B:27:0x005d, B:30:0x0068, B:32:0x006e, B:28:0x0062, B:33:0x0072, B:35:0x0078, B:36:0x0080, B:38:0x0086, B:41:0x0091, B:43:0x0097, B:39:0x008b, B:15:0x0041, B:17:0x0045, B:19:0x004c, B:21:0x0050), top: B:49:0x0007, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0072 A[Catch: Exception -> 0x003d, TryCatch #0 {Exception -> 0x003d, blocks: (B:4:0x0007, B:6:0x0020, B:8:0x0026, B:10:0x0036, B:25:0x0057, B:27:0x005d, B:30:0x0068, B:32:0x006e, B:28:0x0062, B:33:0x0072, B:35:0x0078, B:36:0x0080, B:38:0x0086, B:41:0x0091, B:43:0x0097, B:39:0x008b, B:15:0x0041, B:17:0x0045, B:19:0x004c, B:21:0x0050), top: B:49:0x0007, inners: #1 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x004e -> B:22:0x0053). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0050 -> B:22:0x0053). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.List<com.mbridge.msdk.foundation.entity.CampaignEx> a(com.mbridge.msdk.foundation.same.report.metrics.c r4, java.lang.String r5) {
        /*
            r3 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            if (r4 == 0) goto La2
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L3d
            r1.<init>()     // Catch: java.lang.Exception -> L3d
            java.lang.String r2 = r4.o()     // Catch: java.lang.Exception -> L3d
            r1.append(r2)     // Catch: java.lang.Exception -> L3d
            r1.append(r5)     // Catch: java.lang.Exception -> L3d
            java.lang.String r5 = r1.toString()     // Catch: java.lang.Exception -> L3d
            java.util.Map r1 = r4.r()     // Catch: java.lang.Exception -> L3d
            if (r1 == 0) goto L53
            boolean r2 = r1.containsKey(r5)     // Catch: java.lang.Exception -> L3d
            if (r2 == 0) goto L53
            java.lang.Object r5 = r1.get(r5)     // Catch: java.lang.Exception -> L3d java.lang.NumberFormatException -> L3f
            java.util.Map r5 = (java.util.Map) r5     // Catch: java.lang.Exception -> L3d java.lang.NumberFormatException -> L3f
            java.lang.String r1 = "resource_type"
            java.lang.Object r5 = r5.get(r1)     // Catch: java.lang.Exception -> L3d java.lang.NumberFormatException -> L3f
            boolean r1 = r5 instanceof java.lang.String     // Catch: java.lang.Exception -> L3d java.lang.NumberFormatException -> L3f
            if (r1 == 0) goto L41
            java.lang.String r5 = (java.lang.String) r5     // Catch: java.lang.Exception -> L3d java.lang.NumberFormatException -> L3f
            int r5 = java.lang.Integer.parseInt(r5)     // Catch: java.lang.Exception -> L3d java.lang.NumberFormatException -> L3f
            goto L54
        L3d:
            r4 = move-exception
            goto L9b
        L3f:
            r5 = move-exception
            goto L4c
        L41:
            boolean r1 = r5 instanceof java.lang.Integer     // Catch: java.lang.Exception -> L3d java.lang.NumberFormatException -> L3f
            if (r1 == 0) goto L53
            java.lang.Integer r5 = (java.lang.Integer) r5     // Catch: java.lang.Exception -> L3d java.lang.NumberFormatException -> L3f
            int r5 = r5.intValue()     // Catch: java.lang.Exception -> L3d java.lang.NumberFormatException -> L3f
            goto L54
        L4c:
            boolean r1 = com.mbridge.msdk.MBridgeConstans.DEBUG     // Catch: java.lang.Exception -> L3d
            if (r1 == 0) goto L53
            r5.printStackTrace()     // Catch: java.lang.Exception -> L3d
        L53:
            r5 = -1
        L54:
            r1 = 1
            if (r5 != r1) goto L72
            java.util.List r5 = r4.j()     // Catch: java.lang.Exception -> L3d
            if (r5 == 0) goto L62
            java.util.List r4 = r4.j()     // Catch: java.lang.Exception -> L3d
            goto L66
        L62:
            java.util.List r4 = r4.g()     // Catch: java.lang.Exception -> L3d
        L66:
            if (r4 == 0) goto La2
            int r5 = r4.size()     // Catch: java.lang.Exception -> L3d
            if (r5 <= 0) goto La2
            r0.addAll(r4)     // Catch: java.lang.Exception -> L3d
            goto La2
        L72:
            com.mbridge.msdk.foundation.entity.CampaignEx r5 = r4.i()     // Catch: java.lang.Exception -> L3d
            if (r5 == 0) goto L80
            com.mbridge.msdk.foundation.entity.CampaignEx r4 = r4.i()     // Catch: java.lang.Exception -> L3d
            r0.add(r4)     // Catch: java.lang.Exception -> L3d
            goto La2
        L80:
            java.util.List r5 = r4.j()     // Catch: java.lang.Exception -> L3d
            if (r5 == 0) goto L8b
            java.util.List r4 = r4.j()     // Catch: java.lang.Exception -> L3d
            goto L8f
        L8b:
            java.util.List r4 = r4.g()     // Catch: java.lang.Exception -> L3d
        L8f:
            if (r4 == 0) goto La2
            int r5 = r4.size()     // Catch: java.lang.Exception -> L3d
            if (r5 <= 0) goto La2
            r0.addAll(r4)     // Catch: java.lang.Exception -> L3d
            goto La2
        L9b:
            boolean r5 = com.mbridge.msdk.MBridgeConstans.DEBUG
            if (r5 == 0) goto La2
            r4.printStackTrace()
        La2:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.same.report.metrics.f.a(com.mbridge.msdk.foundation.same.report.metrics.c, java.lang.String):java.util.List");
    }

    public Map<String, String> a(String str, c cVar) {
        HashMap hashMap = new HashMap();
        try {
            if (Arrays.asList(b.e).contains(str)) {
                String str2 = "";
                if (cVar != null) {
                    str2 = cVar.c();
                }
                hashMap.put("auto_load", str2);
            }
            if (cVar != null) {
                Map<String, Map<String, String>> r = cVar.r();
                String str3 = cVar.o() + str;
                if (r.containsKey(str3) && r.get(str3) != null) {
                    hashMap.putAll(r.get(str3));
                }
                try {
                    Map<String, Map<String, String>> q = cVar.q();
                    String str4 = cVar.o() + "_" + cVar.l() + "_" + str;
                    if (q.containsKey(str4) && q.get(str4) != null) {
                        hashMap.putAll(q.get(str4));
                        return hashMap;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                e2.printStackTrace();
            }
        }
        return hashMap;
    }
}
