.class public final Lcom/changdu/mobovideo/MainActivity$onCreate$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/changdu/component/push/base/BaseTokenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/changdu/mobovideo/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/changdu/mobovideo/MainActivity$onCreate$1",
        "Lcom/changdu/component/push/base/BaseTokenCallback;",
        "realReportToken",
        "",
        "token",
        "",
        "pushType",
        "",
        "app_outsideRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/MainActivity;


# direct methods
.method public constructor <init>(Lcom/changdu/mobovideo/MainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/mobovideo/MainActivity$onCreate$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/MainActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public realReportToken(Ljava/lang/String;I)V
    .locals 1

    .line 1
    sget-object p2, Lcom/changdu/mobovideo/picture/PushAdapter;->INSTANCE:Lcom/changdu/mobovideo/picture/PushAdapter;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/changdu/mobovideo/MainActivity$onCreate$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/MainActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p2, v0, p1}, Lcom/changdu/mobovideo/picture/PushAdapter;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
