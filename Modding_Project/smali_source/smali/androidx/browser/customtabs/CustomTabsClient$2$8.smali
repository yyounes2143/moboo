.class Landroidx/browser/customtabs/CustomTabsClient$2$8;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/CustomTabsClient$2;->onActivityLayout(IIIIILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/browser/customtabs/CustomTabsClient$2;

.field final synthetic val$bottom:I

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$left:I

.field final synthetic val$right:I

.field final synthetic val$state:I

.field final synthetic val$top:I


# direct methods
.method public constructor <init>(Landroidx/browser/customtabs/CustomTabsClient$2;IIIIILandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$2$8;->this$1:Landroidx/browser/customtabs/CustomTabsClient$2;

    .line 2
    .line 3
    iput p2, p0, Landroidx/browser/customtabs/CustomTabsClient$2$8;->val$left:I

    .line 4
    .line 5
    iput p3, p0, Landroidx/browser/customtabs/CustomTabsClient$2$8;->val$top:I

    .line 6
    .line 7
    iput p4, p0, Landroidx/browser/customtabs/CustomTabsClient$2$8;->val$right:I

    .line 8
    .line 9
    iput p5, p0, Landroidx/browser/customtabs/CustomTabsClient$2$8;->val$bottom:I

    .line 10
    .line 11
    iput p6, p0, Landroidx/browser/customtabs/CustomTabsClient$2$8;->val$state:I

    .line 12
    .line 13
    iput-object p7, p0, Landroidx/browser/customtabs/CustomTabsClient$2$8;->val$extras:Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$2$8;->this$1:Landroidx/browser/customtabs/CustomTabsClient$2;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/browser/customtabs/CustomTabsClient$2;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    .line 4
    .line 5
    iget v2, p0, Landroidx/browser/customtabs/CustomTabsClient$2$8;->val$left:I

    .line 6
    .line 7
    iget v3, p0, Landroidx/browser/customtabs/CustomTabsClient$2$8;->val$top:I

    .line 8
    .line 9
    iget v4, p0, Landroidx/browser/customtabs/CustomTabsClient$2$8;->val$right:I

    .line 10
    .line 11
    iget v5, p0, Landroidx/browser/customtabs/CustomTabsClient$2$8;->val$bottom:I

    .line 12
    .line 13
    iget v6, p0, Landroidx/browser/customtabs/CustomTabsClient$2$8;->val$state:I

    .line 14
    .line 15
    iget-object v7, p0, Landroidx/browser/customtabs/CustomTabsClient$2$8;->val$extras:Landroid/os/Bundle;

    .line 16
    .line 17
    invoke-virtual/range {v1 .. v7}, Landroidx/browser/customtabs/CustomTabsCallback;->onActivityLayout(IIIIILandroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
