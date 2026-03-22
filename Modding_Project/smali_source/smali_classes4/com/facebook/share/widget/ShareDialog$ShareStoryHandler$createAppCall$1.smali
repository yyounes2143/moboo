.class public final Lcom/facebook/share/widget/ShareDialog$ShareStoryHandler$createAppCall$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/facebook/internal/DialogPresenter$ParameterProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/widget/ShareDialog$ShareStoryHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/AppCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00028VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00028VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0004\u00a8\u0006\u0008"
    }
    d2 = {
        "com/facebook/share/widget/ShareDialog$ShareStoryHandler$createAppCall$1",
        "Lcom/facebook/internal/DialogPresenter$ParameterProvider;",
        "Landroid/os/Bundle;",
        "getParameters",
        "()Landroid/os/Bundle;",
        "parameters",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "legacyParameters",
        "facebook-common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/share/model/ShareContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/share/model/ShareContent<",
            "**>;"
        }
    .end annotation
.end field

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/internal/AppCall;


# direct methods
.method public constructor <init>(Lcom/facebook/internal/AppCall;Lcom/facebook/share/model/ShareContent;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/AppCall;",
            "Lcom/facebook/share/model/ShareContent<",
            "**>;Z)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/share/widget/ShareDialog$ShareStoryHandler$createAppCall$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/internal/AppCall;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/facebook/share/widget/ShareDialog$ShareStoryHandler$createAppCall$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/share/model/ShareContent;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/facebook/share/widget/ShareDialog$ShareStoryHandler$createAppCall$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/os/Bundle;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/share/internal/LegacyNativeDialogParameters;->INSTANCE:Lcom/facebook/share/internal/LegacyNativeDialogParameters;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/facebook/share/widget/ShareDialog$ShareStoryHandler$createAppCall$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/internal/AppCall;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/facebook/internal/AppCall;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/UUID;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/facebook/share/widget/ShareDialog$ShareStoryHandler$createAppCall$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/share/model/ShareContent;

    .line 10
    .line 11
    iget-boolean v2, p0, Lcom/facebook/share/widget/ShareDialog$ShareStoryHandler$createAppCall$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Lcom/facebook/share/internal/LegacyNativeDialogParameters;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/UUID;Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public getParameters()Landroid/os/Bundle;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/share/internal/NativeDialogParameters;->INSTANCE:Lcom/facebook/share/internal/NativeDialogParameters;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/facebook/share/widget/ShareDialog$ShareStoryHandler$createAppCall$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/internal/AppCall;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/facebook/internal/AppCall;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/UUID;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/facebook/share/widget/ShareDialog$ShareStoryHandler$createAppCall$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/share/model/ShareContent;

    .line 10
    .line 11
    iget-boolean v2, p0, Lcom/facebook/share/widget/ShareDialog$ShareStoryHandler$createAppCall$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Lcom/facebook/share/internal/NativeDialogParameters;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/UUID;Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method
