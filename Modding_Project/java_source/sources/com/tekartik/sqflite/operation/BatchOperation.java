package com.tekartik.sqflite.operation;

import com.google.firebase.analytics.FirebaseAnalytics;
import io.flutter.plugin.common.MethodChannel;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class BatchOperation extends BaseOperation {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f10161Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BatchOperationResult f10162Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new BatchOperationResult();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<String, Object> f10163Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class BatchOperationResult implements OperationResult {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Object f10165Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f10166Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f10167Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Object f10168Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public BatchOperationResult() {
        }

        @Override // com.tekartik.sqflite.operation.OperationResult
        public void error(String str, String str2, Object obj) {
            this.f10167Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
            this.f10166Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str2;
            this.f10165Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = obj;
        }

        @Override // com.tekartik.sqflite.operation.OperationResult
        public void success(Object obj) {
            this.f10168Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = obj;
        }
    }

    public BatchOperation(Map<String, Object> map, boolean z) {
        this.f10163Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = map;
        this.f10161Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
    }

    public void Wwwwwwwwwwwwwwwwww(List<Map<String, Object>> list) {
        if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            list.add(Wwwwwwwwwwwwwwwwwwwww());
        }
    }

    public void Wwwwwwwwwwwwwwwwwww(List<Map<String, Object>> list) {
        if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            list.add(Wwwwwwwwwwwwwwwwwwwwww());
        }
    }

    public void Wwwwwwwwwwwwwwwwwwww(MethodChannel.Result result) {
        BatchOperationResult batchOperationResult = this.f10162Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        result.error(batchOperationResult.f10167Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, batchOperationResult.f10166Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, batchOperationResult.f10165Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public Map<String, Object> Wwwwwwwwwwwwwwwwwwwww() {
        HashMap hashMap = new HashMap();
        hashMap.put("result", this.f10162Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f10168Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        return hashMap;
    }

    public Map<String, Object> Wwwwwwwwwwwwwwwwwwwwww() {
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        hashMap2.put("code", this.f10162Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f10167Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        hashMap2.put("message", this.f10162Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f10166Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        hashMap2.put("data", this.f10162Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f10165Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        hashMap.put("error", hashMap2);
        return hashMap;
    }

    @Override // com.tekartik.sqflite.operation.BaseOperation
    public OperationResult Wwwwwwwwwwwwwwwwwwwwwww() {
        return this.f10162Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // com.tekartik.sqflite.operation.Operation
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return (String) this.f10163Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(FirebaseAnalytics.Param.METHOD);
    }

    @Override // com.tekartik.sqflite.operation.BaseReadOperation, com.tekartik.sqflite.operation.Operation
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f10161Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // com.tekartik.sqflite.operation.Operation
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        return this.f10163Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.containsKey(str);
    }

    @Override // com.tekartik.sqflite.operation.Operation
    public <T> T Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        return (T) this.f10163Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(str);
    }
}
