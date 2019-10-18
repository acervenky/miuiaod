.class Lcom/miui/aod/util/ContentProviderBinder$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/util/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/util/ContentProviderBinder;


# direct methods
.method public constructor <init>(Lcom/miui/aod/util/ContentProviderBinder;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/util/ContentProviderBinder$ChangeObserver;->this$0:Lcom/miui/aod/util/ContentProviderBinder;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/util/ContentProviderBinder$ChangeObserver;->this$0:Lcom/miui/aod/util/ContentProviderBinder;

    invoke-virtual {p0}, Lcom/miui/aod/util/ContentProviderBinder;->startQuery()V

    return-void
.end method
