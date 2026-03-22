.class public interface abstract annotation Lcom/google/android/engage/service/DeleteReason;
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
.field public static final DELETE_REASON_ACCOUNT_DELETION:I = 0x2

.field public static final DELETE_REASON_ACCOUNT_PROFILE_DELETION:I = 0x5

.field public static final DELETE_REASON_LOSS_OF_CONSENT:I = 0x1

.field public static final DELETE_REASON_OTHER:I = 0x4

.field public static final DELETE_REASON_UNSPECIFIED:I = 0x0

.field public static final DELETE_REASON_USER_LOG_OUT:I = 0x3
