describe Aws::S3::InvoiceBuilder, type: :builder do
  describe '#build' do
    subject { described_class.build(order: order) }

    let(:order) { create(:order, id: '552967ef-8ed8-4b2f-8088-4e0ed5347660', user: create(:user, id: 'b612c713-b328-43af-b8e2-c1704e68a463')) }
    let(:wicked_pdf) { instance_double(WickedPdf, pdf_from_string: 'pdf_from_string') }

    before do
      allow(WickedPdf).to receive(:new).and_return(wicked_pdf)
    end

    it 'returns proper payload' do
      expect(subject).to eq({ bucket: 'olx-development',
                              path: 'users/b612c713-b328-43af-b8e2-c1704e68a463/invoices/552967ef-8ed8-4b2f-8088-4e0ed5347660.pdf',
                              body: 'pdf_from_string' })
    end
  end
end
