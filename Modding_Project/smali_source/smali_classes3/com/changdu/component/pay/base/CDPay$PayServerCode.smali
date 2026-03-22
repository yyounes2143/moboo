.class public interface abstract annotation Lcom/changdu/component/pay/base/CDPay$PayServerCode;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/changdu/component/pay/base/CDPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "PayServerCode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/changdu/component/pay/base/CDPay$PayServerCode$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\u0008\u0002\u0008\u0087\u0002\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002B\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/changdu/component/pay/base/CDPay$PayServerCode;",
        "",
        "Companion",
        "pay-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->SOURCE:Lkotlin/annotation/AnnotationRetention;
.end annotation


# static fields
.field public static final ALIPAY:I = 0x3

.field public static final Companion:Lcom/changdu/component/pay/base/CDPay$PayServerCode$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final GOOGLE:I = 0xc

.field public static final HUAWEI:I = 0x18

.field public static final MI_GLOBAL:I = 0x23

.field public static final THIRD_H5:I = 0xf

.field public static final WECHAT:I = 0xe


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/pay/base/CDPay$PayServerCode$Companion;->$$INSTANCE:Lcom/changdu/component/pay/base/CDPay$PayServerCode$Companion;

    .line 2
    .line 3
    sput-object v0, Lcom/changdu/component/pay/base/CDPay$PayServerCode;->Companion:Lcom/changdu/component/pay/base/CDPay$PayServerCode$Companion;

    .line 4
    .line 5
    return-void
.end method
