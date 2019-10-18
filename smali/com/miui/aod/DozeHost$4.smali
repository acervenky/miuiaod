.class Lcom/miui/aod/DozeHost$4;
.super Ljava/lang/Object;
.source "DozeHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/aod/DozeHost;->fireFingerprintPressed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/DozeHost;

.field final synthetic val$pressed:Z


# direct methods
.method constructor <init>(Lcom/miui/aod/DozeHost;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/DozeHost$4;->this$0:Lcom/miui/aod/DozeHost;

    iput-boolean p2, p0, Lcom/miui/aod/DozeHost$4;->val$pressed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/DozeHost$4;->this$0:Lcom/miui/aod/DozeHost;

    iget-boolean p0, p0, Lcom/miui/aod/DozeHost$4;->val$pressed:Z

    invoke-static {v0, p0}, Lcom/miui/aod/DozeHost;->access$100(Lcom/miui/aod/DozeHost;Z)V

    return-void
.end method
