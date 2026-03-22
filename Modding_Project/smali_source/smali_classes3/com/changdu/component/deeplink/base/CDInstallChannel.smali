.class public final enum Lcom/changdu/component/deeplink/base/CDInstallChannel;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/changdu/component/deeplink/base/CDInstallChannel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/changdu/component/deeplink/base/CDInstallChannel;",
        "",
        "",
        "a",
        "I",
        "getValue",
        "()I",
        "value",
        "Google",
        "FireBase",
        "FaceBook",
        "FaceBookServer",
        "deeplink-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final enum FaceBook:Lcom/changdu/component/deeplink/base/CDInstallChannel;

.field public static final enum FaceBookServer:Lcom/changdu/component/deeplink/base/CDInstallChannel;

.field public static final enum FireBase:Lcom/changdu/component/deeplink/base/CDInstallChannel;

.field public static final enum Google:Lcom/changdu/component/deeplink/base/CDInstallChannel;

.field public static final synthetic b:[Lcom/changdu/component/deeplink/base/CDInstallChannel;

.field public static final synthetic c:Lkotlin/enums/EnumEntries;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/changdu/component/deeplink/base/CDInstallChannel;

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    const-string v2, "Google"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/changdu/component/deeplink/base/CDInstallChannel;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/changdu/component/deeplink/base/CDInstallChannel;->Google:Lcom/changdu/component/deeplink/base/CDInstallChannel;

    .line 12
    .line 13
    new-instance v1, Lcom/changdu/component/deeplink/base/CDInstallChannel;

    .line 14
    .line 15
    const-string v2, "FireBase"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-direct {v1, v2, v4, v4}, Lcom/changdu/component/deeplink/base/CDInstallChannel;-><init>(Ljava/lang/String;II)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/changdu/component/deeplink/base/CDInstallChannel;->FireBase:Lcom/changdu/component/deeplink/base/CDInstallChannel;

    .line 22
    .line 23
    new-instance v2, Lcom/changdu/component/deeplink/base/CDInstallChannel;

    .line 24
    .line 25
    const/4 v5, 0x2

    .line 26
    const/4 v6, -0x1

    .line 27
    const-string v7, "FaceBook"

    .line 28
    .line 29
    invoke-direct {v2, v7, v5, v6}, Lcom/changdu/component/deeplink/base/CDInstallChannel;-><init>(Ljava/lang/String;II)V

    .line 30
    .line 31
    .line 32
    sput-object v2, Lcom/changdu/component/deeplink/base/CDInstallChannel;->FaceBook:Lcom/changdu/component/deeplink/base/CDInstallChannel;

    .line 33
    .line 34
    new-instance v6, Lcom/changdu/component/deeplink/base/CDInstallChannel;

    .line 35
    .line 36
    const-string v7, "FaceBookServer"

    .line 37
    .line 38
    const/4 v8, 0x3

    .line 39
    invoke-direct {v6, v7, v8, v3}, Lcom/changdu/component/deeplink/base/CDInstallChannel;-><init>(Ljava/lang/String;II)V

    .line 40
    .line 41
    .line 42
    sput-object v6, Lcom/changdu/component/deeplink/base/CDInstallChannel;->FaceBookServer:Lcom/changdu/component/deeplink/base/CDInstallChannel;

    .line 43
    .line 44
    const/4 v7, 0x4

    .line 45
    new-array v7, v7, [Lcom/changdu/component/deeplink/base/CDInstallChannel;

    .line 46
    .line 47
    aput-object v0, v7, v3

    .line 48
    .line 49
    aput-object v1, v7, v4

    .line 50
    .line 51
    aput-object v2, v7, v5

    .line 52
    .line 53
    aput-object v6, v7, v8

    .line 54
    .line 55
    sput-object v7, Lcom/changdu/component/deeplink/base/CDInstallChannel;->b:[Lcom/changdu/component/deeplink/base/CDInstallChannel;

    .line 56
    .line 57
    invoke-static {v7}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Lcom/changdu/component/deeplink/base/CDInstallChannel;->c:Lkotlin/enums/EnumEntries;

    .line 62
    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/changdu/component/deeplink/base/CDInstallChannel;->a:I

    .line 5
    .line 6
    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/changdu/component/deeplink/base/CDInstallChannel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/changdu/component/deeplink/base/CDInstallChannel;->c:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/changdu/component/deeplink/base/CDInstallChannel;
    .locals 1

    .line 1
    const-class v0, Lcom/changdu/component/deeplink/base/CDInstallChannel;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/changdu/component/deeplink/base/CDInstallChannel;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/changdu/component/deeplink/base/CDInstallChannel;
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/deeplink/base/CDInstallChannel;->b:[Lcom/changdu/component/deeplink/base/CDInstallChannel;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/changdu/component/deeplink/base/CDInstallChannel;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/changdu/component/deeplink/base/CDInstallChannel;->a:I

    .line 2
    .line 3
    return v0
.end method
