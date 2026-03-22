package com.google.android.gms.internal.ads;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzhaf {
    private static final char[] zza;

    static {
        char[] cArr = new char[80];
        zza = cArr;
        Arrays.fill(cArr, ' ');
    }

    public static String zza(zzhad zzhadVar, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(str);
        zzd(zzhadVar, sb, 0);
        return sb.toString();
    }

    public static void zzb(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                zzb(sb, i, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                zzb(sb, i, str, entry);
            }
        } else {
            sb.append('\n');
            zzc(i, sb);
            if (!str.isEmpty()) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(Character.toLowerCase(str.charAt(0)));
                for (int i2 = 1; i2 < str.length(); i2++) {
                    char charAt = str.charAt(i2);
                    if (Character.isUpperCase(charAt)) {
                        sb2.append("_");
                    }
                    sb2.append(Character.toLowerCase(charAt));
                }
                str = sb2.toString();
            }
            sb.append(str);
            if (obj instanceof String) {
                sb.append(": \"");
                sb.append(zzhbg.zza(zzgxk.zzw((String) obj)));
                sb.append('\"');
            } else if (obj instanceof zzgxk) {
                sb.append(": \"");
                sb.append(zzhbg.zza((zzgxk) obj));
                sb.append('\"');
            } else if (obj instanceof zzgys) {
                sb.append(" {");
                zzd((zzgys) obj, sb, i + 2);
                sb.append("\n");
                zzc(i, sb);
                sb.append("}");
            } else if (obj instanceof Map.Entry) {
                int i3 = i + 2;
                sb.append(" {");
                Map.Entry entry2 = (Map.Entry) obj;
                zzb(sb, i3, "key", entry2.getKey());
                zzb(sb, i3, "value", entry2.getValue());
                sb.append("\n");
                zzc(i, sb);
                sb.append("}");
            } else {
                sb.append(": ");
                sb.append(obj);
            }
        }
    }

    private static void zzc(int i, StringBuilder sb) {
        while (i > 0) {
            int i2 = 80;
            if (i <= 80) {
                i2 = i;
            }
            sb.append(zza, 0, i2);
            i -= i2;
        }
    }

    private static void zzd(zzhad zzhadVar, StringBuilder sb, int i) {
        int i2;
        boolean equals;
        Method method;
        Method method2;
        HashSet hashSet = new HashSet();
        HashMap hashMap = new HashMap();
        TreeMap treeMap = new TreeMap();
        Method[] declaredMethods = zzhadVar.getClass().getDeclaredMethods();
        int length = declaredMethods.length;
        int i3 = 0;
        while (true) {
            i2 = 3;
            if (i3 >= length) {
                break;
            }
            Method method3 = declaredMethods[i3];
            if (!Modifier.isStatic(method3.getModifiers()) && method3.getName().length() >= 3) {
                if (method3.getName().startsWith("set")) {
                    hashSet.add(method3.getName());
                } else if (Modifier.isPublic(method3.getModifiers()) && method3.getParameterTypes().length == 0) {
                    if (method3.getName().startsWith("has")) {
                        hashMap.put(method3.getName(), method3);
                    } else if (method3.getName().startsWith("get")) {
                        treeMap.put(method3.getName(), method3);
                    }
                }
            }
            i3++;
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            String substring = ((String) entry.getKey()).substring(i2);
            if (substring.endsWith("List") && !substring.endsWith("OrBuilderList") && !substring.equals("List") && (method2 = (Method) entry.getValue()) != null && method2.getReturnType().equals(List.class)) {
                zzb(sb, i, substring.substring(0, substring.length() - 4), zzgys.zzbP(method2, zzhadVar, new Object[0]));
            } else if (substring.endsWith("Map") && !substring.equals("Map") && (method = (Method) entry.getValue()) != null && method.getReturnType().equals(Map.class) && !method.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method.getModifiers())) {
                zzb(sb, i, substring.substring(0, substring.length() - 3), zzgys.zzbP(method, zzhadVar, new Object[0]));
            } else if (hashSet.contains("set".concat(substring)) && (!substring.endsWith("Bytes") || !treeMap.containsKey("get".concat(String.valueOf(substring.substring(0, substring.length() - 5)))))) {
                Method method4 = (Method) entry.getValue();
                Method method5 = (Method) hashMap.get("has".concat(substring));
                if (method4 != null) {
                    Object zzbP = zzgys.zzbP(method4, zzhadVar, new Object[0]);
                    if (method5 == null) {
                        if (zzbP instanceof Boolean) {
                            if (!((Boolean) zzbP).booleanValue()) {
                            }
                            zzb(sb, i, substring, zzbP);
                        } else if (zzbP instanceof Integer) {
                            if (((Integer) zzbP).intValue() == 0) {
                            }
                            zzb(sb, i, substring, zzbP);
                        } else if (zzbP instanceof Float) {
                            if (Float.floatToRawIntBits(((Float) zzbP).floatValue()) == 0) {
                            }
                            zzb(sb, i, substring, zzbP);
                        } else if (zzbP instanceof Double) {
                            if (Double.doubleToRawLongBits(((Double) zzbP).doubleValue()) == 0) {
                            }
                            zzb(sb, i, substring, zzbP);
                        } else {
                            if (zzbP instanceof String) {
                                equals = zzbP.equals("");
                            } else if (zzbP instanceof zzgxk) {
                                equals = zzbP.equals(zzgxk.zzb);
                            } else if (zzbP instanceof zzhad) {
                                if (zzbP == ((zzhad) zzbP).zzbt()) {
                                }
                                zzb(sb, i, substring, zzbP);
                            } else {
                                if ((zzbP instanceof Enum) && ((Enum) zzbP).ordinal() == 0) {
                                }
                                zzb(sb, i, substring, zzbP);
                            }
                            if (equals) {
                            }
                            zzb(sb, i, substring, zzbP);
                        }
                    } else {
                        if (!((Boolean) zzgys.zzbP(method5, zzhadVar, new Object[0])).booleanValue()) {
                        }
                        zzb(sb, i, substring, zzbP);
                    }
                }
            }
            i2 = 3;
        }
        if (zzhadVar instanceof zzgyo) {
            Iterator zzf = ((zzgyo) zzhadVar).zza.zzf();
            while (zzf.hasNext()) {
                Map.Entry entry2 = (Map.Entry) zzf.next();
                zzb(sb, i, "[" + ((zzgyp) entry2.getKey()).zza + "]", entry2.getValue());
            }
        }
        zzhbj zzhbjVar = ((zzgys) zzhadVar).zzt;
        if (zzhbjVar != null) {
            zzhbjVar.zzi(sb, i);
        }
    }
}
