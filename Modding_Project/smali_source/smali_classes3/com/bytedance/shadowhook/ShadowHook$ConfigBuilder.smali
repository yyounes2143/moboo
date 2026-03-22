.class public Lcom/bytedance/shadowhook/ShadowHook$ConfigBuilder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/shadowhook/ShadowHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigBuilder"
.end annotation


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bytedance/shadowhook/ShadowHook$ILibLoader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/bytedance/shadowhook/ShadowHook;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/bytedance/shadowhook/ShadowHook$ILibLoader;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/bytedance/shadowhook/ShadowHook$ConfigBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bytedance/shadowhook/ShadowHook$ILibLoader;

    .line 9
    .line 10
    invoke-static {}, Lcom/bytedance/shadowhook/ShadowHook;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/bytedance/shadowhook/ShadowHook$ConfigBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/bytedance/shadowhook/ShadowHook$ConfigBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/bytedance/shadowhook/ShadowHook$ConfigBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/bytedance/shadowhook/ShadowHook$ConfigBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bytedance/shadowhook/ShadowHook$Mode;)Lcom/bytedance/shadowhook/ShadowHook$ConfigBuilder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/bytedance/shadowhook/ShadowHook$Mode;->getValue()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lcom/bytedance/shadowhook/ShadowHook$ConfigBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 6
    .line 7
    return-object p0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/bytedance/shadowhook/ShadowHook$Config;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/shadowhook/ShadowHook$Config;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/shadowhook/ShadowHook$Config;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/bytedance/shadowhook/ShadowHook$ConfigBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bytedance/shadowhook/ShadowHook$ILibLoader;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/bytedance/shadowhook/ShadowHook$Config;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bytedance/shadowhook/ShadowHook$ILibLoader;)V

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/bytedance/shadowhook/ShadowHook$ConfigBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/bytedance/shadowhook/ShadowHook$Config;->Wwwwwwwwwwwwwwwwwwwwwwwwww(I)V

    .line 14
    .line 15
    .line 16
    iget-boolean v1, p0, Lcom/bytedance/shadowhook/ShadowHook$ConfigBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/bytedance/shadowhook/ShadowHook$Config;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Z)V

    .line 19
    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/bytedance/shadowhook/ShadowHook$ConfigBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/bytedance/shadowhook/ShadowHook$Config;->Wwwwwwwwwwwwwwwwwwwwwwwww(Z)V

    .line 24
    .line 25
    .line 26
    iget-boolean v1, p0, Lcom/bytedance/shadowhook/ShadowHook$ConfigBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/bytedance/shadowhook/ShadowHook$Config;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Z)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method
