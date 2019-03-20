define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'channel/channelstatistics/index'
                }
            });

            var table = $("#table");

            // 初始化表格--
            table.bootstrapTable({
                url: $.fn.bootstrapTable.defaults.extend.index_url,
                pk: 'id',
                sortName: 'c.createtime',
                columns: [
                    [
                        {field: 'id', title: 'Id',operate:false},
                        {field: 'channel_code', title: '渠道编码', operate: 'LIKE'},
                        {field: 'channel_name', title: '渠道名称', operate: 'LIKE'},
                        {field: 'settle_type', title: '结算方式', operate: false},
                        {field: 'register_num', title: '注册累计', operate: false},
                        {field: 'jinjian', title: '完整进件', operate: false},
                        {field: 'cost', title: '放款累计金额', operate: false}
                        //渠道编码，渠道名称，结算方式，注册累计，完整进件，放款累计金额，
                    ]
                ]
            });
            // 为表格绑定事件
            Table.api.bindevent(table);
        }
    };
    return Controller;
});

