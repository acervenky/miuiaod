.class Lcom/miui/aod/util/ContentProviderBinder$1;
.super Lcom/miui/aod/util/QueryHandler;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/aod/util/ContentProviderBinder;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/util/ContentProviderBinder;


# direct methods
.method constructor <init>(Lcom/miui/aod/util/ContentProviderBinder;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/util/ContentProviderBinder$1;->this$0:Lcom/miui/aod/util/ContentProviderBinder;

    invoke-direct {p0, p2}, Lcom/miui/aod/util/QueryHandler;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/util/ContentProviderBinder$1;->this$0:Lcom/miui/aod/util/ContentProviderBinder;

    invoke-static {p0, p3}, Lcom/miui/aod/util/ContentProviderBinder;->access$000(Lcom/miui/aod/util/ContentProviderBinder;Landroid/database/Cursor;)V

    return-void
.end method
