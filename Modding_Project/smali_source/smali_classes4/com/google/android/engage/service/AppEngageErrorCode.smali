.class public interface abstract annotation Lcom/google/android/engage/service/AppEngageErrorCode;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final NO_ERROR:I = 0x0

.field public static final SERVICE_CALL_EXECUTION_FAILURE:I = 0x3

.field public static final SERVICE_CALL_INTERNAL:I = 0x6

.field public static final SERVICE_CALL_INVALID_ARGUMENT:I = 0x5

.field public static final SERVICE_CALL_PERMISSION_DENIED:I = 0x4

.field public static final SERVICE_CALL_RESOURCE_EXHAUSTED:I = 0x7

.field public static final SERVICE_NOT_AVAILABLE:I = 0x2

.field public static final SERVICE_NOT_FOUND:I = 0x1
