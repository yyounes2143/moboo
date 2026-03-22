package com.tekartik.sqflite.operation;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class MethodCallOperation extends BaseOperation {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final MethodCall f10169Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Result f10170Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class Result implements OperationResult {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final MethodChannel.Result f10172Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Result(MethodChannel.Result result) {
            this.f10172Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = result;
        }

        @Override // com.tekartik.sqflite.operation.OperationResult
        public void error(String str, String str2, Object obj) {
            this.f10172Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.error(str, str2, obj);
        }

        @Override // com.tekartik.sqflite.operation.OperationResult
        public void success(Object obj) {
            this.f10172Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.success(obj);
        }
    }

    public MethodCallOperation(MethodCall methodCall, MethodChannel.Result result) {
        this.f10169Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = methodCall;
        this.f10170Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Result(result);
    }

    @Override // com.tekartik.sqflite.operation.BaseOperation
    public OperationResult Wwwwwwwwwwwwwwwwwwwwwww() {
        return this.f10170Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // com.tekartik.sqflite.operation.Operation
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f10169Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.method;
    }

    @Override // com.tekartik.sqflite.operation.Operation
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        return this.f10169Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hasArgument(str);
    }

    @Override // com.tekartik.sqflite.operation.Operation
    public <T> T Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        return (T) this.f10169Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.argument(str);
    }
}
